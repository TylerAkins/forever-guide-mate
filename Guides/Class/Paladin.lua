local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Paladin",
    category = "Class Quests",
    id = "class-paladin",
    conditions = {
        all = {
            { class = 2 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "accept-98601-a-difficult-path",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-98601-a-difficult-path",
        },
        {
            priority = 20,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "accept-98601-a-difficult-path" },
            id = "turnin-98601-a-difficult-path",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-98601-a-difficult-path",
        },
        {
            priority = 30,
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
            priority = 40,
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
            priority = 50,
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
            priority = 60,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3107-consecrated-rune",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-3107-consecrated-rune",
        },
        {
            priority = 70,
            route = {
                { y = 0.682, mapID = 1426, label = "Bromos Grummner", x = 0.288, offMapText = "Travel to Bromos Grummner in Dun Morogh." },
            },
            dependsOn = { "accept-3107-consecrated-rune" },
            id = "turnin-3107-consecrated-rune",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-3107-consecrated-rune",
        },
        {
            priority = 80,
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
            priority = 90,
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
                                    { class = 2 },
                                    {
                                        class = { 2 },
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
                    { class = 2 },
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
            id = "accept-3101-consecrated-letter",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-3101-consecrated-letter",
        },
        {
            priority = 140,
            route = {
                { y = 0.42, mapID = 1429, label = "Brother Sammuel", x = 0.504, offMapText = "Travel to Brother Sammuel in Elwynn Forest." },
            },
            dependsOn = { "accept-3101-consecrated-letter" },
            id = "turnin-3101-consecrated-letter",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-3101-consecrated-letter",
        },
        {
            id = "level-before-accept-90902-rediscovering-the-light",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 90902,
            priority = 150,
        },
        {
            priority = 160,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            id = "accept-90902-rediscovering-the-light",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-90902-rediscovering-the-light",
        },
        {
            priority = 170,
            dependsOn = { "accept-90902-rediscovering-the-light" },
            id = "objective-90902-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-90902-reviewed-mechanics",
        },
        {
            priority = 180,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "accept-90902-rediscovering-the-light", "objective-90902-reviewed-mechanics" },
            id = "turnin-90902-rediscovering-the-light",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-90902-rediscovering-the-light",
        },
        {
            id = "level-before-accept-91208-coming-to-terms",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 91208,
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            id = "accept-91208-coming-to-terms",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-91208-coming-to-terms",
        },
        {
            priority = 210,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "accept-91208-coming-to-terms" },
            id = "turnin-91208-coming-to-terms",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91208-coming-to-terms",
        },
        {
            priority = 220,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91208-coming-to-terms" },
            id = "accept-91209-continue-your-training",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91209-continue-your-training",
        },
        {
            priority = 230,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", x = 0.602, offMapText = "Travel to Shari Stilwell in Tirisfal Glades." },
            },
            dependsOn = { "accept-91209-continue-your-training" },
            id = "turnin-91209-continue-your-training",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91209-continue-your-training",
        },
        {
            id = "level-before-accept-91282-a-second-home",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 91282,
            priority = 240,
        },
        {
            priority = 250,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", x = 0.602, offMapText = "Travel to Shari Stilwell in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91209-continue-your-training" },
            id = "accept-91282-a-second-home",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91282-a-second-home",
        },
        {
            priority = 260,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "accept-91282-a-second-home" },
            id = "turnin-91282-a-second-home",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91282-a-second-home",
        },
        {
            priority = 270,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91282-a-second-home" },
            id = "accept-91285-murlocs-at-the-gates",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91285-murlocs-at-the-gates",
        },
        {
            priority = 280,
            id = "objective-91285-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-91285-murlocs-at-the-gates" },
            classAction = "objective-91285-quest-work",
        },
        {
            priority = 290,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "accept-91285-murlocs-at-the-gates", "objective-91285-quest-work" },
            id = "turnin-91285-murlocs-at-the-gates",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91285-murlocs-at-the-gates",
        },
        {
            priority = 300,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91285-murlocs-at-the-gates" },
            id = "accept-91294-touring-the-grounds",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91294-touring-the-grounds",
        },
        {
            priority = 310,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "accept-91294-touring-the-grounds" },
            id = "turnin-91294-touring-the-grounds",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91294-touring-the-grounds",
        },
        {
            priority = 320,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", x = 0.226, offMapText = "Travel to Jorin Croge in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91294-touring-the-grounds" },
            id = "accept-91316-making-repairs",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91316-making-repairs",
        },
        {
            dependsOn = { "accept-91316-making-repairs" },
            id = "objective-91316-making-repairs",
            useClientPin = true,
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            priority = 330,
            classAction = "objective-91316-making-repairs",
        },
        {
            priority = 340,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", x = 0.226, offMapText = "Travel to Jorin Croge in Tirisfal Glades." },
            },
            dependsOn = { "accept-91316-making-repairs", "objective-91316-making-repairs" },
            id = "turnin-91316-making-repairs",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91316-making-repairs",
        },
        {
            id = "level-before-accept-91317-the-tarnished",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 91317,
            priority = 350,
        },
        {
            priority = 360,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91294-touring-the-grounds" },
            id = "accept-91317-the-tarnished",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-91317-the-tarnished",
        },
        {
            priority = 370,
            route = {
                { y = 0.642, mapID = 1420, label = "Rudolph Gelhardt", x = 0.116, offMapText = "Travel to Rudolph Gelhardt in Tirisfal Glades." },
            },
            dependsOn = { "accept-91317-the-tarnished", "accept-91316-making-repairs" },
            id = "objective-91317-the-tarnished",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-91317-the-tarnished",
        },
        {
            priority = 380,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "accept-91317-the-tarnished", "objective-91317-the-tarnished" },
            id = "turnin-91317-the-tarnished",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91317-the-tarnished",
        },
        {
            priority = 390,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91317-the-tarnished" },
            id = "accept-95803-a-token-of-good-faith",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-95803-a-token-of-good-faith",
        },
        {
            priority = 400,
            route = {
                { y = 0.918, mapID = 1458, label = "Lady Sylvanas Windrunner", x = 0.578, offMapText = "Travel to Lady Sylvanas Windrunner in Undercity." },
            },
            dependsOn = { "accept-95803-a-token-of-good-faith" },
            id = "turnin-95803-a-token-of-good-faith",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-95803-a-token-of-good-faith",
        },
        {
            id = "level-before-accept-1641-the-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1641,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "accept-1641-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1641-the-tome-of-divinity",
        },
        {
            priority = 430,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1641-the-tome-of-divinity" },
            id = "turnin-1641-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1641-the-tome-of-divinity",
        },
        {
            id = "loot-starter-before-accept-1642-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 440,
            classAction = "loot-starter-before-accept-1642-the-tome-of-divinity",
        },
        {
            priority = 450,
            dependsOn = { "turnin-1641-the-tome-of-divinity" },
            id = "accept-1642-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1642-the-tome-of-divinity",
        },
        {
            priority = 460,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1642-the-tome-of-divinity" },
            id = "turnin-1642-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1642-the-tome-of-divinity",
        },
        {
            priority = 470,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "turnin-1642-the-tome-of-divinity" },
            id = "accept-1643-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1643-the-tome-of-divinity",
        },
        {
            priority = 480,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = { "accept-1643-the-tome-of-divinity" },
            id = "turnin-1643-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1643-the-tome-of-divinity",
        },
        {
            priority = 490,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = { "turnin-1643-the-tome-of-divinity" },
            id = "accept-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1644-the-tome-of-divinity",
        },
        {
            priority = 500,
            route = {
                { y = 0.618, mapID = 1453, label = "Forlorn Spirit", x = 0.296, offMapText = "Travel to Forlorn Spirit in Stormwind City." },
                { y = 0.45, mapID = 1453, label = "Old Town Thug", x = 0.7, offMapText = "Travel to Old Town Thug in Stormwind City." },
                { y = 0.292, mapID = 1453, label = "Cut-throat Mugger", x = 0.618, offMapText = "Travel to Cut-throat Mugger in Stormwind City." },
                { y = 0.638, mapID = 1453, label = "Food Crate", x = 0.565, offMapText = "Travel to Food Crate in Stormwind City." },
            },
            dependsOn = { "accept-1644-the-tome-of-divinity" },
            id = "objective-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1644-the-tome-of-divinity",
        },
        {
            priority = 510,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = { "accept-1644-the-tome-of-divinity", "objective-1644-the-tome-of-divinity" },
            id = "turnin-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1644-the-tome-of-divinity",
        },
        {
            priority = 520,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = { "turnin-1644-the-tome-of-divinity", "turnin-1643-the-tome-of-divinity" },
            id = "accept-1780-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1780-the-tome-of-divinity",
        },
        {
            priority = 530,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1780-the-tome-of-divinity" },
            id = "turnin-1780-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1780-the-tome-of-divinity",
        },
        {
            priority = 540,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "turnin-1780-the-tome-of-divinity" },
            id = "accept-1781-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1781-the-tome-of-divinity",
        },
        {
            priority = 550,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = { "accept-1781-the-tome-of-divinity" },
            id = "turnin-1781-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1781-the-tome-of-divinity",
        },
        {
            priority = 560,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = { "turnin-1781-the-tome-of-divinity" },
            id = "accept-1786-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1786-the-tome-of-divinity",
        },
        {
            priority = 570,
            id = "objective-1786-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1786-the-tome-of-divinity" },
            classAction = "objective-1786-quest-work",
        },
        {
            priority = 580,
            route = {
                { y = 0.514, mapID = 1429, label = "Henze Faulk", x = 0.726, offMapText = "Travel to Henze Faulk in Elwynn Forest." },
            },
            dependsOn = { "accept-1786-the-tome-of-divinity", "objective-1786-quest-work" },
            id = "turnin-1786-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1786-the-tome-of-divinity",
        },
        {
            priority = 590,
            route = {
                { y = 0.514, mapID = 1429, label = "Henze Faulk", x = 0.726, offMapText = "Travel to Henze Faulk in Elwynn Forest." },
            },
            dependsOn = { "turnin-1786-the-tome-of-divinity" },
            id = "accept-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1787-the-tome-of-divinity",
        },
        {
            priority = 600,
            route = {
                { y = 0.596, mapID = 1429, label = "Defias Rogue Wizard", x = 0.284, offMapText = "Travel to Defias Rogue Wizard in Elwynn Forest." },
                { y = 0.87, mapID = 1429, label = "Defias Bodyguard", x = 0.48, offMapText = "Travel to Defias Bodyguard in Elwynn Forest." },
            },
            dependsOn = { "accept-1787-the-tome-of-divinity" },
            id = "objective-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1787-the-tome-of-divinity",
        },
        {
            priority = 610,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = { "accept-1787-the-tome-of-divinity", "objective-1787-the-tome-of-divinity" },
            id = "turnin-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1787-the-tome-of-divinity",
        },
        {
            priority = 620,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = { "turnin-1787-the-tome-of-divinity" },
            id = "accept-1788-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1788-the-tome-of-divinity",
        },
        {
            priority = 630,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1788-the-tome-of-divinity" },
            id = "turnin-1788-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1788-the-tome-of-divinity",
        },
        {
            id = "level-before-accept-2997-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2997,
            alternativeQuests = { 2999, 3000 },
            priority = 640,
        },
        {
            priority = 650,
            route = {
                { y = 0.52, mapID = 1426, label = "Azar Stronghammer", x = 0.476, offMapText = "Travel to Azar Stronghammer in Dun Morogh." },
            },
            id = "accept-2997-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2997-tome-of-divinity",
        },
        {
            priority = 660,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-2997-tome-of-divinity" },
            id = "turnin-2997-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2997-tome-of-divinity",
        },
        {
            priority = 670,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "turnin-2997-tome-of-divinity" },
            id = "accept-1645-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1645-the-tome-of-divinity",
        },
        {
            priority = 680,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1645-the-tome-of-divinity" },
            id = "turnin-1645-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1645-the-tome-of-divinity",
        },
        {
            id = "loot-starter-before-accept-1646-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 690,
            classAction = "loot-starter-before-accept-1646-the-tome-of-divinity",
        },
        {
            priority = 700,
            dependsOn = { "turnin-2997-tome-of-divinity" },
            id = "accept-1646-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1646-the-tome-of-divinity",
        },
        {
            priority = 710,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1646-the-tome-of-divinity" },
            id = "turnin-1646-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1646-the-tome-of-divinity",
        },
        {
            priority = 720,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "turnin-1646-the-tome-of-divinity" },
            id = "accept-1647-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1647-the-tome-of-divinity",
        },
        {
            priority = 730,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = { "accept-1647-the-tome-of-divinity" },
            id = "turnin-1647-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1647-the-tome-of-divinity",
        },
        {
            priority = 740,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = { "turnin-1647-the-tome-of-divinity" },
            id = "accept-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1648-the-tome-of-divinity",
        },
        {
            priority = 750,
            route = {
                { y = 0.126, mapID = 1455, label = "Cut-throat Mugger", x = 0.518, offMapText = "Travel to Cut-throat Mugger in Ironforge." },
                { y = 0.124, mapID = 1455, label = "Cut-throat Mugger", x = 0.518, offMapText = "Travel to Cut-throat Mugger in Ironforge." },
            },
            dependsOn = { "accept-1648-the-tome-of-divinity" },
            id = "objective-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1648-the-tome-of-divinity",
        },
        {
            priority = 760,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = { "accept-1648-the-tome-of-divinity", "objective-1648-the-tome-of-divinity" },
            id = "turnin-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1648-the-tome-of-divinity",
        },
        {
            priority = 770,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = { "turnin-1648-the-tome-of-divinity", "turnin-1647-the-tome-of-divinity" },
            id = "accept-1778-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1778-the-tome-of-divinity",
        },
        {
            priority = 780,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1778-the-tome-of-divinity" },
            id = "turnin-1778-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1778-the-tome-of-divinity",
        },
        {
            priority = 790,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "turnin-1778-the-tome-of-divinity" },
            id = "accept-1779-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1779-the-tome-of-divinity",
        },
        {
            priority = 800,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1779-the-tome-of-divinity" },
            id = "turnin-1779-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1779-the-tome-of-divinity",
        },
        {
            priority = 810,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = { "turnin-1779-the-tome-of-divinity" },
            id = "accept-1783-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1783-the-tome-of-divinity",
        },
        {
            priority = 820,
            id = "objective-1783-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            classAction = "objective-1783-quest-work",
        },
        {
            priority = 830,
            route = {
                { y = 0.58, mapID = 1426, label = "Narm Faulk", x = 0.782, offMapText = "Travel to Narm Faulk in Dun Morogh." },
            },
            dependsOn = { "accept-1783-the-tome-of-divinity", "objective-1783-quest-work" },
            id = "turnin-1783-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1783-the-tome-of-divinity",
        },
        {
            priority = 840,
            route = {
                { y = 0.58, mapID = 1426, label = "Narm Faulk", x = 0.782, offMapText = "Travel to Narm Faulk in Dun Morogh." },
            },
            dependsOn = { "turnin-1783-the-tome-of-divinity" },
            id = "accept-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1784-the-tome-of-divinity",
        },
        {
            priority = 850,
            route = {
                { y = 0.624, mapID = 1426, label = "Dark Iron Spy", x = 0.778, offMapText = "Travel to Dark Iron Spy in Dun Morogh." },
            },
            dependsOn = { "accept-1784-the-tome-of-divinity" },
            id = "objective-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1784-the-tome-of-divinity",
        },
        {
            priority = 860,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1784-the-tome-of-divinity", "objective-1784-the-tome-of-divinity" },
            id = "turnin-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1784-the-tome-of-divinity",
        },
        {
            priority = 870,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = { "turnin-1784-the-tome-of-divinity" },
            id = "accept-1785-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1785-the-tome-of-divinity",
        },
        {
            priority = 880,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1785-the-tome-of-divinity" },
            id = "turnin-1785-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1785-the-tome-of-divinity",
        },
        {
            id = "level-before-accept-94427-a-lesson-in-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94427,
            priority = 890,
        },
        {
            priority = 900,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "turnin-91317-the-tarnished" },
            id = "accept-94427-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94427-a-lesson-in-divinity",
        },
        {
            priority = 910,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = { "accept-94427-a-lesson-in-divinity" },
            id = "turnin-94427-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94427-a-lesson-in-divinity",
        },
        {
            priority = 920,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = { "turnin-94427-a-lesson-in-divinity" },
            id = "accept-94434-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94434-a-lesson-in-divinity",
        },
        {
            priority = 930,
            dependsOn = { "accept-94434-a-lesson-in-divinity" },
            id = "objective-94434-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94434-a-lesson-in-divinity",
        },
        {
            priority = 940,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = { "accept-94434-a-lesson-in-divinity", "objective-94434-a-lesson-in-divinity" },
            id = "turnin-94434-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94434-a-lesson-in-divinity",
        },
        {
            priority = 950,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = { "turnin-94434-a-lesson-in-divinity" },
            id = "accept-94435-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94435-a-lesson-in-divinity",
        },
        {
            priority = 960,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "accept-94435-a-lesson-in-divinity" },
            id = "turnin-94435-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94435-a-lesson-in-divinity",
        },
        {
            priority = 970,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "turnin-94435-a-lesson-in-divinity" },
            id = "accept-94436-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94436-a-lesson-in-divinity",
        },
        {
            priority = 980,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = { "accept-94436-a-lesson-in-divinity" },
            id = "turnin-94436-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94436-a-lesson-in-divinity",
        },
        {
            priority = 990,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = { "turnin-94436-a-lesson-in-divinity" },
            id = "accept-94438-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94438-a-lesson-in-divinity",
        },
        {
            priority = 1000,
            dependsOn = { "accept-94438-a-lesson-in-divinity" },
            id = "objective-94438-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94438-reviewed-mechanics",
        },
        {
            priority = 1010,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", x = 0.866, offMapText = "Travel to Deathguard Falgan in Tirisfal Glades." },
            },
            dependsOn = { "accept-94438-a-lesson-in-divinity", "objective-94438-reviewed-mechanics" },
            id = "turnin-94438-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94438-a-lesson-in-divinity",
        },
        {
            priority = 1020,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", x = 0.866, offMapText = "Travel to Deathguard Falgan in Tirisfal Glades." },
            },
            dependsOn = { "turnin-94438-a-lesson-in-divinity" },
            id = "accept-94440-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94440-a-lesson-in-divinity",
        },
        {
            priority = 1030,
            dependsOn = { "accept-94440-a-lesson-in-divinity" },
            id = "objective-94440-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94440-a-lesson-in-divinity",
        },
        {
            priority = 1040,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = { "accept-94440-a-lesson-in-divinity", "objective-94440-a-lesson-in-divinity" },
            id = "turnin-94440-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94440-a-lesson-in-divinity",
        },
        {
            priority = 1050,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = { "turnin-94440-a-lesson-in-divinity" },
            id = "accept-94441-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94441-a-lesson-in-divinity",
        },
        {
            priority = 1060,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "accept-94441-a-lesson-in-divinity" },
            id = "turnin-94441-a-lesson-in-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94441-a-lesson-in-divinity",
        },
        {
            priority = 1070,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "accept-1789-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1789-the-symbol-of-life",
        },
        {
            priority = 1080,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1789-the-symbol-of-life" },
            id = "turnin-1789-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1789-the-symbol-of-life",
        },
        {
            priority = 1090,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "accept-1790-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1790-the-symbol-of-life",
        },
        {
            priority = 1100,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1790-the-symbol-of-life" },
            id = "turnin-1790-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1790-the-symbol-of-life",
        },
        {
            priority = 1110,
            route = {
                { y = 0.66, mapID = 1429, label = "Brother Wilhelm", x = 0.41, offMapText = "Travel to Brother Wilhelm in Elwynn Forest." },
            },
            id = "accept-2998-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2998-tome-of-divinity",
        },
        {
            priority = 1120,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-2998-tome-of-divinity" },
            id = "turnin-2998-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2998-tome-of-divinity",
        },
        {
            priority = 1130,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "accept-2999-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2999-tome-of-divinity",
        },
        {
            priority = 1140,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-2999-tome-of-divinity" },
            id = "turnin-2999-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2999-tome-of-divinity",
        },
        {
            priority = 1150,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            id = "accept-3000-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3000-tome-of-divinity",
        },
        {
            priority = 1160,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-3000-tome-of-divinity" },
            id = "turnin-3000-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3000-tome-of-divinity",
        },
        {
            priority = 1170,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "accept-3681-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3681-tome-of-divinity",
        },
        {
            priority = 1180,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-3681-tome-of-divinity" },
            id = "turnin-3681-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3681-tome-of-divinity",
        },
        {
            id = "level-before-accept-91858-diplomatic-incident",
            kind = "note",
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 18 },
            },
            requiredLevel = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 91858,
            priority = 1190,
        },
        {
            priority = 1200,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            id = "accept-91858-diplomatic-incident",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-91858-diplomatic-incident",
        },
        {
            priority = 1210,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            dependsOn = { "accept-91858-diplomatic-incident" },
            id = "turnin-91858-diplomatic-incident",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91858-diplomatic-incident",
        },
        {
            priority = 1220,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            id = "accept-91859-a-curious-pair",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-91859-a-curious-pair",
        },
        {
            priority = 1230,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            dependsOn = { "accept-91859-a-curious-pair" },
            id = "turnin-91859-a-curious-pair",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91859-a-curious-pair",
        },
        {
            priority = 1240,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            id = "accept-91860-a-grim-fate",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-91860-a-grim-fate",
        },
        {
            priority = 1250,
            dependsOn = { "accept-91860-a-grim-fate" },
            id = "objective-91860-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-91860-reviewed-mechanics",
        },
        {
            priority = 1260,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            dependsOn = { "accept-91860-a-grim-fate", "objective-91860-reviewed-mechanics" },
            id = "turnin-91860-a-grim-fate",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91860-a-grim-fate",
        },
        {
            priority = 1270,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "accept-91862-lumina-windsinger",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-91862-lumina-windsinger",
        },
        {
            priority = 1280,
            route = {
                { y = 0.236, mapID = 1421, label = "Rot Hide Savage", x = 0.656, offMapText = "Travel to Rot Hide Savage in Silverpine Forest." },
                { y = 0.236, mapID = 1421, label = "Raging Rot Hide", x = 0.658, offMapText = "Travel to Raging Rot Hide in Silverpine Forest." },
                { y = 0.256, mapID = 1421, label = "Rot Hide Bruiser", x = 0.682, offMapText = "Travel to Rot Hide Bruiser in Silverpine Forest." },
                { y = 0.25, mapID = 1421, label = "Snarlmane", x = 0.652, offMapText = "Travel to Snarlmane in Silverpine Forest." },
            },
            dependsOn = { "accept-91862-lumina-windsinger" },
            id = "objective-91862-lumina-windsinger",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-91862-lumina-windsinger",
        },
        {
            priority = 1290,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "accept-91862-lumina-windsinger", "objective-91862-lumina-windsinger" },
            id = "turnin-91862-lumina-windsinger",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-91862-lumina-windsinger",
        },
        {
            priority = 1300,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "accept-95034-the-debt",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-95034-the-debt",
        },
        {
            priority = 1310,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "accept-95034-the-debt" },
            id = "turnin-95034-the-debt",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-95034-the-debt",
        },
        {
            priority = 1320,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "accept-96204-the-windshapers-wrath",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-96204-the-windshapers-wrath",
        },
        {
            priority = 1330,
            dependsOn = { "accept-96204-the-windshapers-wrath" },
            id = "objective-96204-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-96204-reviewed-mechanics",
        },
        {
            priority = 1340,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "accept-96204-the-windshapers-wrath", "objective-96204-reviewed-mechanics" },
            id = "turnin-96204-the-windshapers-wrath",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-96204-the-windshapers-wrath",
        },
        {
            id = "level-before-accept-1794-the-tome-of-valor",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1794,
            priority = 1350,
        },
        {
            priority = 1360,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "accept-1794-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1794-the-tome-of-valor",
        },
        {
            priority = 1370,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "accept-1794-the-tome-of-valor" },
            id = "turnin-1794-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1794-the-tome-of-valor",
        },
        {
            priority = 1380,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "accept-1793-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1793-the-tome-of-valor",
        },
        {
            priority = 1390,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1793-the-tome-of-valor" },
            id = "turnin-1793-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1793-the-tome-of-valor",
        },
        {
            id = "loot-starter-before-accept-1649-the-tome-of-valor",
            instructionOnly = true,
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
            useClientPin = false,
            dependsOn = {},
            priority = 1400,
            classAction = "loot-starter-before-accept-1649-the-tome-of-valor",
        },
        {
            priority = 1410,
            id = "accept-1649-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1649-the-tome-of-valor",
        },
        {
            priority = 1420,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1649-the-tome-of-valor" },
            id = "turnin-1649-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1649-the-tome-of-valor",
        },
        {
            priority = 1430,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "turnin-1649-the-tome-of-valor" },
            id = "accept-1650-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1650-the-tome-of-valor",
        },
        {
            priority = 1440,
            route = {
                { y = 0.886, mapID = 1436, label = "Daphne Stilwell", x = 0.422, offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            dependsOn = { "accept-1650-the-tome-of-valor" },
            id = "turnin-1650-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1650-the-tome-of-valor",
        },
        {
            priority = 1450,
            route = {
                { y = 0.886, mapID = 1436, label = "Daphne Stilwell", x = 0.422, offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            dependsOn = { "turnin-1650-the-tome-of-valor" },
            id = "accept-1651-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1651-the-tome-of-valor",
        },
        {
            priority = 1460,
            dependsOn = { "accept-1651-the-tome-of-valor" },
            id = "objective-1651-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1651-reviewed-mechanics",
        },
        {
            priority = 1470,
            route = {
                { y = 0.886, mapID = 1436, label = "Daphne Stilwell", x = 0.422, offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            dependsOn = { "accept-1651-the-tome-of-valor", "objective-1651-reviewed-mechanics" },
            id = "turnin-1651-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1651-the-tome-of-valor",
        },
        {
            priority = 1480,
            route = {
                { y = 0.886, mapID = 1436, label = "Daphne Stilwell", x = 0.422, offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            dependsOn = { "turnin-1651-the-tome-of-valor", "turnin-1650-the-tome-of-valor" },
            id = "accept-1652-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1652-the-tome-of-valor",
        },
        {
            priority = 1490,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1652-the-tome-of-valor" },
            id = "turnin-1652-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1652-the-tome-of-valor",
        },
        {
            priority = 1500,
            route = {
                { y = 0.45, mapID = 1432, label = "Bailor Stonehand", x = 0.36, offMapText = "Travel to Bailor Stonehand in Loch Modan." },
            },
            id = "accept-1655-bailors-ore-shipment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1655-bailors-ore-shipment",
        },
        {
            priority = 1510,
            id = "objective-1655-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1655-bailors-ore-shipment" },
            classAction = "objective-1655-quest-work",
        },
        {
            priority = 1520,
            route = {
                { y = 0.45, mapID = 1432, label = "Bailor Stonehand", x = 0.36, offMapText = "Travel to Bailor Stonehand in Loch Modan." },
            },
            dependsOn = { "accept-1655-bailors-ore-shipment", "objective-1655-quest-work" },
            id = "turnin-1655-bailors-ore-shipment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1655-bailors-ore-shipment",
        },
        {
            id = "level-before-accept-95042-seeking-the-kor-gem",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            checkpointQuest = 95042,
            priority = 1530,
        },
        {
            priority = 1540,
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            id = "accept-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-95042-seeking-the-kor-gem",
        },
        {
            priority = 1550,
            route = {
                { mapID = 1440, x = 0.1355, y = 0.1206, label = "Naga at Blackfathom Deeps", offMapText = "Travel north along the Zoram Strand in Ashenvale." },
            },
            dependsOn = { "accept-95042-seeking-the-kor-gem" },
            id = "objective-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "objective-95042-seeking-the-kor-gem",
        },
        {
            priority = 1560,
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            dependsOn = { "accept-95042-seeking-the-kor-gem", "objective-95042-seeking-the-kor-gem" },
            id = "turnin-95042-seeking-the-kor-gem",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-95042-seeking-the-kor-gem",
        },
        {
            id = "level-before-handoff-95036-class-dungeon",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
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
            checkpointQuest = 95036,
            priority = 1570,
        },
        {
            id = "handoff-95036-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1580,
            classAction = "handoff-95036-class-dungeon",
        },
        {
            id = "level-before-accept-95111-an-underrated-talent",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            checkpointQuest = 95111,
            priority = 1590,
        },
        {
            priority = 1600,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            id = "accept-95111-an-underrated-talent",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-95111-an-underrated-talent",
        },
        {
            priority = 1610,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", x = 0.604, offMapText = "Travel to Ott in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-95111-an-underrated-talent" },
            id = "turnin-95111-an-underrated-talent",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-95111-an-underrated-talent",
        },
        {
            priority = 1620,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", x = 0.604, offMapText = "Travel to Ott in Hillsbrad Foothills." },
            },
            id = "accept-95125-otts-masterwork",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-95125-otts-masterwork",
        },
        {
            priority = 1630,
            dependsOn = { "accept-95125-otts-masterwork" },
            id = "objective-95125-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            useClientPin = true,
            classAction = "objective-95125-reviewed-mechanics",
        },
        {
            priority = 1640,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", x = 0.604, offMapText = "Travel to Ott in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-95125-otts-masterwork", "objective-95125-reviewed-mechanics" },
            id = "turnin-95125-otts-masterwork",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-95125-otts-masterwork",
        },
        {
            priority = 1650,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", x = 0.604, offMapText = "Travel to Ott in Hillsbrad Foothills." },
            },
            id = "accept-95126-the-moonsilver-blade",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-95126-the-moonsilver-blade",
        },
        {
            priority = 1660,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            dependsOn = { "accept-95126-the-moonsilver-blade" },
            id = "turnin-95126-the-moonsilver-blade",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-95126-the-moonsilver-blade",
        },
        {
            priority = 1670,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "accept-95140-old-fire-eye",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "accept-95140-old-fire-eye",
        },
        {
            priority = 1680,
            dependsOn = { "accept-95140-old-fire-eye" },
            id = "objective-95140-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            useClientPin = true,
            classAction = "objective-95140-reviewed-mechanics",
        },
        {
            priority = 1690,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "accept-95140-old-fire-eye", "objective-95140-reviewed-mechanics" },
            id = "turnin-95140-old-fire-eye",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
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
            classAction = "turnin-95140-old-fire-eye",
        },
        {
            id = "level-before-accept-1661-the-tome-of-nobility",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1661,
            alternativeQuests = { 4485, 4486 },
            priority = 1700,
        },
        {
            priority = 1710,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "accept-1661-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1661-the-tome-of-nobility",
        },
        {
            priority = 1720,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1661-the-tome-of-nobility" },
            id = "turnin-1661-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1661-the-tome-of-nobility",
        },
        {
            priority = 1730,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "accept-4485-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4485-the-tome-of-nobility",
        },
        {
            priority = 1740,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-4485-the-tome-of-nobility" },
            id = "turnin-4485-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4485-the-tome-of-nobility",
        },
        {
            priority = 1750,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "accept-4486-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4486-the-tome-of-nobility",
        },
        {
            priority = 1760,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-4486-the-tome-of-nobility" },
            id = "turnin-4486-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4486-the-tome-of-nobility",
        },
        {
            id = "level-before-accept-8415-chillwind-point",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8415,
            priority = 1770,
        },
        {
            priority = 1780,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            id = "accept-8415-chillwind-point",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8415-chillwind-point",
        },
        {
            priority = 1790,
            route = {
                { y = 0.84, mapID = 1422, label = "Commander Ashlam Valorfist", x = 0.428, offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands." },
            },
            dependsOn = { "accept-8415-chillwind-point" },
            id = "turnin-8415-chillwind-point",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8415-chillwind-point",
        },
        {
            priority = 1800,
            route = {
                { y = 0.84, mapID = 1422, label = "Commander Ashlam Valorfist", x = 0.428, offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands." },
            },
            dependsOn = { "turnin-8415-chillwind-point" },
            id = "accept-8414-dispelling-evil",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8414-dispelling-evil",
        },
        {
            priority = 1810,
            route = {
                { y = 0.55, mapID = 1422, label = "Skeletal Flayer", x = 0.388, offMapText = "Travel to Skeletal Flayer in Western Plaguelands." },
                { y = 0.544, mapID = 1422, label = "Skeletal Sorcerer", x = 0.38, offMapText = "Travel to Skeletal Sorcerer in Western Plaguelands." },
                { y = 0.51, mapID = 1422, label = "Skeletal Terror", x = 0.476, offMapText = "Travel to Skeletal Terror in Western Plaguelands." },
                { y = 0.674, mapID = 1422, label = "Skeletal Executioner", x = 0.398, offMapText = "Travel to Skeletal Executioner in Western Plaguelands." },
                { y = 0.708, mapID = 1422, label = "Skeletal Acolyte", x = 0.466, offMapText = "Travel to Skeletal Acolyte in Western Plaguelands." },
                { y = 0.544, mapID = 1422, label = "Slavering Ghoul", x = 0.38, offMapText = "Travel to Slavering Ghoul in Western Plaguelands." },
                { y = 0.66, mapID = 1422, label = "Rotting Ghoul", x = 0.53, offMapText = "Travel to Rotting Ghoul in Western Plaguelands." },
                { y = 0.674, mapID = 1422, label = "Soulless Ghoul", x = 0.398, offMapText = "Travel to Soulless Ghoul in Western Plaguelands." },
                { y = 0.674, mapID = 1422, label = "Searing Ghoul", x = 0.398, offMapText = "Travel to Searing Ghoul in Western Plaguelands." },
                { y = 0.646, mapID = 1422, label = "Freezing Ghoul", x = 0.536, offMapText = "Travel to Freezing Ghoul in Western Plaguelands." },
                { y = 0.592, mapID = 1422, label = "Hungering Wraith", x = 0.616, offMapText = "Travel to Hungering Wraith in Western Plaguelands." },
                { y = 0.592, mapID = 1422, label = "Wailing Death", x = 0.616, offMapText = "Travel to Wailing Death in Western Plaguelands." },
                { y = 0.534, mapID = 1422, label = "Foulmane", x = 0.464, offMapText = "Travel to Foulmane in Western Plaguelands." },
                { y = 0.5, mapID = 1422, label = "Rotting Cadaver", x = 0.472, offMapText = "Travel to Rotting Cadaver in Western Plaguelands." },
                { y = 0.5, mapID = 1422, label = "Blighted Zombie", x = 0.472, offMapText = "Travel to Blighted Zombie in Western Plaguelands." },
                { y = 0.574, mapID = 1422, label = "Putrid Gargoyle", x = 0.738, offMapText = "Travel to Putrid Gargoyle in Western Plaguelands." },
                { y = 0.652, mapID = 1422, label = "Fetid Zombie", x = 0.528, offMapText = "Travel to Fetid Zombie in Western Plaguelands." },
                { y = 0.564, mapID = 1422, label = "Jabbering Ghoul", x = 0.38, offMapText = "Travel to Jabbering Ghoul in Western Plaguelands." },
                { y = 0.498, mapID = 1422, label = "Wandering Skeleton", x = 0.48, offMapText = "Travel to Wandering Skeleton in Western Plaguelands." },
                { y = 0.538, mapID = 1422, label = "Festering Ghoul", x = 0.456, offMapText = "Travel to Festering Ghoul in Western Plaguelands." },
            },
            dependsOn = { "accept-8414-dispelling-evil" },
            id = "objective-8414-dispelling-evil",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8414-dispelling-evil",
        },
        {
            priority = 1820,
            route = {
                { y = 0.828, mapID = 1422, label = "High Priest Thel'danis", x = 0.52, offMapText = "Travel to High Priest Thel'danis in Western Plaguelands." },
            },
            dependsOn = { "accept-8414-dispelling-evil", "objective-8414-dispelling-evil" },
            id = "turnin-8414-dispelling-evil",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8414-dispelling-evil",
        },
        {
            priority = 1830,
            route = {
                { y = 0.828, mapID = 1422, label = "High Priest Thel'danis", x = 0.52, offMapText = "Travel to High Priest Thel'danis in Western Plaguelands." },
            },
            dependsOn = { "turnin-8414-dispelling-evil" },
            id = "accept-8416-inert-scourgestones",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8416-inert-scourgestones",
        },
        {
            priority = 1840,
            route = {
                { y = 0.84, mapID = 1422, label = "Commander Ashlam Valorfist", x = 0.428, offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands." },
            },
            dependsOn = { "accept-8416-inert-scourgestones" },
            id = "turnin-8416-inert-scourgestones",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8416-inert-scourgestones",
        },
        {
            id = "level-before-accept-7638-lord-grayson-shadowbreaker",
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
            checkpointQuest = 7638,
            priority = 1850,
        },
        {
            priority = 1860,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "accept-7638-lord-grayson-shadowbreaker",
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
            priority = 1870,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "accept-7638-lord-grayson-shadowbreaker" },
            id = "turnin-7638-lord-grayson-shadowbreaker",
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
            priority = 1880,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "turnin-7638-lord-grayson-shadowbreaker" },
            id = "accept-7637-emphasis-on-sacrifice",
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
            priority = 1890,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "accept-7637-emphasis-on-sacrifice" },
            id = "turnin-7637-emphasis-on-sacrifice",
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
            priority = 1900,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "turnin-7637-emphasis-on-sacrifice" },
            id = "accept-7639-to-show-due-judgment",
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
            priority = 1910,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "accept-7639-to-show-due-judgment" },
            id = "turnin-7639-to-show-due-judgment",
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
            priority = 1920,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "turnin-7639-to-show-due-judgment" },
            id = "accept-7640-exorcising-terrordale",
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
            priority = 1930,
            id = "objective-7640-quest-work",
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
            dependsOn = { "accept-7640-exorcising-terrordale" },
            classAction = "objective-7640-quest-work",
        },
        {
            priority = 1940,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "accept-7640-exorcising-terrordale", "objective-7640-quest-work" },
            id = "turnin-7640-exorcising-terrordale",
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
            priority = 1950,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "turnin-7640-exorcising-terrordale", "turnin-7639-to-show-due-judgment" },
            id = "accept-7641-the-work-of-grimand-elmore",
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
            priority = 1960,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "accept-7641-the-work-of-grimand-elmore" },
            id = "turnin-7641-the-work-of-grimand-elmore",
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
            priority = 1970,
            route = {
                { y = 0.556, mapID = 1424, label = "Merideth Carlson", x = 0.52, offMapText = "Travel to Merideth Carlson in Hillsbrad Foothills." },
            },
            id = "accept-7645-manna-enriched-horse-feed",
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
            priority = 1980,
            id = "objective-7645-quest-work",
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
            dependsOn = { "accept-7645-manna-enriched-horse-feed" },
            classAction = "objective-7645-quest-work",
        },
        {
            priority = 1990,
            route = {
                { y = 0.556, mapID = 1424, label = "Merideth Carlson", x = 0.52, offMapText = "Travel to Merideth Carlson in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-7645-manna-enriched-horse-feed", "objective-7645-quest-work" },
            id = "turnin-7645-manna-enriched-horse-feed",
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
            id = "level-before-accept-7670-lord-grayson-shadowbreaker",
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
            priority = 2000,
        },
        {
            priority = 2010,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "accept-7670-lord-grayson-shadowbreaker",
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
            priority = 2020,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "accept-7670-lord-grayson-shadowbreaker" },
            id = "turnin-7670-lord-grayson-shadowbreaker",
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
            id = "level-before-handoff-7642-class-dungeon",
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
            priority = 2030,
        },
        {
            id = "handoff-7642-class-dungeon",
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
            priority = 2040,
            classAction = "handoff-7642-class-dungeon",
        },
        {
            priority = 2050,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            id = "accept-7648-grimands-finest-work",
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
            priority = 2060,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "accept-7648-grimands-finest-work" },
            id = "turnin-7648-grimands-finest-work",
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
    },
    routeMode = "ordered",
})
