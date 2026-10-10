local _, ns = ...

ns:RegisterGuide({
    revision = 3,
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
            priority = 10,
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
            priority = 20,
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
            priority = 30,
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
            priority = 40,
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
            priority = 50,
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
            priority = 60,
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
            priority = 70,
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
            priority = 80,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            priority = 90,
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
            priority = 100,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
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
            priority = 110,
            route = {
                { y = 0.76, mapID = 1412, label = "Gart Mistrunner", x = 0.45, offMapText = "Travel to Gart Mistrunner in Mulgore." },
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
            priority = 120,
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
            priority = 130,
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
            priority = 140,
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
            priority = 150,
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
            priority = 160,
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
            priority = 170,
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
            priority = 180,
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
            priority = 190,
        },
        {
            priority = 200,
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
            priority = 210,
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
            priority = 220,
        },
        {
            priority = 230,
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
            priority = 240,
            classAction = "objective-76156-stalk-with-the-earthmother-1",
        },
        {
            priority = 250,
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
            priority = 260,
        },
        {
            priority = 270,
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
            priority = 280,
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
            priority = 290,
            route = {
                { y = 0.514, mapID = 1453, label = "Theridran", x = 0.214, offMapText = "Travel to Theridran in Stormwind City." },
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
            priority = 300,
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
            priority = 310,
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
            priority = 320,
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
            priority = 330,
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
            priority = 340,
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
            priority = 350,
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
            priority = 360,
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
            priority = 370,
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
            priority = 380,
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
            priority = 390,
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
            priority = 400,
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
            priority = 410,
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
            priority = 420,
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
            priority = 430,
        },
        {
            priority = 440,
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
            priority = 450,
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
            priority = 460,
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
            priority = 470,
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
            priority = 480,
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
            priority = 490,
        },
        {
            priority = 500,
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
            priority = 510,
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
            priority = 520,
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
            priority = 530,
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
            priority = 540,
        },
        {
            priority = 550,
            route = {
                { y = 0.786, mapID = 1416, label = "Archmage Ansirem Runeweaver", x = 0.188, offMapText = "Travel to Archmage Ansirem Runeweaver in Alterac Mountains." },
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
            priority = 560,
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
            priority = 570,
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
            priority = 580,
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
            priority = 590,
        },
        {
            priority = 600,
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
            priority = 610,
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
            priority = 620,
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
            priority = 630,
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
            priority = 640,
            route = {
                { y = 0.596, mapID = 1412, label = "Gennia Runetotem", x = 0.484, offMapText = "Travel to Gennia Runetotem in Mulgore." },
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
            priority = 650,
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
            priority = 660,
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
            priority = 670,
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
            priority = 680,
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
            priority = 690,
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
            priority = 700,
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
            priority = 710,
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
            priority = 720,
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
            priority = 730,
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
            priority = 740,
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
            priority = 750,
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
            priority = 760,
        },
        {
            priority = 770,
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
            priority = 780,
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
            priority = 790,
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
            priority = 800,
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
            priority = 810,
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
            priority = 820,
        },
        {
            priority = 830,
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
            priority = 840,
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
            priority = 850,
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
            priority = 860,
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
            priority = 870,
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
            priority = 880,
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
            priority = 890,
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
            priority = 900,
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
            priority = 910,
        },
        {
            priority = 920,
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
            priority = 930,
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
            priority = 940,
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
            priority = 950,
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
            priority = 960,
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
            priority = 970,
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
            priority = 980,
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
            priority = 990,
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
            priority = 1000,
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
            priority = 1010,
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
            priority = 1020,
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
            priority = 1030,
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
            priority = 1040,
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
            priority = 1050,
        },
        {
            priority = 1060,
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
            priority = 1070,
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
            priority = 1080,
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
            priority = 1090,
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
            priority = 1100,
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
            priority = 1110,
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
            priority = 1120,
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
            priority = 1130,
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
            priority = 1140,
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
            priority = 1150,
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
            priority = 1160,
        },
        {
            priority = 1170,
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
            priority = 1180,
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
            priority = 1190,
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
            priority = 1200,
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
            priority = 1210,
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
            priority = 1220,
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
            priority = 1230,
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
            priority = 1240,
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
            priority = 1250,
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
            priority = 1260,
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
            priority = 1270,
        },
        {
            priority = 1280,
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
            priority = 1290,
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
            priority = 1300,
        },
        {
            priority = 1310,
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
            priority = 1320,
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
            priority = 1330,
        },
        {
            priority = 1340,
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
            priority = 1350,
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
            priority = 1360,
        },
        {
            priority = 1370,
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
            priority = 1380,
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
            priority = 1390,
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
            priority = 1400,
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
            priority = 1410,
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
            priority = 1420,
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
            priority = 1430,
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
            priority = 1440,
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
            priority = 1450,
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
            priority = 1460,
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
            priority = 1470,
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
            priority = 1480,
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
            priority = 1490,
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
            priority = 1500,
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
            priority = 1510,
        },
        {
            priority = 1520,
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
            priority = 1530,
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
            priority = 1540,
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
            priority = 1550,
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
            priority = 1560,
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
            priority = 1570,
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
            priority = 1580,
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
            priority = 1590,
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
            priority = 1600,
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
            priority = 1610,
        },
        {
            priority = 1620,
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
            priority = 1630,
        },
        {
            priority = 1640,
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
            priority = 1650,
        },
        {
            priority = 1660,
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
            priority = 1670,
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
            priority = 1680,
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
            priority = 1690,
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
            priority = 1700,
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
            priority = 1710,
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
            priority = 1720,
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
