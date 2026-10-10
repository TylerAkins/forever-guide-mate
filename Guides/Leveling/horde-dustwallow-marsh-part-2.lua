local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-dustwallow-marsh-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 42 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1166-overlord-mok-morokk-s-concern",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1166,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.3142, mapID = 1445, label = "Overlord Mok'Morokk", offMapText = "Travel to Overlord Mok'Morokk in Dustwallow Marsh.", x = 0.363 },
            },
            text = "Accept Overlord Mok'Morokk's Concern from Overlord Mok'Morokk.",
            id = "accept-1166-overlord-mok-morokk-s-concern",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1166, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            text = "Accept Identifying the Brood from Draz'Zilb.",
            id = "accept-1169-identifying-the-brood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1169, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.3139, mapID = 1445, label = "Tharg", offMapText = "Travel to Tharg in Dustwallow Marsh.", x = 0.3737 },
            },
            text = "Accept Army of the Black Dragon from Tharg.",
            id = "accept-1168-army-of-the-black-dragon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1168, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Deadmire's Tooth.",
            id = "objective-1205-1-deadmire",
            kind = "objective",
            useClientPin = true,
            complete = {
                questObjective = { id = 1205, text = "Deadmire", index = 1, count = 1 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1187-1-seaforium-booster",
            kind = "note",
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 29 },
            },
            requiredLevel = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1187,
            priority = 60,
        },
        {
            id = "objective-1187-1-seaforium-booster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            complete = {
                questObjective = { id = 1187, index = 1, count = 1 },
            },
            route = {
                { mapID = 1445, x = 0.5407, y = 0.5649000000000001, label = "Razzeric's Tweaking", offMapText = "Travel to Razzeric's Tweaking." },
            },
            sourceStep = 5,
            priority = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.604, mapID = 1445, label = "Muckshell Razorclaw", offMapText = "Travel to Muckshell Razorclaw.", x = 0.564 },
            },
            text = "Collect 1 Jeweled Pendant.",
            id = "objective-1261-1-muckshell-razorclaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1261, text = "Muckshell Razorclaw", index = 1, count = 1 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1240 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1166-2-mok-morokk-s-grog",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Mok'Morokk's Grog.",
            complete = {
                questObjective = { id = 1166, index = 2, text = "Mok'Morokk's Grog", count = 1 },
            },
            route = {
                { mapID = 1445, x = 0.38670000000000004, y = 0.6557999999999999, label = "Mok'Morokk's Grog", offMapText = "Travel to Mok'Morokk's Grog." },
            },
            sourceStep = 8,
            priority = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1166-overlord-mok-morokk-s-concern" },
        },
        {
            id = "objective-1166-3-mok-morokk-s-strongbox",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Mok'Morokk's Strongbox.",
            complete = {
                questObjective = { id = 1166, index = 3, text = "Mok'Morokk's Strongbox", count = 1 },
            },
            route = {
                { mapID = 1445, x = 0.3664, y = 0.6957, label = "Mok'Morokk's Strongbox", offMapText = "Travel to Mok'Morokk's Strongbox." },
            },
            sourceStep = 9,
            priority = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1166-overlord-mok-morokk-s-concern" },
        },
        {
            id = "objective-1168-3-firemane-scalebane",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 5 Firemane Scalebane.",
            complete = {
                questObjective = { id = 1168, index = 3, text = "Firemane Scalebane", count = 5 },
            },
            route = {
                { mapID = 1445, x = 0.3846, y = 0.6596, label = "Firemane Scalebane", offMapText = "Travel to Firemane Scalebane." },
            },
            sourceStep = 10,
            priority = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1168-army-of-the-black-dragon" },
        },
        {
            id = "objective-1168-2-firemane-ash-tail",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Firemane Ash Tail.",
            complete = {
                questObjective = { id = 1168, index = 2, text = "Firemane Ash Tail", count = 10 },
            },
            route = {
                { mapID = 1445, x = 0.42, y = 0.672, label = "Firemane Ash Tail", offMapText = "Travel to Firemane Ash Tail." },
            },
            sourceStep = 11,
            priority = 120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1168-army-of-the-black-dragon" },
        },
        {
            id = "objective-1168-1-firemane-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Firemane Scout.",
            complete = {
                questObjective = { id = 1168, index = 1, text = "Firemane Scout", count = 15 },
            },
            route = {
                { mapID = 1445, x = 0.42, y = 0.672, label = "Firemane Scout", offMapText = "Travel to Firemane Scout." },
            },
            sourceStep = 11,
            priority = 130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1168-army-of-the-black-dragon" },
        },
        {
            id = "objective-1169-1-searing-tongue",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 15 Searing Tongue.",
            complete = {
                questObjective = { id = 1169, index = 1, text = "Searing Tongue", count = 15 },
            },
            route = {
                { mapID = 1445, x = 0.41, y = 0.746, label = "Searing Tongue", offMapText = "Travel to Searing Tongue." },
            },
            sourceStep = 12,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1169-identifying-the-brood" },
        },
        {
            id = "objective-1169-2-searing-heart",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 15 Searing Heart.",
            complete = {
                questObjective = { id = 1169, index = 2, text = "Searing Heart", count = 15 },
            },
            route = {
                { mapID = 1445, x = 0.41, y = 0.746, label = "Searing Heart", offMapText = "Travel to Searing Heart." },
            },
            sourceStep = 12,
            priority = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1169-identifying-the-brood" },
        },
        {
            priority = 160,
            text = "Turn in Identifying the Brood to Draz'Zilb.",
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            dependsOn = { "accept-1169-identifying-the-brood", "objective-1169-1-searing-tongue", "objective-1169-2-searing-heart" },
            id = "turnin-1169-identifying-the-brood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1169, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            text = "Accept The Brood of Onyxia from Draz'Zilb.",
            id = "accept-1170-the-brood-of-onyxia",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1170, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1169 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Army of the Black Dragon to Tharg.",
            route = {
                { y = 0.3139, mapID = 1445, label = "Tharg", offMapText = "Travel to Tharg in Dustwallow Marsh.", x = 0.3737 },
            },
            dependsOn = {
                "accept-1168-army-of-the-black-dragon",
                "objective-1168-3-firemane-scalebane",
                "objective-1168-2-firemane-ash-tail",
                "objective-1168-1-firemane-scout",
            },
            id = "turnin-1168-army-of-the-black-dragon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1168, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Turn in Overlord Mok'Morokk's Concern to Overlord Mok'Morokk.",
            route = {
                { y = 0.3142, mapID = 1445, label = "Overlord Mok'Morokk", offMapText = "Travel to Overlord Mok'Morokk in Dustwallow Marsh.", x = 0.363 },
            },
            dependsOn = {
                "accept-1166-overlord-mok-morokk-s-concern",
                "objective-1166-2-mok-morokk-s-grog",
                "objective-1166-3-mok-morokk-s-strongbox",
            },
            id = "turnin-1166-overlord-mok-morokk-s-concern",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1166, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Turn in The Brood of Onyxia to Overlord Mok'Morokk.",
            route = {
                { y = 0.3142, mapID = 1445, label = "Overlord Mok'Morokk", offMapText = "Travel to Overlord Mok'Morokk in Dustwallow Marsh.", x = 0.363 },
            },
            dependsOn = { "accept-1170-the-brood-of-onyxia" },
            id = "turnin-1170-the-brood-of-onyxia",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1170, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1169 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.3142, mapID = 1445, label = "Overlord Mok'Morokk", offMapText = "Travel to Overlord Mok'Morokk in Dustwallow Marsh.", x = 0.363 },
            },
            text = "Accept The Brood of Onyxia from Overlord Mok'Morokk.",
            id = "accept-1171-the-brood-of-onyxia",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1171, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1170 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in The Brood of Onyxia to Draz'Zilb.",
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            dependsOn = { "accept-1171-the-brood-of-onyxia" },
            id = "turnin-1171-the-brood-of-onyxia",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1171, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1170 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Turn in Marg Speaks to Nazeer Bloodpike.",
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            dependsOn = { "objective-1261-1-muckshell-razorclaw" },
            id = "turnin-1261-marg-speaks",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1261, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1240 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            text = "Accept Report to Zor from Nazeer Bloodpike.",
            id = "accept-1262-report-to-zor",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1262, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Report to Zor to Zor Lonetree.",
            route = {
                { y = 0.3838, mapID = 1454, label = "Zor Lonetree", offMapText = "Travel to Zor Lonetree in Orgrimmar.", x = 0.3893 },
            },
            dependsOn = { "accept-1262-report-to-zor" },
            id = "turnin-1262-report-to-zor",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1262, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.3838, mapID = 1454, label = "Zor Lonetree", offMapText = "Travel to Zor Lonetree in Orgrimmar.", x = 0.3893 },
            },
            text = "Accept Service to the Horde from Zor Lonetree.",
            id = "accept-7541-service-to-the-horde",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7541, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1262 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            route = {
                { y = 0.3422, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7522 },
            },
            text = "Accept A Threat in Feralas from Belgrom Rockmaul.",
            id = "accept-2981-a-threat-in-feralas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2981, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
