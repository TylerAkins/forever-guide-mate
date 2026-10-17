local _, ns = ...

ns:RegisterGuide({
    revision = 7,
    title = "Druid",
    category = "Class Quests",
    id = "class-druid",
    conditions = {
        all = {
            { class = 11 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
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
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
            },
            id = "accept-747-the-hunt-begins",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
            id = "accept-3094-verdant-note",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-3094-verdant-note",
        },
        {
            route = {
                { y = 0.766, mapID = 1412, label = "Gart Mistrunner", x = 0.446, offMapText = "Travel to Gart Mistrunner in Mulgore." },
            },
            dependsOn = { "accept-3094-verdant-note" },
            id = "turnin-3094-verdant-note",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-3094-verdant-note",
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
                                    { class = 11 },
                                    {
                                        class = { 11 },
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
                    { class = 11 },
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
            id = "accept-3120-verdant-sigil",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-3120-verdant-sigil",
        },
        {
            route = {
                { y = 0.404, mapID = 1438, label = "Mardant Strongoak", x = 0.586, offMapText = "Travel to Mardant Strongoak in Teldrassil." },
            },
            dependsOn = { "accept-3120-verdant-sigil" },
            id = "turnin-3120-verdant-sigil",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-3120-verdant-sigil",
        },
        {
            id = "level-before-accept-92485-a-student-of-nature",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 92485,
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-92485-a-student-of-nature",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Xyton Silverwind", x = 0.416, offMapText = "Travel to Xyton Silverwind in Zephras Isle." },
            },
            dependsOn = { "accept-92485-a-student-of-nature" },
            id = "turnin-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-92485-a-student-of-nature",
        },
        {
            id = "level-before-accept-5923-heeding-the-call",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 5923,
            alternativeQuests = { 5924, 5925 },
        },
        {
            route = {
                { y = 0.078, mapID = 1457, label = "Denatharion", x = 0.348, offMapText = "Travel to Denatharion in Darnassus." },
            },
            id = "accept-5923-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5923-heeding-the-call",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-5923-heeding-the-call" },
            id = "turnin-5923-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5923-heeding-the-call",
        },
        {
            route = {
                { y = 0.642, mapID = 1453, label = "Theridran", x = 0.362, offMapText = "Travel to Theridran in Stormwind City." },
            },
            dependsOn = { "turnin-5923-heeding-the-call" },
            id = "accept-5924-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5924-heeding-the-call",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-5924-heeding-the-call" },
            id = "turnin-5924-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5924-heeding-the-call",
        },
        {
            route = {
                { y = 0.616, mapID = 1438, label = "Kal", x = 0.56, offMapText = "Travel to Kal in Teldrassil." },
            },
            dependsOn = { "turnin-5924-heeding-the-call" },
            id = "accept-5925-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5925-heeding-the-call",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-5925-heeding-the-call" },
            id = "turnin-5925-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5925-heeding-the-call",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "turnin-5925-heeding-the-call", "turnin-5923-heeding-the-call" },
            id = "accept-5921-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5921-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-5921-moonglade" },
            id = "turnin-5921-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5921-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-5921-moonglade" },
            id = "accept-5929-great-bear-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5929-great-bear-spirit",
        },
        {
            id = "objective-5929-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            dependsOn = { "accept-5929-great-bear-spirit" },
            classAction = "objective-5929-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-5929-great-bear-spirit", "objective-5929-quest-work" },
            id = "turnin-5929-great-bear-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5929-great-bear-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-5929-great-bear-spirit", "turnin-5921-moonglade" },
            id = "accept-5931-back-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5931-back-to-darnassus",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-5931-back-to-darnassus" },
            id = "turnin-5931-back-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5931-back-to-darnassus",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "turnin-5931-back-to-darnassus" },
            id = "accept-6001-body-and-heart",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-6001-body-and-heart",
        },
        {
            id = "objective-6001-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            dependsOn = { "accept-6001-body-and-heart" },
            classAction = "objective-6001-quest-work",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-6001-body-and-heart", "objective-6001-quest-work" },
            id = "turnin-6001-body-and-heart",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-6001-body-and-heart",
        },
        {
            id = "level-before-accept-94006-the-great-ursera-spirit",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 94006,
        },
        {
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", x = 0.64, offMapText = "Travel to Lotheluum Starbreeze in Zephras Isle." },
            },
            id = "accept-94006-the-great-ursera-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-94006-the-great-ursera-spirit",
        },
        {
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "accept-94006-the-great-ursera-spirit" },
            id = "turnin-94006-the-great-ursera-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-94006-the-great-ursera-spirit",
        },
        {
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "turnin-94006-the-great-ursera-spirit" },
            id = "accept-94638-strength-and-mercy",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-94638-strength-and-mercy",
        },
        {
            id = "objective-94638-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            dependsOn = { "accept-94638-strength-and-mercy" },
            classAction = "objective-94638-quest-work",
        },
        {
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "accept-94638-strength-and-mercy", "objective-94638-quest-work" },
            id = "turnin-94638-strength-and-mercy",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-94638-strength-and-mercy",
        },
        {
            id = "level-before-accept-94911-child-of-nature",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 94911,
        },
        {
            route = {
                { y = 0.224, mapID = 1412, label = "Muln Earthfury", x = 0.334, offMapText = "Travel to Muln Earthfury in Mulgore." },
            },
            id = "accept-94911-child-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-94911-child-of-nature",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-94911-child-of-nature" },
            id = "turnin-94911-child-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-94911-child-of-nature",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-94911-child-of-nature" },
            id = "accept-94913-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-94913-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-94913-moonglade" },
            id = "turnin-94913-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-94913-moonglade",
        },
        {
            id = "level-before-accept-94912-child-of-nature",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
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
            checkpointQuest = 94912,
        },
        {
            route = {
                { y = 0.566, mapID = 1416, label = "Archmage Ansirem Runeweaver", x = 0.118, offMapText = "Travel to Archmage Ansirem Runeweaver in Alterac Mountains." },
            },
            id = "accept-94912-child-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94912-child-of-nature",
        },
        {
            route = {
                { y = 0.554, mapID = 1453, label = "Sheldras Moontree", x = 0.21, offMapText = "Travel to Sheldras Moontree in Stormwind City." },
            },
            dependsOn = { "accept-94912-child-of-nature" },
            id = "turnin-94912-child-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94912-child-of-nature",
        },
        {
            route = {
                { y = 0.554, mapID = 1453, label = "Sheldras Moontree", x = 0.21, offMapText = "Travel to Sheldras Moontree in Stormwind City." },
            },
            id = "accept-94914-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94914-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-94914-moonglade" },
            id = "turnin-94914-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94914-moonglade",
        },
        {
            id = "level-before-accept-5926-heeding-the-call",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 5926,
            alternativeQuests = { 5927, 5928 },
        },
        {
            route = {
                { y = 0.644, mapID = 1456, label = "Innkeeper Pala", x = 0.458, offMapText = "Travel to Innkeeper Pala in Thunder Bluff." },
            },
            id = "accept-5926-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5926-heeding-the-call",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-5926-heeding-the-call" },
            id = "turnin-5926-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5926-heeding-the-call",
        },
        {
            route = {
                { y = 0.684, mapID = 1454, label = "Innkeeper Gryshka", x = 0.542, offMapText = "Travel to Innkeeper Gryshka in Orgrimmar." },
            },
            dependsOn = { "turnin-5926-heeding-the-call" },
            id = "accept-5927-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5927-heeding-the-call",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-5927-heeding-the-call" },
            id = "turnin-5927-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5927-heeding-the-call",
        },
        {
            route = {
                { y = 0.630, mapID = 1412, label = "Gennia Runetotem", x = 0.475, offMapText = "Travel to Gennia Runetotem in Mulgore." },
            },
            dependsOn = { "turnin-5927-heeding-the-call" },
            id = "accept-5928-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5928-heeding-the-call",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-5928-heeding-the-call" },
            id = "turnin-5928-heeding-the-call",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5928-heeding-the-call",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-5928-heeding-the-call" },
            id = "accept-5922-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5922-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-5922-moonglade" },
            id = "turnin-5922-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5922-moonglade",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-5922-moonglade" },
            id = "accept-5930-great-bear-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5930-great-bear-spirit",
        },
        {
            id = "objective-5930-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            dependsOn = { "accept-5930-great-bear-spirit" },
            classAction = "objective-5930-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-5930-great-bear-spirit", "objective-5930-quest-work" },
            id = "turnin-5930-great-bear-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5930-great-bear-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-5930-great-bear-spirit", "turnin-5922-moonglade" },
            id = "accept-5932-back-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-5932-back-to-thunder-bluff",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-5932-back-to-thunder-bluff" },
            id = "turnin-5932-back-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-5932-back-to-thunder-bluff",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-5932-back-to-thunder-bluff" },
            id = "accept-6002-body-and-heart",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-6002-body-and-heart",
        },
        {
            id = "objective-6002-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            dependsOn = { "accept-6002-body-and-heart" },
            classAction = "objective-6002-quest-work",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-6002-body-and-heart", "objective-6002-quest-work" },
            id = "turnin-6002-body-and-heart",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-6002-body-and-heart",
        },
        {
            id = "level-before-accept-6121-lessons-anew",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            complete = {
                level = { min = 14 },
            },
            requiredLevel = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6121,
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "turnin-6001-body-and-heart" },
            id = "accept-6121-lessons-anew",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6121-lessons-anew",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-6121-lessons-anew" },
            id = "turnin-6121-lessons-anew",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6121-lessons-anew",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-6121-lessons-anew" },
            id = "accept-6122-the-principal-source",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6122-the-principal-source",
        },
        {
            route = {
                { mapID = 1439, x = 0.5493, y = 0.3332, label = "Filled Cliffspring Falls Sampler", offMapText = "Travel to Filled Cliffspring Falls Sampler." },
            },
            id = "objective-6122-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-6122-the-principal-source" },
            classAction = "objective-6122-quest-work",
        },
        {
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = { "accept-6122-the-principal-source", "objective-6122-quest-work" },
            id = "turnin-6122-the-principal-source",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6122-the-principal-source",
        },
        {
            id = "level-before-accept-6123-gathering-the-cure",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                level = { min = 14 },
            },
            requiredLevel = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6123,
        },
        {
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = { "turnin-6122-the-principal-source" },
            id = "accept-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6123-gathering-the-cure",
        },
        {
            dependsOn = { "accept-6123-gathering-the-cure" },
            id = "objective-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-6123-gathering-the-cure",
        },
        {
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = { "accept-6123-gathering-the-cure", "objective-6123-gathering-the-cure" },
            id = "turnin-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6123-gathering-the-cure",
        },
        {
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = { "turnin-6123-gathering-the-cure", "turnin-6122-the-principal-source" },
            id = "accept-6124-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6124-curing-the-sick",
        },
        {
            id = "objective-6124-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6124-curing-the-sick" },
            classAction = "objective-6124-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-6124-curing-the-sick", "objective-6124-quest-work" },
            id = "turnin-6124-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6124-curing-the-sick",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-6124-curing-the-sick" },
            id = "accept-6125-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6125-power-over-poison",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-6125-power-over-poison" },
            id = "turnin-6125-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6125-power-over-poison",
        },
        {
            id = "level-before-accept-6126-lessons-anew",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                level = { min = 14 },
            },
            requiredLevel = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6126,
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-6002-body-and-heart" },
            id = "accept-6126-lessons-anew",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6126-lessons-anew",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-6126-lessons-anew" },
            id = "turnin-6126-lessons-anew",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6126-lessons-anew",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-6126-lessons-anew" },
            id = "accept-6127-the-principal-source",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6127-the-principal-source",
        },
        {
            id = "objective-6127-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6127-the-principal-source" },
            classAction = "objective-6127-quest-work",
        },
        {
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "accept-6127-the-principal-source", "objective-6127-quest-work" },
            id = "turnin-6127-the-principal-source",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6127-the-principal-source",
        },
        {
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "turnin-6127-the-principal-source" },
            id = "accept-6128-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6128-gathering-the-cure",
        },
        {
            dependsOn = { "accept-6128-gathering-the-cure" },
            id = "objective-6128-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-6128-gathering-the-cure",
        },
        {
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "accept-6128-gathering-the-cure", "objective-6128-gathering-the-cure" },
            id = "turnin-6128-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6128-gathering-the-cure",
        },
        {
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "turnin-6128-gathering-the-cure", "turnin-6127-the-principal-source" },
            id = "accept-6129-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6129-curing-the-sick",
        },
        {
            id = "objective-6129-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6129-curing-the-sick" },
            classAction = "objective-6129-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-6129-curing-the-sick", "objective-6129-quest-work" },
            id = "turnin-6129-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6129-curing-the-sick",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-6129-curing-the-sick" },
            id = "accept-6130-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6130-power-over-poison",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-6130-power-over-poison" },
            id = "turnin-6130-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6130-power-over-poison",
        },
        {
            id = "level-before-accept-26-a-lesson-to-learn",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
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
            checkpointQuest = 26,
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "turnin-6125-power-over-poison" },
            id = "accept-26-a-lesson-to-learn",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-26-a-lesson-to-learn",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-26-a-lesson-to-learn" },
            id = "turnin-26-a-lesson-to-learn",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-26-a-lesson-to-learn",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-26-a-lesson-to-learn" },
            id = "accept-29-trial-of-the-lake",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-29-trial-of-the-lake",
        },
        {
            id = "objective-29-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-29-trial-of-the-lake" },
            classAction = "objective-29-quest-work",
        },
        {
            route = {
                { y = 0.402, mapID = 1450, label = "Tajarri", x = 0.364, offMapText = "Travel to Tajarri in Moonglade." },
            },
            dependsOn = { "accept-29-trial-of-the-lake", "objective-29-quest-work" },
            id = "turnin-29-trial-of-the-lake",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-29-trial-of-the-lake",
        },
        {
            route = {
                { y = 0.402, mapID = 1450, label = "Tajarri", x = 0.364, offMapText = "Travel to Tajarri in Moonglade." },
            },
            dependsOn = { "turnin-29-trial-of-the-lake" },
            id = "accept-272-trial-of-the-sea-lion",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-272-trial-of-the-sea-lion",
        },
        {
            id = "objective-272-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-272-trial-of-the-sea-lion" },
            classAction = "objective-272-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-272-trial-of-the-sea-lion", "objective-272-quest-work" },
            id = "turnin-272-trial-of-the-sea-lion",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-272-trial-of-the-sea-lion",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-272-trial-of-the-sea-lion" },
            id = "accept-5061-aquatic-form",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5061-aquatic-form",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-5061-aquatic-form" },
            id = "turnin-5061-aquatic-form",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5061-aquatic-form",
        },
        {
            id = "level-before-accept-27-a-lesson-to-learn",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 27,
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-6130-power-over-poison" },
            id = "accept-27-a-lesson-to-learn",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-27-a-lesson-to-learn",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-27-a-lesson-to-learn" },
            id = "turnin-27-a-lesson-to-learn",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-27-a-lesson-to-learn",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-27-a-lesson-to-learn" },
            id = "accept-28-trial-of-the-lake",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-28-trial-of-the-lake",
        },
        {
            route = {
                { mapID = 1450, x = 0.5433, y = 0.5565, label = "Shrine Bauble", offMapText = "Travel to Shrine Bauble." },
            },
            id = "objective-28-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-28-trial-of-the-lake" },
            classAction = "objective-28-quest-work",
        },
        {
            route = {
                { y = 0.402, mapID = 1450, label = "Tajarri", x = 0.364, offMapText = "Travel to Tajarri in Moonglade." },
            },
            dependsOn = { "accept-28-trial-of-the-lake", "objective-28-quest-work" },
            id = "turnin-28-trial-of-the-lake",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-28-trial-of-the-lake",
        },
        {
            route = {
                { y = 0.402, mapID = 1450, label = "Tajarri", x = 0.364, offMapText = "Travel to Tajarri in Moonglade." },
            },
            dependsOn = { "turnin-28-trial-of-the-lake" },
            id = "accept-30-trial-of-the-sea-lion",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-30-trial-of-the-sea-lion",
        },
        {
            id = "objective-30-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-30-trial-of-the-sea-lion" },
            classAction = "objective-30-quest-work",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-30-trial-of-the-sea-lion", "objective-30-quest-work" },
            id = "turnin-30-trial-of-the-sea-lion",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-30-trial-of-the-sea-lion",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-30-trial-of-the-sea-lion" },
            id = "accept-31-aquatic-form",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-31-aquatic-form",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-31-aquatic-form" },
            id = "turnin-31-aquatic-form",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-31-aquatic-form",
        },
        {
            id = "level-before-accept-98340-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 6, 96 },
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
            checkpointQuest = 98340,
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            id = "accept-98340-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98340-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-98340-the-great-cat-spirit" },
            id = "turnin-98340-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98340-the-great-cat-spirit",
        },
        {
            id = "level-before-accept-98341-the-great-windborne-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 98341,
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-98340-the-great-cat-spirit" },
            id = "accept-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98341-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = { "accept-98341-the-great-windborne-cat-spirit" },
            id = "turnin-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98341-the-great-windborne-cat-spirit",
        },
        {
            id = "level-before-accept-98393-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4, 95 },
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
            checkpointQuest = 98393,
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            id = "accept-98393-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98393-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-98393-the-great-cat-spirit" },
            id = "turnin-98393-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98393-the-great-cat-spirit",
        },
        {
            id = "level-before-accept-98394-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 98394,
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-98393-the-great-cat-spirit" },
            id = "accept-98394-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-98394-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "accept-98394-the-great-cat-spirit" },
            id = "turnin-98394-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-98394-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "turnin-98394-the-great-cat-spirit" },
            id = "accept-98396-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-98396-the-great-cat-spirit",
        },
        {
            id = "objective-98396-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            useClientPin = true,
            dependsOn = { "accept-98396-the-great-cat-spirit" },
            classAction = "objective-98396-quest-work",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "accept-98396-the-great-cat-spirit", "objective-98396-quest-work" },
            id = "turnin-98396-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-98396-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "turnin-98396-the-great-cat-spirit" },
            id = "accept-98731-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "accept-98731-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-98731-blessings-of-the-great-cat-spirit" },
            id = "turnin-98731-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            classAction = "turnin-98731-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-98731-blessings-of-the-great-cat-spirit" },
            id = "accept-98397-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98397-to-darnassus",
        },
        {
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "accept-98397-to-darnassus" },
            id = "turnin-98397-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98397-to-darnassus",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            id = "accept-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98404-the-great-windborne-cat-spirit",
        },
        {
            id = "objective-98404-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-98404-the-great-windborne-cat-spirit" },
            classAction = "objective-98404-quest-work",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = { "accept-98404-the-great-windborne-cat-spirit", "objective-98404-quest-work" },
            id = "turnin-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98404-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = { "turnin-98404-the-great-windborne-cat-spirit" },
            id = "accept-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-98738-blessings-of-the-great-windborne-cat-spirit" },
            id = "turnin-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            id = "level-before-accept-98405-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 98405,
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            id = "accept-98405-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98405-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "accept-98405-the-great-cat-spirit" },
            id = "turnin-98405-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98405-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "turnin-98405-the-great-cat-spirit" },
            id = "accept-98342-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98342-the-great-cat-spirit",
        },
        {
            id = "objective-98342-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-98342-the-great-cat-spirit" },
            classAction = "objective-98342-quest-work",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "accept-98342-the-great-cat-spirit", "objective-98342-quest-work" },
            id = "turnin-98342-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98342-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "turnin-98342-the-great-cat-spirit" },
            id = "accept-98739-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98739-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "accept-98739-blessings-of-the-great-cat-spirit" },
            id = "turnin-98739-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98739-blessings-of-the-great-cat-spirit",
        },
        {
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "turnin-98739-blessings-of-the-great-cat-spirit" },
            id = "accept-98362-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98362-to-thunder-bluff",
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-98362-to-thunder-bluff" },
            id = "turnin-98362-to-thunder-bluff",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 6, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98362-to-thunder-bluff",
        },
        {
            id = "level-before-accept-9063-torwa-pathfinder",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 9063,
        },
        {
            route = {
                { y = 0.514, mapID = 1453, label = "Theridran", x = 0.214, offMapText = "Travel to Theridran in Stormwind City." },
            },
            dependsOn = { "turnin-5061-aquatic-form", "turnin-31-aquatic-form" },
            id = "accept-9063-torwa-pathfinder",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9063-torwa-pathfinder",
        },
        {
            id = "level-before-accept-9063-torwa-pathfinder-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 9063,
        },
        {
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "turnin-5061-aquatic-form", "turnin-31-aquatic-form" },
            id = "accept-9063-torwa-pathfinder-horde",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9063-torwa-pathfinder-horde",
        },
        {
            id = "level-before-turnin-9063-torwa-pathfinder",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 9063,
        },
        {
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "accept-9063-torwa-pathfinder", "accept-9063-torwa-pathfinder-horde" },
            id = "turnin-9063-torwa-pathfinder",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9063-torwa-pathfinder",
        },
        {
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "turnin-9063-torwa-pathfinder" },
            id = "accept-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9052-bloodpetal-poison",
        },
        {
            route = {
                { y = 0.788, mapID = 1449, label = "Gorishi Wasp", x = 0.504, offMapText = "Travel to Gorishi Wasp in Un'Goro Crater." },
                { y = 0.808, mapID = 1449, label = "Gorishi Stinger", x = 0.5, offMapText = "Travel to Gorishi Stinger in Un'Goro Crater." },
                { y = 0.814, mapID = 1449, label = "Gorishi Hive Queen", x = 0.436, offMapText = "Travel to Gorishi Hive Queen in Un'Goro Crater." },
            },
            dependsOn = { "accept-9052-bloodpetal-poison" },
            id = "objective-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-9052-bloodpetal-poison",
        },
        {
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "accept-9052-bloodpetal-poison", "objective-9052-bloodpetal-poison" },
            id = "turnin-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9052-bloodpetal-poison",
        },
        {
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "turnin-9052-bloodpetal-poison", "turnin-9063-torwa-pathfinder" },
            id = "accept-9051-toxic-test",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9051-toxic-test",
        },
        {
            id = "objective-9051-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-9051-toxic-test" },
            classAction = "objective-9051-quest-work",
        },
        {
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "accept-9051-toxic-test", "objective-9051-quest-work" },
            id = "turnin-9051-toxic-test",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9051-toxic-test",
        },
    },
    routeMode = "ordered",
})
