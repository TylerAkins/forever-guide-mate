local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Silverpine Forest",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-silverpine-forest",
    conditions = {
        all = {
            { faction = "Horde" },
            { race = 5 },
            {
                level = { min = 13 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-hunter-accept-6062-taming-the-beast",
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
            checkpointQuest = 6062,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6062-taming-the-beast",
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
            priority = 30,
            id = "woven-class-hunter-objective-6062-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6062-taming-the-beast" },
            classAction = "objective-6062-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6062-taming-the-beast", "woven-class-hunter-objective-6062-quest-work" },
            id = "woven-class-hunter-turnin-6062-taming-the-beast",
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
            priority = 50,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6083-taming-the-beast",
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
            priority = 60,
            id = "woven-class-hunter-objective-6083-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6083-taming-the-beast" },
            classAction = "objective-6083-quest-work",
        },
        {
            priority = 70,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6083-taming-the-beast", "woven-class-hunter-objective-6083-quest-work" },
            id = "woven-class-hunter-turnin-6083-taming-the-beast",
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
            priority = 80,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6082-taming-the-beast",
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
            priority = 90,
            id = "woven-class-hunter-objective-6082-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6082-taming-the-beast" },
            classAction = "objective-6082-quest-work",
        },
        {
            priority = 100,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6082-taming-the-beast", "woven-class-hunter-objective-6082-quest-work" },
            id = "woven-class-hunter-turnin-6082-taming-the-beast",
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
            priority = 110,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6081-training-the-beast",
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
            priority = 120,
            route = {
                { y = 0.182, mapID = 1454, label = "Ormak Grimshot", x = 0.662, offMapText = "Travel to Ormak Grimshot in Orgrimmar." },
            },
            dependsOn = { "woven-class-hunter-accept-6081-training-the-beast" },
            id = "woven-class-hunter-turnin-6081-training-the-beast",
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
            priority = 130,
            route = {
                { y = 0.878, mapID = 1456, label = "Kary Thunderhorn", x = 0.582, offMapText = "Travel to Kary Thunderhorn in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6070-the-hunters-path",
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
            priority = 140,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6070-the-hunters-path" },
            id = "woven-class-hunter-turnin-6070-the-hunters-path",
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
            priority = 150,
            route = {
                { y = 0.742, mapID = 1411, label = "Kali Remik", x = 0.562, offMapText = "Travel to Kali Remik in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6069-the-hunters-path",
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
            priority = 160,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6069-the-hunters-path" },
            id = "woven-class-hunter-turnin-6069-the-hunters-path",
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
            priority = 170,
            route = {
                { y = 0.178, mapID = 1454, label = "Sian'dur", x = 0.678, offMapText = "Travel to Sian'dur in Orgrimmar." },
            },
            id = "woven-class-hunter-accept-6068-the-hunters-path",
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
            priority = 180,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-6068-the-hunters-path" },
            id = "woven-class-hunter-turnin-6068-the-hunters-path",
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
            id = "level-before-woven-class-hunter-accept-6061-taming-the-beast",
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
            checkpointQuest = 6061,
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6061-taming-the-beast",
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
            priority = 210,
            id = "woven-class-hunter-objective-6061-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6061-taming-the-beast" },
            classAction = "objective-6061-quest-work",
        },
        {
            priority = 220,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6061-taming-the-beast", "woven-class-hunter-objective-6061-quest-work" },
            id = "woven-class-hunter-turnin-6061-taming-the-beast",
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
            priority = 230,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6087-taming-the-beast",
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
            priority = 240,
            id = "woven-class-hunter-objective-6087-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6087-taming-the-beast" },
            classAction = "objective-6087-quest-work",
        },
        {
            priority = 250,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6087-taming-the-beast", "woven-class-hunter-objective-6087-quest-work" },
            id = "woven-class-hunter-turnin-6087-taming-the-beast",
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
            priority = 260,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6088-taming-the-beast",
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
            priority = 270,
            id = "woven-class-hunter-objective-6088-quest-work",
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
            dependsOn = { "woven-class-hunter-accept-6088-taming-the-beast" },
            classAction = "objective-6088-quest-work",
        },
        {
            priority = 280,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6088-taming-the-beast", "woven-class-hunter-objective-6088-quest-work" },
            id = "woven-class-hunter-turnin-6088-taming-the-beast",
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
            priority = 290,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6089-training-the-beast",
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
            priority = 300,
            route = {
                { y = 0.892, mapID = 1456, label = "Holt Thunderhorn", x = 0.574, offMapText = "Travel to Holt Thunderhorn in Thunder Bluff." },
            },
            dependsOn = { "woven-class-hunter-accept-6089-training-the-beast" },
            id = "woven-class-hunter-turnin-6089-training-the-beast",
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
            priority = 310,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6067-the-hunters-path",
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
            priority = 320,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6067-the-hunters-path" },
            id = "woven-class-hunter-turnin-6067-the-hunters-path",
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
            priority = 330,
            route = {
                { y = 0.178, mapID = 1454, label = "Sian'dur", x = 0.678, offMapText = "Travel to Sian'dur in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6066-the-hunters-path",
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
            priority = 340,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6066-the-hunters-path" },
            id = "woven-class-hunter-turnin-6066-the-hunters-path",
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
            priority = 350,
            route = {
                { y = 0.878, mapID = 1456, label = "Kary Thunderhorn", x = 0.582, offMapText = "Travel to Kary Thunderhorn in Thunder Bluff." },
            },
            id = "woven-class-hunter-accept-6065-the-hunters-path",
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
            priority = 360,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-6065-the-hunters-path" },
            id = "woven-class-hunter-turnin-6065-the-hunters-path",
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
            id = "level-before-woven-class-hunter-accept-94978-taming-the-beast",
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
            checkpointQuest = 94978,
            priority = 370,
        },
        {
            priority = 380,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94978-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94978-taming-the-beast",
        },
        {
            priority = 390,
            id = "woven-class-hunter-objective-94978-quest-work",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94978-taming-the-beast" },
            classAction = "objective-94978-quest-work",
        },
        {
            priority = 400,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94978-taming-the-beast", "woven-class-hunter-objective-94978-quest-work" },
            id = "woven-class-hunter-turnin-94978-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94978-taming-the-beast",
        },
        {
            priority = 410,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94979-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94979-taming-the-beast",
        },
        {
            priority = 420,
            id = "woven-class-hunter-objective-94979-quest-work",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94979-taming-the-beast" },
            classAction = "objective-94979-quest-work",
        },
        {
            priority = 430,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94979-taming-the-beast", "woven-class-hunter-objective-94979-quest-work" },
            id = "woven-class-hunter-turnin-94979-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94979-taming-the-beast",
        },
        {
            priority = 440,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94013-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94013-taming-the-beast",
        },
        {
            priority = 450,
            id = "woven-class-hunter-objective-94013-quest-work",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94013-taming-the-beast" },
            classAction = "objective-94013-quest-work",
        },
        {
            priority = 460,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94013-taming-the-beast", "woven-class-hunter-objective-94013-quest-work" },
            id = "woven-class-hunter-turnin-94013-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94013-taming-the-beast",
        },
        {
            priority = 470,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94050-training-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94050-training-the-beast",
        },
        {
            priority = 480,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'dora Quickgale", x = 0.596, offMapText = "Travel to Quel'dora Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94050-training-the-beast" },
            id = "woven-class-hunter-turnin-94050-training-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94050-training-the-beast",
        },
        {
            priority = 490,
            route = {
                { y = 0.442, mapID = 2521, label = "Elayaa Easewind", x = 0.452, offMapText = "Travel to Elayaa Easewind in Zephras Isle." },
            },
            id = "woven-class-hunter-accept-94007-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94007-taming-the-beast",
        },
        {
            priority = 500,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94007-taming-the-beast" },
            id = "woven-class-hunter-turnin-94007-taming-the-beast",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94007-taming-the-beast",
        },
        {
            id = "level-before-woven-class-warlock-accept-1501-creature-of-the-void",
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
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1501-creature-of-the-void",
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
            priority = 530,
            id = "woven-class-warlock-objective-1501-quest-work",
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
            dependsOn = { "woven-class-warlock-accept-1501-creature-of-the-void" },
            classAction = "objective-1501-quest-work",
        },
        {
            priority = 540,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-1501-creature-of-the-void", "woven-class-warlock-objective-1501-quest-work" },
            id = "woven-class-warlock-turnin-1501-creature-of-the-void",
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
            priority = 550,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1504-the-binding",
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
            priority = 560,
            id = "woven-class-warlock-objective-1504-quest-work",
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
            dependsOn = { "woven-class-warlock-accept-1504-the-binding" },
            classAction = "objective-1504-quest-work",
        },
        {
            priority = 570,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-1504-the-binding", "woven-class-warlock-objective-1504-quest-work" },
            id = "woven-class-warlock-turnin-1504-the-binding",
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
            id = "level-before-woven-class-warlock-accept-1506-ganruls-summons",
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
            checkpointQuest = 1506,
            priority = 580,
        },
        {
            priority = 590,
            route = {
                { y = 0.412, mapID = 1411, label = "Ophek", x = 0.542, offMapText = "Travel to Ophek in Durotar." },
            },
            id = "woven-class-warlock-accept-1506-ganruls-summons",
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
            priority = 600,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "woven-class-warlock-accept-1506-ganruls-summons" },
            id = "woven-class-warlock-turnin-1506-ganruls-summons",
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
            id = "level-before-woven-class-warlock-accept-1473-creature-of-the-void",
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
            priority = 610,
        },
        {
            priority = 620,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1473-creature-of-the-void",
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
            priority = 630,
            route = {
                { mapID = 1420, x = 0.5106, y = 0.6757, label = "Egalin's Grimoire", offMapText = "Travel to Egalin's Grimoire." },
            },
            id = "woven-class-warlock-objective-1473-quest-work",
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
            dependsOn = { "woven-class-warlock-accept-1473-creature-of-the-void" },
            classAction = "objective-1473-quest-work",
        },
        {
            priority = 640,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1473-creature-of-the-void", "woven-class-warlock-objective-1473-quest-work" },
            id = "woven-class-warlock-turnin-1473-creature-of-the-void",
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
            priority = 650,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1471-the-binding",
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
            priority = 660,
            route = {
                { mapID = 1458, x = 0.8662000000000001, y = 0.271, label = "Summoned Voidwalker", offMapText = "Travel to Summoned Voidwalker." },
            },
            id = "woven-class-warlock-objective-1471-quest-work",
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
            dependsOn = { "woven-class-warlock-accept-1471-the-binding" },
            classAction = "objective-1471-quest-work",
        },
        {
            priority = 670,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1471-the-binding", "woven-class-warlock-objective-1471-quest-work" },
            id = "woven-class-warlock-turnin-1471-the-binding",
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
            priority = 680,
            route = {
                { y = 0.526, mapID = 1420, label = "Ageron Kargal", x = 0.616, offMapText = "Travel to Ageron Kargal in Tirisfal Glades." },
            },
            id = "woven-class-warlock-accept-1478-halgars-summons",
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
            priority = 690,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1478-halgars-summons" },
            id = "woven-class-warlock-turnin-1478-halgars-summons",
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
            priority = 700,
            route = {
                { y = 0.662, mapID = 1420, label = "Venya Marthand", x = 0.31, offMapText = "Travel to Venya Marthand in Tirisfal Glades." },
            },
            id = "woven-class-warlock-accept-1470-piercing-the-veil",
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
            priority = 710,
            route = {
                { y = 0.632, mapID = 1420, label = "Rattlecage Skeleton", x = 0.33, offMapText = "Travel to Rattlecage Skeleton in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warlock-accept-1470-piercing-the-veil" },
            id = "woven-class-warlock-objective-1470-piercing-the-veil",
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
            priority = 720,
            route = {
                { y = 0.662, mapID = 1420, label = "Venya Marthand", x = 0.31, offMapText = "Travel to Venya Marthand in Tirisfal Glades." },
            },
            dependsOn = {
                "woven-class-warlock-accept-1470-piercing-the-veil",
                "woven-class-warlock-objective-1470-piercing-the-veil",
            },
            id = "woven-class-warlock-turnin-1470-piercing-the-veil",
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
            priority = 730,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            id = "woven-class-warlock-accept-1485-vile-familiars",
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
            priority = 740,
            route = {
                { y = 0.55, mapID = 1411, label = "Vile Familiar", x = 0.452, offMapText = "Travel to Vile Familiar in Durotar." },
            },
            dependsOn = { "woven-class-warlock-accept-1485-vile-familiars" },
            id = "woven-class-warlock-objective-1485-vile-familiars",
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
            priority = 750,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            dependsOn = { "woven-class-warlock-accept-1485-vile-familiars", "woven-class-warlock-objective-1485-vile-familiars" },
            id = "woven-class-warlock-turnin-1485-vile-familiars",
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
            priority = 760,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1499-vile-familiars",
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
            priority = 770,
            route = {
                { y = 0.69, mapID = 1411, label = "Zureetha Fargaze", x = 0.428, offMapText = "Travel to Zureetha Fargaze in Durotar." },
            },
            dependsOn = { "woven-class-warlock-accept-1499-vile-familiars" },
            id = "woven-class-warlock-turnin-1499-vile-familiars",
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
            priority = 780,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-warlock-accept-98575-tainted-tablet",
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
            priority = 790,
            route = {
                { y = 0.684, mapID = 1411, label = "Nartok", x = 0.406, offMapText = "Travel to Nartok in Durotar." },
            },
            dependsOn = { "woven-class-warlock-accept-98575-tainted-tablet" },
            id = "woven-class-warlock-turnin-98575-tainted-tablet",
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
            id = "level-before-woven-class-priest-accept-5663-touch-of-weakness",
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
            checkpointQuest = 5663,
            alternativeQuests = { 5658, 5660, 5661, 5662 },
            priority = 800,
        },
        {
            priority = 810,
            route = {
                { y = 0.154, mapID = 1456, label = "Miles Welsh", x = 0.254, offMapText = "Travel to Miles Welsh in Thunder Bluff." },
            },
            id = "woven-class-priest-accept-5663-touch-of-weakness",
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
            priority = 820,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5663-touch-of-weakness" },
            id = "woven-class-priest-turnin-5663-touch-of-weakness",
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
            priority = 830,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "woven-class-priest-accept-5662-touch-of-weakness",
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
            priority = 840,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5662-touch-of-weakness" },
            id = "woven-class-priest-turnin-5662-touch-of-weakness",
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
            priority = 850,
            route = {
                { y = 0.588, mapID = 1412, label = "Var'jun", x = 0.47, offMapText = "Travel to Var'jun in Mulgore." },
            },
            id = "woven-class-priest-accept-5661-touch-of-weakness",
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
            priority = 860,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5661-touch-of-weakness" },
            id = "woven-class-priest-turnin-5661-touch-of-weakness",
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
            priority = 870,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            id = "woven-class-priest-accept-5660-touch-of-weakness",
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
            priority = 880,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "woven-class-priest-accept-5660-touch-of-weakness" },
            id = "woven-class-priest-turnin-5660-touch-of-weakness",
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
            id = "level-before-woven-class-priest-accept-5657-hex-of-weakness",
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
            checkpointQuest = 5657,
            alternativeQuests = { 5652, 5654, 5655, 5656 },
            priority = 890,
        },
        {
            priority = 900,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "woven-class-priest-accept-5657-hex-of-weakness",
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
            priority = 910,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "woven-class-priest-accept-5657-hex-of-weakness" },
            id = "woven-class-priest-turnin-5657-hex-of-weakness",
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
            priority = 920,
            route = {
                { y = 0.588, mapID = 1412, label = "Var'jun", x = 0.47, offMapText = "Travel to Var'jun in Mulgore." },
            },
            id = "woven-class-priest-accept-5655-hex-of-weakness",
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
            priority = 930,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "woven-class-priest-accept-5655-hex-of-weakness" },
            id = "woven-class-priest-turnin-5655-hex-of-weakness",
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
            priority = 940,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            id = "woven-class-priest-accept-5654-hex-of-weakness",
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
            priority = 950,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "woven-class-priest-accept-5654-hex-of-weakness" },
            id = "woven-class-priest-turnin-5654-hex-of-weakness",
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
            priority = 960,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-5650-garments-of-darkness",
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
            priority = 970,
            id = "woven-class-priest-objective-5650-quest-work",
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
            dependsOn = { "woven-class-priest-accept-5650-garments-of-darkness" },
            classAction = "objective-5650-quest-work",
        },
        {
            priority = 980,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-priest-accept-5650-garments-of-darkness", "woven-class-priest-objective-5650-quest-work" },
            id = "woven-class-priest-turnin-5650-garments-of-darkness",
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
            priority = 990,
            route = {
                { y = 0.66, mapID = 1420, label = "Dark Cleric Duesten", x = 0.31, offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades." },
            },
            id = "woven-class-priest-accept-5651-in-favor-of-darkness",
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
            priority = 1000,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-priest-accept-5651-in-favor-of-darkness" },
            id = "woven-class-priest-turnin-5651-in-favor-of-darkness",
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
            priority = 1010,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-5648-garments-of-spirituality",
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
            priority = 1020,
            id = "woven-class-priest-objective-5648-quest-work",
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
            dependsOn = { "woven-class-priest-accept-5648-garments-of-spirituality" },
            classAction = "objective-5648-quest-work",
        },
        {
            priority = 1030,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = { "woven-class-priest-accept-5648-garments-of-spirituality", "woven-class-priest-objective-5648-quest-work" },
            id = "woven-class-priest-turnin-5648-garments-of-spirituality",
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
            priority = 1040,
            route = {
                { y = 0.688, mapID = 1411, label = "Ken'jai", x = 0.424, offMapText = "Travel to Ken'jai in Durotar." },
            },
            id = "woven-class-priest-accept-5649-in-favor-of-spirituality",
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
            priority = 1050,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = { "woven-class-priest-accept-5649-in-favor-of-spirituality" },
            id = "woven-class-priest-turnin-5649-in-favor-of-spirituality",
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
            id = "level-before-woven-class-rogue-accept-1885-mennet-carkad",
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
            priority = 1060,
        },
        {
            priority = 1070,
            route = {
                { y = 0.52, mapID = 1420, label = "Marion Call", x = 0.616, offMapText = "Travel to Marion Call in Tirisfal Glades." },
            },
            id = "woven-class-rogue-accept-1885-mennet-carkad",
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
            priority = 1080,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "woven-class-rogue-accept-1885-mennet-carkad" },
            id = "woven-class-rogue-turnin-1885-mennet-carkad",
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
            id = "level-before-woven-class-shaman-accept-call-of-earth",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 3 },
            },
            requiredLevel = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92466,
            alternativeQuests = { 1516, 1519 },
            priority = 1090,
        },
        {
            priority = 1100,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth",
        },
        {
            priority = 1110,
            route = {
                { y = 0.18, mapID = 2521, label = "Al'Aketh Converts at the standing stones", offMapText = "Travel to Zephras Isle.", x = 0.464 },
            },
            dependsOn = { "woven-class-shaman-accept-call-of-earth" },
            id = "woven-class-shaman-objective-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-call-of-earth",
        },
        {
            priority = 1120,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "woven-class-shaman-accept-call-of-earth", "woven-class-shaman-objective-call-of-earth" },
            id = "woven-class-shaman-turnin-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth",
        },
        {
            id = "level-before-woven-class-shaman-accept-1524-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            checkpointQuest = 1524,
            priority = 1130,
        },
        {
            priority = 1140,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1524-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1524-call-of-fire",
        },
        {
            priority = 1150,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1524-call-of-fire" },
            id = "woven-class-shaman-turnin-1524-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1524-call-of-fire",
        },
        {
            priority = 1160,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1525-call-of-fire",
        },
        {
            priority = 1170,
            dependsOn = { "woven-class-shaman-accept-1525-call-of-fire" },
            id = "woven-class-shaman-objective-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "objective-1525-call-of-fire",
        },
        {
            priority = 1180,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1525-call-of-fire", "woven-class-shaman-objective-1525-call-of-fire" },
            id = "woven-class-shaman-turnin-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1525-call-of-fire",
        },
        {
            priority = 1190,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1526-call-of-fire",
        },
        {
            priority = 1200,
            route = {
                { mapID = 1411, x = 0.3872, y = 0.5829, label = "Minor Manifestation of Fire", offMapText = "Travel to Minor Manifestation of Fire." },
            },
            dependsOn = { "woven-class-shaman-accept-1526-call-of-fire" },
            id = "woven-class-shaman-objective-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "objective-1526-call-of-fire",
        },
        {
            priority = 1210,
            route = {
                { y = 0.582, mapID = 1411, label = "Brazier of the Dormant Flame", x = 0.389, offMapText = "Travel to Brazier of the Dormant Flame in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1526-call-of-fire", "woven-class-shaman-objective-1526-call-of-fire" },
            id = "woven-class-shaman-turnin-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1526-call-of-fire",
        },
        {
            priority = 1220,
            route = {
                { y = 0.582, mapID = 1411, label = "Brazier of the Dormant Flame", x = 0.389, offMapText = "Travel to Brazier of the Dormant Flame in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1527-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1527-call-of-fire",
        },
        {
            priority = 1230,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-1527-call-of-fire" },
            id = "woven-class-shaman-turnin-1527-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1527-call-of-fire",
        },
        {
            priority = 1240,
            route = {
                { y = 0.592, mapID = 1412, label = "Narm Skychaser", x = 0.484, offMapText = "Travel to Narm Skychaser in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-2984-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-2984-call-of-fire",
        },
        {
            priority = 1250,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-2984-call-of-fire" },
            id = "woven-class-shaman-turnin-2984-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-2984-call-of-fire",
        },
        {
            priority = 1260,
            route = {
                { y = 0.426, mapID = 1411, label = "Swart", x = 0.544, offMapText = "Travel to Swart in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-2983-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-2983-call-of-fire",
        },
        {
            priority = 1270,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-2983-call-of-fire" },
            id = "woven-class-shaman-turnin-2983-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-2983-call-of-fire",
        },
        {
            priority = 1280,
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1523-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1523-call-of-fire",
        },
        {
            priority = 1290,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-1523-call-of-fire" },
            id = "woven-class-shaman-turnin-1523-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1523-call-of-fire",
        },
        {
            priority = 1300,
            route = {
                { y = 0.374, mapID = 1454, label = "Searn Firewarder", x = 0.378, offMapText = "Travel to Searn Firewarder in Orgrimmar." },
            },
            id = "woven-class-shaman-accept-1522-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-1522-call-of-fire",
        },
        {
            priority = 1310,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "woven-class-shaman-accept-1522-call-of-fire" },
            id = "woven-class-shaman-turnin-1522-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-1522-call-of-fire",
        },
        {
            id = "level-before-woven-class-shaman-accept-97243-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            checkpointQuest = 97243,
            priority = 1320,
        },
        {
            priority = 1330,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", x = 0.582, offMapText = "Travel to Sessaria Skystride in Zephras Isle." },
                { y = 0.448, mapID = 2521, label = "Aarnor Galestrike", x = 0.434, offMapText = "Travel to Aarnor Galestrike in Zephras Isle." },
            },
            id = "woven-class-shaman-accept-97243-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-97243-call-of-fire",
        },
        {
            priority = 1340,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "woven-class-shaman-accept-97243-call-of-fire" },
            id = "woven-class-shaman-turnin-97243-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-97243-call-of-fire",
        },
        {
            priority = 1350,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-97244-call-of-fire",
        },
        {
            priority = 1360,
            route = {
                { y = 0.638, mapID = 2521, label = "Skypriest Faladiel", x = 0.644, offMapText = "Travel to Skypriest Faladiel in Zephras Isle." },
            },
            dependsOn = { "woven-class-shaman-accept-97244-call-of-fire" },
            id = "woven-class-shaman-objective-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "objective-97244-call-of-fire",
        },
        {
            priority = 1370,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "woven-class-shaman-accept-97244-call-of-fire", "woven-class-shaman-objective-97244-call-of-fire" },
            id = "woven-class-shaman-turnin-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-97244-call-of-fire",
        },
        {
            priority = 1380,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-97245-call-of-fire",
        },
        {
            priority = 1390,
            route = {
                { y = 0.69, mapID = 2521, label = "Kuramaa", x = 0.424, offMapText = "Travel to Kuramaa in Zephras Isle." },
            },
            dependsOn = { "woven-class-shaman-accept-97245-call-of-fire" },
            id = "woven-class-shaman-objective-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "objective-97245-call-of-fire",
        },
        {
            priority = 1400,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "woven-class-shaman-accept-97245-call-of-fire", "woven-class-shaman-objective-97245-call-of-fire" },
            id = "woven-class-shaman-turnin-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-97245-call-of-fire",
        },
        {
            priority = 1410,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-97257-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-97257-call-of-fire",
        },
        {
            priority = 1420,
            id = "woven-class-shaman-objective-97257-quest-work-ritual",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            dependsOn = { "woven-class-shaman-accept-97257-call-of-fire" },
            route = {
                { mapID = 2521, x = 0.512, y = 0.859, label = "Brazier of Offering", offMapText = "Travel to Brazier of Offering on Zephras Isle." },
            },
            classAction = "objective-97257-quest-work-ritual",
        },
        {
            priority = 1430,
            id = "woven-class-shaman-objective-97257-quest-work-deliver-flame",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            dependsOn = { "woven-class-shaman-accept-97257-call-of-fire" },
            route = {
                { mapID = 2521, x = 0.5835, y = 0.7884, label = "Brazier of Eternal Flame", offMapText = "Travel to Brazier of Eternal Flame on Zephras Isle." },
            },
            classAction = "objective-97257-quest-work-deliver-flame",
        },
        {
            priority = 1440,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", x = 0.582, offMapText = "Travel to Sessaria Skystride in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-shaman-accept-97257-call-of-fire",
                "woven-class-shaman-objective-97257-quest-work-ritual",
                "woven-class-shaman-objective-97257-quest-work-deliver-flame",
            },
            id = "woven-class-shaman-turnin-97257-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-97257-call-of-fire",
        },
        {
            id = "level-before-woven-class-shaman-accept-76240-stalk-with-the-earthmother",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 76240,
            priority = 1450,
        },
        {
            priority = 1460,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            id = "woven-class-shaman-accept-76240-stalk-with-the-earthmother",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-76240-stalk-with-the-earthmother",
        },
        {
            priority = 1470,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-shaman-accept-76240-stalk-with-the-earthmother" },
            id = "woven-class-shaman-objective-76240-stalk-with-the-earthmother-1",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-76240-stalk-with-the-earthmother-1",
        },
        {
            priority = 1480,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = {
                "woven-class-shaman-accept-76240-stalk-with-the-earthmother",
                "woven-class-shaman-objective-76240-stalk-with-the-earthmother-1",
            },
            id = "woven-class-shaman-turnin-76240-stalk-with-the-earthmother",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-76240-stalk-with-the-earthmother",
        },
        {
            id = "level-before-woven-class-shaman-accept-1516-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
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
            checkpointQuest = 1516,
            alternativeQuests = { 1519, 92466 },
            priority = 1490,
        },
        {
            priority = 1500,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            id = "woven-class-shaman-accept-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1516-call-of-earth",
        },
        {
            priority = 1510,
            route = {
                { y = 0.55, mapID = 1411, label = "Felstalker", x = 0.452, offMapText = "Travel to Felstalker in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1516-call-of-earth" },
            id = "woven-class-shaman-objective-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1516-call-of-earth",
        },
        {
            priority = 1520,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1516-call-of-earth", "woven-class-shaman-objective-1516-call-of-earth" },
            id = "woven-class-shaman-turnin-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1516-call-of-earth",
        },
        {
            id = "level-before-woven-class-shaman-accept-1519-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1519,
            alternativeQuests = { 1516, 92466 },
            priority = 1530,
        },
        {
            priority = 1540,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            id = "woven-class-shaman-accept-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1519-call-of-earth",
        },
        {
            priority = 1550,
            route = {
                { y = 0.778, mapID = 1412, label = "Bristleback Shaman", x = 0.646, offMapText = "Travel to Bristleback Shaman in Mulgore." },
            },
            dependsOn = { "woven-class-shaman-accept-1519-call-of-earth" },
            id = "woven-class-shaman-objective-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1519-call-of-earth",
        },
        {
            priority = 1560,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = { "woven-class-shaman-accept-1519-call-of-earth", "woven-class-shaman-objective-1519-call-of-earth" },
            id = "woven-class-shaman-turnin-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1519-call-of-earth",
        },
        {
            priority = 1570,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92467",
        },
        {
            priority = 1580,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            id = "woven-class-shaman-objective-92467-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-shaman-accept-call-of-earth-92467" },
            classAction = "objective-92467-earth-sapta",
        },
        {
            priority = 1590,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = { "woven-class-shaman-accept-call-of-earth-92467", "woven-class-shaman-objective-92467-earth-sapta" },
            id = "woven-class-shaman-turnin-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92467",
        },
        {
            priority = 1600,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92468",
        },
        {
            priority = 1610,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "woven-class-shaman-accept-call-of-earth-92468" },
            id = "woven-class-shaman-turnin-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92468",
        },
        {
            priority = 1620,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1517-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1517-call-of-earth",
        },
        {
            priority = 1630,
            route = {
                {
                    y = 0.76,
                    mapID = 1411,
                    label = "Minor Manifestation of Earth",
                    x = 0.44,
                    offMapText = "Travel to Minor Manifestation of Earth in Durotar.",
                    complete = {
                        map = { 1412 },
                    },
                },
                { y = 0.804, mapID = 1412, label = "Minor Manifestation of Earth", x = 0.538, offMapText = "Travel to Minor Manifestation of Earth in Mulgore." },
            },
            id = "woven-class-shaman-objective-1517-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-shaman-accept-1517-call-of-earth" },
            classAction = "objective-1517-earth-sapta",
        },
        {
            priority = 1640,
            route = {
                { y = 0.76, mapID = 1411, label = "Minor Manifestation of Earth", x = 0.44, offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1517-call-of-earth", "woven-class-shaman-objective-1517-earth-sapta" },
            id = "woven-class-shaman-turnin-1517-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1517-call-of-earth",
        },
        {
            priority = 1650,
            route = {
                { y = 0.76, mapID = 1411, label = "Minor Manifestation of Earth", x = 0.44, offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1518-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1518-call-of-earth",
        },
        {
            priority = 1660,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-1518-call-of-earth" },
            id = "woven-class-shaman-turnin-1518-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1518-call-of-earth",
        },
        {
            priority = 1670,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1520-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1520-call-of-earth",
        },
        {
            priority = 1680,
            route = {
                {
                    y = 0.76,
                    mapID = 1411,
                    label = "Minor Manifestation of Earth",
                    x = 0.44,
                    offMapText = "Travel to Minor Manifestation of Earth in Durotar.",
                    complete = {
                        map = { 1412 },
                    },
                },
                { y = 0.804, mapID = 1412, label = "Minor Manifestation of Earth", x = 0.538, offMapText = "Travel to Minor Manifestation of Earth in Mulgore." },
            },
            id = "woven-class-shaman-objective-1520-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-shaman-accept-1520-call-of-earth" },
            classAction = "objective-1520-earth-sapta",
        },
        {
            priority = 1690,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            dependsOn = { "woven-class-shaman-accept-1520-call-of-earth", "woven-class-shaman-objective-1520-earth-sapta" },
            id = "woven-class-shaman-turnin-1520-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1520-call-of-earth",
        },
        {
            priority = 1700,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-1521-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1521-call-of-earth",
        },
        {
            priority = 1710,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = { "woven-class-shaman-accept-1521-call-of-earth" },
            id = "woven-class-shaman-turnin-1521-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1521-call-of-earth",
        },
        {
            id = "level-before-woven-class-warrior-accept-1819-ulag-the-cleaver",
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
            checkpointQuest = 1819,
            alternativeQuests = { 1498 },
            priority = 1720,
        },
        {
            priority = 1730,
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1819-ulag-the-cleaver",
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
            priority = 1740,
            route = {
                { mapID = 1420, x = 0.5916, y = 0.4851, label = "Ulag the Cleaver", offMapText = "Travel to Ulag the Cleaver." },
            },
            id = "woven-class-warrior-objective-1819-quest-work",
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
            dependsOn = { "woven-class-warrior-accept-1819-ulag-the-cleaver" },
            classAction = "objective-1819-quest-work",
        },
        {
            priority = 1750,
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-1819-ulag-the-cleaver", "woven-class-warrior-objective-1819-quest-work" },
            id = "woven-class-warrior-turnin-1819-ulag-the-cleaver",
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
            priority = 1760,
            route = {
                { y = 0.524, mapID = 1420, label = "Austil de Mon", x = 0.618, offMapText = "Travel to Austil de Mon in Tirisfal Glades." },
            },
            id = "woven-class-warrior-accept-1818-speak-with-dillinger",
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
            priority = 1770,
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-1818-speak-with-dillinger" },
            id = "woven-class-warrior-turnin-1818-speak-with-dillinger",
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
            id = "level-before-woven-class-warrior-accept-1498-path-of-defense",
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
            checkpointQuest = 1498,
            alternativeQuests = { 1819 },
            priority = 1780,
        },
        {
            priority = 1790,
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1498-path-of-defense",
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
            priority = 1800,
            id = "woven-class-warrior-objective-1498-quest-work",
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
            dependsOn = { "woven-class-warrior-accept-1498-path-of-defense" },
            classAction = "objective-1498-quest-work",
        },
        {
            priority = 1810,
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1498-path-of-defense", "woven-class-warrior-objective-1498-quest-work" },
            id = "woven-class-warrior-turnin-1498-path-of-defense",
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
            priority = 1820,
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1821-agamand-heirlooms",
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
            priority = 1830,
            id = "woven-class-warrior-objective-1821-quest-work",
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
            dependsOn = { "woven-class-warrior-accept-1821-agamand-heirlooms" },
            classAction = "objective-1821-quest-work",
        },
        {
            priority = 1840,
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-1821-agamand-heirlooms", "woven-class-warrior-objective-1821-quest-work" },
            id = "woven-class-warrior-turnin-1821-agamand-heirlooms",
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
            priority = 1850,
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            id = "woven-class-warrior-accept-1822-heirloom-weapon",
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
            priority = 1860,
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-1822-heirloom-weapon" },
            id = "woven-class-warrior-turnin-1822-heirloom-weapon",
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
            priority = 1870,
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1820-speak-with-coleman",
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
            priority = 1880,
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-1820-speak-with-coleman" },
            id = "woven-class-warrior-turnin-1820-speak-with-coleman",
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
            priority = 1890,
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1502-thungrim-firegaze",
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
            priority = 1900,
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1502-thungrim-firegaze" },
            id = "woven-class-warrior-turnin-1502-thungrim-firegaze",
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
            priority = 1910,
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1503-forged-steel",
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
            priority = 1920,
            id = "woven-class-warrior-objective-1503-quest-work",
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
            dependsOn = { "woven-class-warrior-accept-1503-forged-steel" },
            classAction = "objective-1503-quest-work",
        },
        {
            priority = 1930,
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1503-forged-steel", "woven-class-warrior-objective-1503-quest-work" },
            id = "woven-class-warrior-turnin-1503-forged-steel",
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
            priority = 1940,
            route = {
                { y = 0.324, mapID = 1454, label = "Sorek", x = 0.802, offMapText = "Travel to Sorek in Orgrimmar." },
            },
            id = "woven-class-warrior-accept-1505-veteran-uzzek",
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
            priority = 1950,
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "woven-class-warrior-accept-1505-veteran-uzzek" },
            id = "woven-class-warrior-turnin-1505-veteran-uzzek",
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
            id = "level-before-woven-class-warrior-accept-94003-the-skybreaker-bulwark",
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
            priority = 1960,
        },
        {
            priority = 1970,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            id = "woven-class-warrior-accept-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94003-the-skybreaker-bulwark",
        },
        {
            priority = 1980,
            route = {
                { y = 0.504, mapID = 2521, label = "Zaal Stormshield", x = 0.566, offMapText = "Travel to Zaal Stormshield in Zephras Isle." },
            },
            dependsOn = { "woven-class-warrior-accept-94003-the-skybreaker-bulwark" },
            id = "woven-class-warrior-objective-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-94003-the-skybreaker-bulwark",
        },
        {
            priority = 1990,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-warrior-accept-94003-the-skybreaker-bulwark",
                "woven-class-warrior-objective-94003-the-skybreaker-bulwark",
            },
            id = "woven-class-warrior-turnin-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94003-the-skybreaker-bulwark",
        },
        {
            priority = 2000,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            id = "woven-class-mage-accept-788-cutting-teeth",
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
            priority = 2010,
            route = {
                { y = 0.662, mapID = 1411, label = "Mottled Boar", offMapText = "Travel to Mottled Boar.", x = 0.438 },
            },
            dependsOn = { "woven-class-mage-accept-788-cutting-teeth" },
            id = "woven-class-mage-objective-788-1-mottled-boar",
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
            priority = 2020,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            dependsOn = { "woven-class-mage-accept-788-cutting-teeth", "woven-class-mage-objective-788-1-mottled-boar" },
            id = "woven-class-mage-turnin-788-cutting-teeth",
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
            priority = 2030,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-hunter-accept-3087-etched-parchment",
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
            priority = 2040,
            route = {
                { y = 0.692, mapID = 1411, label = "Jen'shan", x = 0.428, offMapText = "Travel to Jen'shan in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-3087-etched-parchment" },
            id = "woven-class-hunter-turnin-3087-etched-parchment",
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
            priority = 2050,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-hunter-accept-3082-etched-tablet",
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
            priority = 2060,
            route = {
                { y = 0.692, mapID = 1411, label = "Jen'shan", x = 0.428, offMapText = "Travel to Jen'shan in Durotar." },
            },
            dependsOn = { "woven-class-hunter-accept-3082-etched-tablet" },
            id = "woven-class-hunter-turnin-3082-etched-tablet",
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
            priority = 2070,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-warlock-accept-3090-tainted-parchment",
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
            priority = 2080,
            route = {
                { y = 0.684, mapID = 1411, label = "Nartok", x = 0.406, offMapText = "Travel to Nartok in Durotar." },
            },
            dependsOn = { "woven-class-warlock-accept-3090-tainted-parchment" },
            id = "woven-class-warlock-turnin-3090-tainted-parchment",
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
            priority = 2090,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-priest-accept-3085-hallowed-tablet",
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
            priority = 2100,
            route = {
                { y = 0.688, mapID = 1411, label = "Ken'jai", x = 0.424, offMapText = "Travel to Ken'jai in Durotar." },
            },
            dependsOn = { "woven-class-priest-accept-3085-hallowed-tablet" },
            id = "woven-class-priest-turnin-3085-hallowed-tablet",
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
            priority = 2110,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-rogue-accept-3088-encrypted-parchment",
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
            priority = 2120,
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", x = 0.412, offMapText = "Travel to Rwag in Durotar." },
            },
            dependsOn = { "woven-class-rogue-accept-3088-encrypted-parchment" },
            id = "woven-class-rogue-turnin-3088-encrypted-parchment",
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
            priority = 2130,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-rogue-accept-3083-encrypted-tablet",
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
            priority = 2140,
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", x = 0.412, offMapText = "Travel to Rwag in Durotar." },
            },
            dependsOn = { "woven-class-rogue-accept-3083-encrypted-tablet" },
            id = "woven-class-rogue-turnin-3083-encrypted-tablet",
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
            priority = 2150,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-shaman-accept-3089-rune-inscribed-parchment",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-3089-rune-inscribed-parchment",
        },
        {
            priority = 2160,
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", x = 0.424, offMapText = "Travel to Shikrik in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-3089-rune-inscribed-parchment" },
            id = "woven-class-shaman-turnin-3089-rune-inscribed-parchment",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-3089-rune-inscribed-parchment",
        },
        {
            priority = 2170,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-shaman-accept-3084-rune-inscribed-tablet",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-3084-rune-inscribed-tablet",
        },
        {
            priority = 2180,
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", x = 0.424, offMapText = "Travel to Shikrik in Durotar." },
            },
            dependsOn = { "woven-class-shaman-accept-3084-rune-inscribed-tablet" },
            id = "woven-class-shaman-turnin-3084-rune-inscribed-tablet",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-3084-rune-inscribed-tablet",
        },
        {
            priority = 2190,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-warrior-accept-3065-simple-tablet",
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
            priority = 2200,
            route = {
                { y = 0.694, mapID = 1411, label = "Frang", x = 0.428, offMapText = "Travel to Frang in Durotar." },
            },
            dependsOn = { "woven-class-warrior-accept-3065-simple-tablet" },
            id = "woven-class-warrior-turnin-3065-simple-tablet",
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
            priority = 2210,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-warrior-accept-2383-simple-parchment",
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
            priority = 2220,
            route = {
                { y = 0.694, mapID = 1411, label = "Frang", x = 0.428, offMapText = "Travel to Frang in Durotar." },
            },
            dependsOn = { "woven-class-warrior-accept-2383-simple-parchment" },
            id = "woven-class-warrior-turnin-2383-simple-parchment",
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
            priority = 2230,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-mage-accept-3086-glyphic-tablet",
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
            priority = 2240,
            route = {
                { y = 0.69, mapID = 1411, label = "Mai'ah", x = 0.424, offMapText = "Travel to Mai'ah in Durotar." },
            },
            dependsOn = { "woven-class-mage-accept-3086-glyphic-tablet" },
            id = "woven-class-mage-turnin-3086-glyphic-tablet",
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
            priority = 2250,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            id = "woven-class-mage-accept-364-the-mindless-ones",
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
            priority = 2260,
            route = {
                { mapID = 1420, x = 0.326, y = 0.634, label = "Mindless Zombie", offMapText = "Travel to Mindless Zombie." },
            },
            id = "woven-class-mage-objective-364-1-duskbat",
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
            dependsOn = { "woven-class-mage-accept-364-the-mindless-ones" },
            classAction = "objective-364-1-duskbat",
        },
        {
            id = "woven-class-mage-objective-364-2-wretched-zombie",
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
            priority = 2270,
            useClientPin = false,
            dependsOn = { "woven-class-mage-accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
            priority = 2280,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            dependsOn = {
                "woven-class-mage-accept-364-the-mindless-ones",
                "woven-class-mage-objective-364-1-duskbat",
                "woven-class-mage-objective-364-2-wretched-zombie",
            },
            id = "woven-class-mage-turnin-364-the-mindless-ones",
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
            priority = 2290,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-warlock-accept-3099-tainted-scroll",
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
            priority = 2300,
            route = {
                { y = 0.662, mapID = 1420, label = "Maximillion", x = 0.308, offMapText = "Travel to Maximillion in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warlock-accept-3099-tainted-scroll" },
            id = "woven-class-warlock-turnin-3099-tainted-scroll",
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
            priority = 2310,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-priest-accept-3097-hallowed-scroll",
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
            priority = 2320,
            route = {
                { y = 0.66, mapID = 1420, label = "Dark Cleric Duesten", x = 0.31, offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-priest-accept-3097-hallowed-scroll" },
            id = "woven-class-priest-turnin-3097-hallowed-scroll",
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
            priority = 2330,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-rogue-accept-3096-encrypted-scroll",
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
            priority = 2340,
            route = {
                { y = 0.656, mapID = 1420, label = "David Trias", x = 0.324, offMapText = "Travel to David Trias in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-rogue-accept-3096-encrypted-scroll" },
            id = "woven-class-rogue-turnin-3096-encrypted-scroll",
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
            priority = 2350,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-warrior-accept-3095-simple-scroll",
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
            priority = 2360,
            route = {
                { y = 0.656, mapID = 1420, label = "Dannal Stern", x = 0.326, offMapText = "Travel to Dannal Stern in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-warrior-accept-3095-simple-scroll" },
            id = "woven-class-warrior-turnin-3095-simple-scroll",
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
            priority = 2370,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-mage-accept-3098-glyphic-scroll",
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
            priority = 2380,
            route = {
                { y = 0.66, mapID = 1420, label = "Isabella", x = 0.308, offMapText = "Travel to Isabella in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-mage-accept-3098-glyphic-scroll" },
            id = "woven-class-mage-turnin-3098-glyphic-scroll",
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
            id = "level-before-woven-class-mage-accept-1882-the-balnir-farmstead",
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
            checkpointQuest = 1882,
            alternativeQuests = { 1884 },
            priority = 2390,
        },
        {
            priority = 2400,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1882-the-balnir-farmstead",
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
            priority = 2410,
            route = {
                { mapID = 1420, x = 0.7694, y = 0.6238, label = "Balnir Snapdragons", offMapText = "Travel to Balnir Snapdragons." },
            },
            id = "woven-class-mage-objective-1882-quest-work",
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
            dependsOn = { "woven-class-mage-accept-1882-the-balnir-farmstead" },
            classAction = "objective-1882-quest-work",
        },
        {
            priority = 2420,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "woven-class-mage-accept-1882-the-balnir-farmstead", "woven-class-mage-objective-1882-quest-work" },
            id = "woven-class-mage-turnin-1882-the-balnir-farmstead",
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
            priority = 2430,
            route = {
                { y = 0.524, mapID = 1420, label = "Cain Firesong", x = 0.618, offMapText = "Travel to Cain Firesong in Tirisfal Glades." },
            },
            id = "woven-class-mage-accept-1881-speak-with-anastasia",
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
            priority = 2440,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "woven-class-mage-accept-1881-speak-with-anastasia" },
            id = "woven-class-mage-turnin-1881-speak-with-anastasia",
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
            id = "level-before-woven-class-mage-accept-1884-ju-ju-heaps",
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
            priority = 2450,
        },
        {
            priority = 2460,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1884-ju-ju-heaps",
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
            priority = 2470,
            id = "woven-class-mage-objective-1884-quest-work",
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
            dependsOn = { "woven-class-mage-accept-1884-ju-ju-heaps" },
            classAction = "objective-1884-quest-work",
        },
        {
            priority = 2480,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = { "woven-class-mage-accept-1884-ju-ju-heaps", "woven-class-mage-objective-1884-quest-work" },
            id = "woven-class-mage-turnin-1884-ju-ju-heaps",
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
            priority = 2490,
            route = {
                { y = 0.86, mapID = 1454, label = "Uthel'nay", x = 0.39, offMapText = "Travel to Uthel'nay in Orgrimmar." },
            },
            id = "woven-class-mage-accept-1883-speak-with-unthuwa",
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
            priority = 2500,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = { "woven-class-mage-accept-1883-speak-with-unthuwa" },
            id = "woven-class-mage-turnin-1883-speak-with-unthuwa",
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
            priority = 2510,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "woven-class-mage-accept-98576-glyphic-parchment",
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
            priority = 2520,
            route = {
                { y = 0.69, mapID = 1411, label = "Mai'ah", x = 0.424, offMapText = "Travel to Mai'ah in Durotar." },
            },
            dependsOn = { "woven-class-mage-accept-98576-glyphic-parchment" },
            id = "woven-class-mage-turnin-98576-glyphic-parchment",
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
            priority = 2530,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            id = "woven-class-druid-accept-747-the-hunt-begins",
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
            id = "woven-class-druid-objective-747-1-plainstrider-meat",
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
            priority = 2540,
            useClientPin = false,
            dependsOn = { "woven-class-druid-accept-747-the-hunt-begins" },
            classAction = "objective-747-1-plainstrider-meat",
        },
        {
            id = "woven-class-druid-objective-747-2-plainstrider-feather",
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
            priority = 2550,
            useClientPin = false,
            dependsOn = { "woven-class-druid-accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            priority = 2560,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            dependsOn = {
                "woven-class-druid-accept-747-the-hunt-begins",
                "woven-class-druid-objective-747-1-plainstrider-meat",
                "woven-class-druid-objective-747-2-plainstrider-feather",
            },
            id = "woven-class-druid-turnin-747-the-hunt-begins",
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
            priority = 2570,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "woven-class-hunter-accept-3092-etched-note",
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
            priority = 2580,
            route = {
                { y = 0.758, mapID = 1412, label = "Lanka Farshot", x = 0.442, offMapText = "Travel to Lanka Farshot in Mulgore." },
            },
            dependsOn = { "woven-class-hunter-accept-3092-etched-note" },
            id = "woven-class-hunter-turnin-3092-etched-note",
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
            priority = 2590,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "woven-class-shaman-accept-3093-rune-inscribed-note",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "accept-3093-rune-inscribed-note",
        },
        {
            priority = 2600,
            route = {
                { y = 0.76, mapID = 1412, label = "Meela Dawnstrider", x = 0.45, offMapText = "Travel to Meela Dawnstrider in Mulgore." },
            },
            dependsOn = { "woven-class-shaman-accept-3093-rune-inscribed-note" },
            id = "woven-class-shaman-turnin-3093-rune-inscribed-note",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            classAction = "turnin-3093-rune-inscribed-note",
        },
        {
            priority = 2610,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "woven-class-warrior-accept-3091-simple-note",
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
            priority = 2620,
            route = {
                { y = 0.76, mapID = 1412, label = "Harutt Thunderhorn", x = 0.44, offMapText = "Travel to Harutt Thunderhorn in Mulgore." },
            },
            dependsOn = { "woven-class-warrior-accept-3091-simple-note" },
            id = "woven-class-warrior-turnin-3091-simple-note",
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
            priority = 2630,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "woven-class-druid-accept-3094-verdant-note",
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
            priority = 2640,
            route = {
                { y = 0.76, mapID = 1412, label = "Gart Mistrunner", x = 0.45, offMapText = "Travel to Gart Mistrunner in Mulgore." },
            },
            dependsOn = { "woven-class-druid-accept-3094-verdant-note" },
            id = "woven-class-druid-turnin-3094-verdant-note",
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
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 2650,
            id = "woven-class-druid-accept-coming-of-age",
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
                    { faction = "Horde" },
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
            priority = 2660,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "woven-class-druid-accept-coming-of-age" },
            id = "woven-class-druid-turnin-coming-of-age",
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
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 2670,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            id = "woven-class-druid-accept-92461-harmony-in-balance",
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
                    { faction = "Horde" },
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
            priority = 2680,
            route = {
                { y = 0.256, mapID = 2521, label = "Juvenile Vuldren", x = 0.432, offMapText = "Travel to Juvenile Vuldren in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-92461-harmony-in-balance" },
            id = "woven-class-druid-objective-92461-harmony-in-balance",
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
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 2690,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-druid-accept-92461-harmony-in-balance",
                "woven-class-druid-objective-92461-harmony-in-balance",
            },
            id = "woven-class-druid-turnin-92461-harmony-in-balance",
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
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
            id = "level-before-woven-class-hunter-accept-92482-the-way-of-the-hunter",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
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
            priority = 2700,
        },
        {
            priority = 2710,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
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
            priority = 2720,
            route = {
                { y = 0.236, mapID = 2521, label = "Tai'ree Farsight", x = 0.424, offMapText = "Travel to Tai'ree Farsight in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-92482-the-way-of-the-hunter" },
            id = "woven-class-hunter-turnin-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
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
            id = "level-before-woven-class-rogue-accept-92483-at-home-in-the-shadows",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
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
            priority = 2730,
        },
        {
            priority = 2740,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
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
            priority = 2750,
            route = {
                { y = 0.242, mapID = 2521, label = "Akeri Duskblade", x = 0.436, offMapText = "Travel to Akeri Duskblade in Zephras Isle." },
            },
            dependsOn = { "woven-class-rogue-accept-92483-at-home-in-the-shadows" },
            id = "woven-class-rogue-turnin-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
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
            priority = 2760,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-92484-embracing-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92484-embracing-the-elements",
        },
        {
            priority = 2770,
            dependsOn = { "woven-class-shaman-accept-92484-embracing-the-elements" },
            id = "woven-class-shaman-objective-92484-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92484-reviewed-mechanics",
        },
        {
            priority = 2780,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", x = 0.428, offMapText = "Travel to Windshaper Boro in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-shaman-accept-92484-embracing-the-elements",
                "woven-class-shaman-objective-92484-reviewed-mechanics",
            },
            id = "woven-class-shaman-turnin-92484-embracing-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92484-embracing-the-elements",
        },
        {
            id = "level-before-woven-class-warrior-accept-92532-the-warriors-path",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
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
            priority = 2790,
        },
        {
            priority = 2800,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
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
            priority = 2810,
            route = {
                { y = 0.242, mapID = 2521, label = "Blademaster Ren", x = 0.436, offMapText = "Travel to Blademaster Ren in Zephras Isle." },
            },
            dependsOn = { "woven-class-warrior-accept-92532-the-warriors-path" },
            id = "woven-class-warrior-turnin-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
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
            id = "level-before-woven-class-druid-accept-92485-a-student-of-nature",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            priority = 2820,
        },
        {
            priority = 2830,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            priority = 2840,
            route = {
                { y = 0.234, mapID = 2521, label = "Xyton Silverwind", x = 0.416, offMapText = "Travel to Xyton Silverwind in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-92485-a-student-of-nature" },
            id = "woven-class-druid-turnin-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            id = "level-before-woven-class-druid-accept-6126-lessons-anew",
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
            priority = 2850,
        },
        {
            priority = 2860,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6126-lessons-anew",
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
            priority = 2870,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-6126-lessons-anew" },
            id = "woven-class-druid-turnin-6126-lessons-anew",
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
            priority = 2880,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6127-the-principal-source",
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
            priority = 2890,
            id = "woven-class-druid-objective-6127-quest-work",
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
            dependsOn = { "woven-class-druid-accept-6127-the-principal-source" },
            classAction = "objective-6127-quest-work",
        },
        {
            priority = 2900,
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "woven-class-druid-accept-6127-the-principal-source", "woven-class-druid-objective-6127-quest-work" },
            id = "woven-class-druid-turnin-6127-the-principal-source",
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
            priority = 2910,
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6128-gathering-the-cure",
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
            priority = 2920,
            dependsOn = { "woven-class-druid-accept-6128-gathering-the-cure" },
            id = "woven-class-druid-objective-6128-gathering-the-cure",
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
            priority = 2930,
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = { "woven-class-druid-accept-6128-gathering-the-cure", "woven-class-druid-objective-6128-gathering-the-cure" },
            id = "woven-class-druid-turnin-6128-gathering-the-cure",
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
            priority = 2940,
            route = {
                { y = 0.318, mapID = 1413, label = "Tonga Runetotem", x = 0.522, offMapText = "Travel to Tonga Runetotem in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6129-curing-the-sick",
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
            priority = 2950,
            id = "woven-class-druid-objective-6129-quest-work",
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
            dependsOn = { "woven-class-druid-accept-6129-curing-the-sick" },
            classAction = "objective-6129-quest-work",
        },
        {
            priority = 2960,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-6129-curing-the-sick", "woven-class-druid-objective-6129-quest-work" },
            id = "woven-class-druid-turnin-6129-curing-the-sick",
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
            priority = 2970,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6130-power-over-poison",
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
            priority = 2980,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-6130-power-over-poison" },
            id = "woven-class-druid-turnin-6130-power-over-poison",
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
            priority = 2990,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5922-moonglade",
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
            priority = 3000,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-5922-moonglade" },
            id = "woven-class-druid-turnin-5922-moonglade",
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
            priority = 3010,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5930-great-bear-spirit",
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
            priority = 3020,
            id = "woven-class-druid-objective-5930-quest-work",
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
            dependsOn = { "woven-class-druid-accept-5930-great-bear-spirit" },
            classAction = "objective-5930-quest-work",
        },
        {
            priority = 3030,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-5930-great-bear-spirit", "woven-class-druid-objective-5930-quest-work" },
            id = "woven-class-druid-turnin-5930-great-bear-spirit",
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
            priority = 3040,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5932-back-to-thunder-bluff",
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
            priority = 3050,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-5932-back-to-thunder-bluff" },
            id = "woven-class-druid-turnin-5932-back-to-thunder-bluff",
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
            priority = 3060,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6002-body-and-heart",
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
            priority = 3070,
            id = "woven-class-druid-objective-6002-quest-work",
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
            dependsOn = { "woven-class-druid-accept-6002-body-and-heart" },
            classAction = "objective-6002-quest-work",
        },
        {
            priority = 3080,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-6002-body-and-heart", "woven-class-druid-objective-6002-quest-work" },
            id = "woven-class-druid-turnin-6002-body-and-heart",
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
            priority = 3090,
            route = {
                { y = 0.596, mapID = 1412, label = "Gennia Runetotem", x = 0.484, offMapText = "Travel to Gennia Runetotem in Mulgore." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5928-heeding-the-call",
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
            priority = 3100,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-5928-heeding-the-call" },
            id = "woven-class-druid-turnin-5928-heeding-the-call",
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
            priority = 3110,
            route = {
                { y = 0.684, mapID = 1454, label = "Innkeeper Gryshka", x = 0.542, offMapText = "Travel to Innkeeper Gryshka in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5927-heeding-the-call",
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
            priority = 3120,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-5927-heeding-the-call" },
            id = "woven-class-druid-turnin-5927-heeding-the-call",
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
            priority = 3130,
            route = {
                { y = 0.644, mapID = 1456, label = "Innkeeper Pala", x = 0.458, offMapText = "Travel to Innkeeper Pala in Thunder Bluff." },
            },
            id = "woven-class-druid-accept-5926-heeding-the-call",
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
            priority = 3140,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-5926-heeding-the-call" },
            id = "woven-class-druid-turnin-5926-heeding-the-call",
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
            id = "level-before-woven-class-druid-accept-94911-child-of-nature",
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
            priority = 3150,
        },
        {
            priority = 3160,
            route = {
                { y = 0.224, mapID = 1412, label = "Muln Earthfury", x = 0.334, offMapText = "Travel to Muln Earthfury in Mulgore." },
            },
            id = "woven-class-druid-accept-94911-child-of-nature",
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
            priority = 3170,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = { "woven-class-druid-accept-94911-child-of-nature" },
            id = "woven-class-druid-turnin-94911-child-of-nature",
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
            priority = 3180,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-94913-moonglade",
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
            id = "level-before-connector-accept-94913-moonglade",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            checkpointQuest = 94913,
            priority = 3190,
        },
        {
            priority = 3200,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "connector-accept-94913-moonglade",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94913-moonglade",
        },
        {
            priority = 3210,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-94913-moonglade", "connector-accept-94913-moonglade" },
            id = "woven-class-druid-turnin-94913-moonglade",
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
            id = "level-before-woven-class-druid-accept-94006-the-great-ursera-spirit",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            priority = 3220,
        },
        {
            priority = 3230,
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", x = 0.64, offMapText = "Travel to Lotheluum Starbreeze in Zephras Isle." },
            },
            id = "woven-class-druid-accept-94006-the-great-ursera-spirit",
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
            priority = 3240,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-94006-the-great-ursera-spirit" },
            id = "woven-class-druid-turnin-94006-the-great-ursera-spirit",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94006-the-great-ursera-spirit",
        },
        {
            priority = 3250,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-94638-strength-and-mercy",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94638-strength-and-mercy",
        },
        {
            priority = 3260,
            id = "woven-class-druid-objective-94638-quest-work",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-94638-strength-and-mercy" },
            classAction = "objective-94638-quest-work",
        },
        {
            priority = 3270,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-94638-strength-and-mercy", "woven-class-druid-objective-94638-quest-work" },
            id = "woven-class-druid-turnin-94638-strength-and-mercy",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94638-strength-and-mercy",
        },
        {
            id = "level-before-woven-class-druid-accept-76156-stalk-with-the-earthmother",
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
            priority = 3280,
        },
        {
            priority = 3290,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            id = "woven-class-druid-accept-76156-stalk-with-the-earthmother",
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
            dependsOn = { "woven-class-druid-accept-76156-stalk-with-the-earthmother" },
            id = "woven-class-druid-objective-76156-stalk-with-the-earthmother-1",
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
            priority = 3300,
            classAction = "objective-76156-stalk-with-the-earthmother-1",
        },
        {
            priority = 3310,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = {
                "woven-class-druid-accept-76156-stalk-with-the-earthmother",
                "woven-class-druid-objective-76156-stalk-with-the-earthmother-1",
            },
            id = "woven-class-druid-turnin-76156-stalk-with-the-earthmother",
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
            id = "level-before-woven-class-paladin-accept-91316-making-repairs",
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
            checkpointQuest = 91316,
            priority = 3320,
        },
        {
            priority = 3330,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", x = 0.226, offMapText = "Travel to Jorin Croge in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91316-making-repairs",
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
            dependsOn = { "woven-class-paladin-accept-91316-making-repairs" },
            id = "woven-class-paladin-objective-91316-making-repairs",
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
            priority = 3340,
            classAction = "objective-91316-making-repairs",
        },
        {
            priority = 3350,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", x = 0.226, offMapText = "Travel to Jorin Croge in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91316-making-repairs", "woven-class-paladin-objective-91316-making-repairs" },
            id = "woven-class-paladin-turnin-91316-making-repairs",
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
            priority = 3360,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            id = "woven-class-paladin-accept-91208-coming-to-terms",
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
            priority = 3370,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91208-coming-to-terms" },
            id = "woven-class-paladin-turnin-91208-coming-to-terms",
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
            priority = 3380,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91209-continue-your-training",
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
            priority = 3390,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", x = 0.602, offMapText = "Travel to Shari Stilwell in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91209-continue-your-training" },
            id = "woven-class-paladin-turnin-91209-continue-your-training",
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
            priority = 3400,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", x = 0.602, offMapText = "Travel to Shari Stilwell in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91282-a-second-home",
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
            priority = 3410,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91282-a-second-home" },
            id = "woven-class-paladin-turnin-91282-a-second-home",
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
            priority = 3420,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91285-murlocs-at-the-gates",
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
            priority = 3430,
            id = "woven-class-paladin-objective-91285-quest-work",
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
            dependsOn = { "woven-class-paladin-accept-91285-murlocs-at-the-gates" },
            classAction = "objective-91285-quest-work",
        },
        {
            priority = 3440,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91285-murlocs-at-the-gates", "woven-class-paladin-objective-91285-quest-work" },
            id = "woven-class-paladin-turnin-91285-murlocs-at-the-gates",
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
            priority = 3450,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", x = 0.218, offMapText = "Travel to Breton Samuels in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91294-touring-the-grounds",
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
            priority = 3460,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91294-touring-the-grounds" },
            id = "woven-class-paladin-turnin-91294-touring-the-grounds",
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
            id = "level-before-woven-class-paladin-accept-91317-the-tarnished",
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
            priority = 3470,
        },
        {
            priority = 3480,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-91317-the-tarnished",
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
            priority = 3490,
            route = {
                { y = 0.642, mapID = 1420, label = "Rudolph Gelhardt", x = 0.116, offMapText = "Travel to Rudolph Gelhardt in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91317-the-tarnished" },
            id = "woven-class-paladin-objective-91317-the-tarnished",
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
            priority = 3500,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-91317-the-tarnished", "woven-class-paladin-objective-91317-the-tarnished" },
            id = "woven-class-paladin-turnin-91317-the-tarnished",
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
            id = "level-before-woven-class-paladin-accept-94427-a-lesson-in-divinity",
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
            priority = 3510,
        },
        {
            priority = 3520,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94427-a-lesson-in-divinity",
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
            priority = 3530,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = { "woven-class-paladin-accept-94427-a-lesson-in-divinity" },
            id = "woven-class-paladin-turnin-94427-a-lesson-in-divinity",
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
            priority = 3540,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94434-a-lesson-in-divinity",
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
            priority = 3550,
            dependsOn = { "woven-class-paladin-accept-94434-a-lesson-in-divinity" },
            id = "woven-class-paladin-objective-94434-a-lesson-in-divinity",
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
            priority = 3560,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = {
                "woven-class-paladin-accept-94434-a-lesson-in-divinity",
                "woven-class-paladin-objective-94434-a-lesson-in-divinity",
            },
            id = "woven-class-paladin-turnin-94434-a-lesson-in-divinity",
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
            priority = 3570,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", x = 0.656, offMapText = "Travel to Tanis Alderwood in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94435-a-lesson-in-divinity",
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
            priority = 3580,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-94435-a-lesson-in-divinity" },
            id = "woven-class-paladin-turnin-94435-a-lesson-in-divinity",
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
            priority = 3590,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94436-a-lesson-in-divinity",
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
            priority = 3600,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-94436-a-lesson-in-divinity" },
            id = "woven-class-paladin-turnin-94436-a-lesson-in-divinity",
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
            priority = 3610,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94438-a-lesson-in-divinity",
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
            priority = 3620,
            dependsOn = { "woven-class-paladin-accept-94438-a-lesson-in-divinity" },
            id = "woven-class-paladin-objective-94438-reviewed-mechanics",
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
            priority = 3630,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", x = 0.866, offMapText = "Travel to Deathguard Falgan in Tirisfal Glades." },
            },
            dependsOn = {
                "woven-class-paladin-accept-94438-a-lesson-in-divinity",
                "woven-class-paladin-objective-94438-reviewed-mechanics",
            },
            id = "woven-class-paladin-turnin-94438-a-lesson-in-divinity",
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
            priority = 3640,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", x = 0.866, offMapText = "Travel to Deathguard Falgan in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94440-a-lesson-in-divinity",
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
            priority = 3650,
            dependsOn = { "woven-class-paladin-accept-94440-a-lesson-in-divinity" },
            id = "woven-class-paladin-objective-94440-a-lesson-in-divinity",
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
            priority = 3660,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = {
                "woven-class-paladin-accept-94440-a-lesson-in-divinity",
                "woven-class-paladin-objective-94440-a-lesson-in-divinity",
            },
            id = "woven-class-paladin-turnin-94440-a-lesson-in-divinity",
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
            priority = 3670,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", x = 0.22, offMapText = "Travel to Deathguard Billmuth in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-94441-a-lesson-in-divinity",
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
            priority = 3680,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-94441-a-lesson-in-divinity" },
            id = "woven-class-paladin-turnin-94441-a-lesson-in-divinity",
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
            priority = 3690,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-95803-a-token-of-good-faith",
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
            priority = 3700,
            route = {
                { y = 0.918, mapID = 1458, label = "Lady Sylvanas Windrunner", x = 0.578, offMapText = "Travel to Lady Sylvanas Windrunner in Undercity." },
            },
            dependsOn = { "woven-class-paladin-accept-95803-a-token-of-good-faith" },
            id = "woven-class-paladin-turnin-95803-a-token-of-good-faith",
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
            priority = 3710,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            id = "woven-class-paladin-accept-90902-rediscovering-the-light",
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
            priority = 3720,
            dependsOn = { "woven-class-paladin-accept-90902-rediscovering-the-light" },
            id = "woven-class-paladin-objective-90902-reviewed-mechanics",
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
            priority = 3730,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = {
                "woven-class-paladin-accept-90902-rediscovering-the-light",
                "woven-class-paladin-objective-90902-reviewed-mechanics",
            },
            id = "woven-class-paladin-turnin-90902-rediscovering-the-light",
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
            priority = 3740,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "woven-class-paladin-accept-98601-a-difficult-path",
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
            priority = 3750,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", x = 0.31, offMapText = "Travel to Aramis Hammerhand in Tirisfal Glades." },
            },
            dependsOn = { "woven-class-paladin-accept-98601-a-difficult-path" },
            id = "woven-class-paladin-turnin-98601-a-difficult-path",
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
            id = "level-before-accept-435-escorting-erland",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 435,
            priority = 3760,
        },
        {
            priority = 3770,
            route = {
                { y = 0.0918, mapID = 1421, label = "Deathstalker Erland", offMapText = "Travel to Deathstalker Erland in Silverpine Forest.", x = 0.5619 },
            },
            text = "Accept Escorting Erland from Deathstalker Erland.",
            id = "accept-435-escorting-erland",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 435, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3780,
            text = "Turn in Escorting Erland to Rane Yorick.",
            route = {
                { y = 0.1343, mapID = 1421, label = "Rane Yorick", offMapText = "Travel to Rane Yorick in Silverpine Forest.", x = 0.5346 },
            },
            dependsOn = { "accept-435-escorting-erland" },
            id = "turnin-435-escorting-erland",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 435, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3790,
            route = {
                { y = 0.1343, mapID = 1421, label = "Rane Yorick", offMapText = "Travel to Rane Yorick in Silverpine Forest.", x = 0.5346 },
            },
            text = "Accept The Deathstalkers' Report from Rane Yorick.",
            id = "accept-449-the-deathstalkers-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 449, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 435 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3800,
            route = {
                { y = 0.1343, mapID = 1421, label = "Rane Yorick", offMapText = "Travel to Rane Yorick in Silverpine Forest.", x = 0.5346 },
            },
            text = "Accept Wild Hearts from Rane Yorick.",
            id = "accept-429-wild-hearts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 429, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-421-prove-your-worth",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 421,
            priority = 3810,
        },
        {
            priority = 3820,
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.442 },
            },
            text = "Accept Prove Your Worth from Dalar Dawnweaver.",
            id = "accept-421-prove-your-worth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 421, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3830,
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister in Silverpine Forest.", x = 0.4398 },
            },
            text = "Accept Border Crossings from Shadow Priest Allister.",
            id = "accept-477-border-crossings",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 477, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6321-supplying-the-sepulcher",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 6321,
            priority = 3840,
        },
        {
            priority = 3850,
            route = {
                { y = 0.4168, mapID = 1421, label = "Deathguard Podrig", offMapText = "Travel to Deathguard Podrig in Silverpine Forest.", x = 0.4343 },
            },
            text = "Accept Supplying the Sepulcher from Deathguard Podrig.",
            id = "accept-6321-supplying-the-sepulcher",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6321, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3860,
            text = "Turn in The Deathstalkers' Report to High Executor Hadrec.",
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            dependsOn = { "accept-449-the-deathstalkers-report" },
            id = "turnin-449-the-deathstalkers-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 449, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 435 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3870,
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            text = "Accept Speak with Renferrel from High Executor Hadrec.",
            id = "accept-3221-speak-with-renferrel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3221, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3880,
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            text = "Accept The Dead Fields from High Executor Hadrec.",
            id = "accept-437-the-dead-fields",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 437, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-connector-accept-445-delivery-to-silverpine-forest",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 445,
            priority = 3890,
        },
        {
            priority = 3900,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept Delivery to Silverpine Forest from Apothecary Johaan.",
            id = "connector-accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 445, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3910,
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            text = "Turn in Delivery to Silverpine Forest to Apothecary Renferrel.",
            id = "turnin-445-delivery-to-silverpine-forest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 445, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "connector-accept-445-delivery-to-silverpine-forest" },
        },
        {
            priority = 3920,
            text = "Turn in Speak with Renferrel to Apothecary Renferrel.",
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            dependsOn = { "accept-3221-speak-with-renferrel" },
            id = "turnin-3221-speak-with-renferrel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3221, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3930,
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            text = "Accept Zinge's Delivery from Apothecary Renferrel.",
            id = "accept-1359-zinge-s-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1359, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3940,
            text = "For Wild Hearts: Gather 6 discolored worg hearts and bring them to Apothecary Renferrel at the Sepulcher.",
            id = "objective-429-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 429, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-429-wild-hearts" },
        },
        {
            priority = 3950,
            text = "Turn in Wild Hearts to Apothecary Renferrel.",
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            dependsOn = { "accept-429-wild-hearts", "objective-429-quest-work" },
            id = "turnin-429-wild-hearts",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 429, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3960,
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            text = "Accept Return to Quinn from Apothecary Renferrel.",
            id = "accept-430-return-to-quinn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 430, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 429 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3970,
            route = {
                { y = 0.4086, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            text = "Accept A Recipe For Death from Apothecary Renferrel.",
            id = "accept-447-a-recipe-for-death",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 447, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3980,
            text = "Turn in Supplying the Sepulcher to Karos Razok.",
            route = {
                { y = 0.426, mapID = 1421, label = "Karos Razok", offMapText = "Travel to Karos Razok in Silverpine Forest.", x = 0.4562 },
            },
            dependsOn = { "accept-6321-supplying-the-sepulcher" },
            id = "turnin-6321-supplying-the-sepulcher",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6321, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3990,
            route = {
                { y = 0.426, mapID = 1421, label = "Karos Razok", offMapText = "Travel to Karos Razok in Silverpine Forest.", x = 0.4562 },
            },
            text = "Accept Ride to the Undercity from Karos Razok.",
            id = "accept-6323-ride-to-the-undercity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6323, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4000,
            text = "Kill 5 Moonrage Whitescalp.",
            route = {
                { y = 0.368, mapID = 1421, label = "Moonrage Whitescalp", offMapText = "Travel to Moonrage Whitescalp.", x = 0.49 },
            },
            dependsOn = { "accept-421-prove-your-worth" },
            id = "objective-421-1-moonrage-whitescalp",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 421, text = "Moonrage Whitescalp", index = 1, count = 5 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4010,
            text = "Turn in Prove Your Worth to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.442 },
            },
            dependsOn = { "accept-421-prove-your-worth", "objective-421-1-moonrage-whitescalp" },
            id = "turnin-421-prove-your-worth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 421, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4020,
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.442 },
            },
            text = "Accept Arugal's Folly from Dalar Dawnweaver.",
            id = "accept-422-arugal-s-folly",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 422, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-422-1-remedy-of-arugal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Remedy of Arugal.",
            complete = {
                questObjective = { id = 422, index = 1, text = "Remedy of Arugal", count = 1 },
            },
            route = {
                { mapID = 1421, x = 0.5282, y = 0.2858, label = "Remedy of Arugal", offMapText = "Travel to Remedy of Arugal." },
            },
            sourceStep = 17,
            priority = 4030,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-422-arugal-s-folly" },
        },
        {
            priority = 4040,
            text = "Turn in Return to Quinn to Quinn Yorick.",
            route = {
                { y = 0.1259, mapID = 1421, label = "Quinn Yorick", offMapText = "Travel to Quinn Yorick in Silverpine Forest.", x = 0.5343 },
            },
            dependsOn = { "accept-430-return-to-quinn" },
            id = "turnin-430-return-to-quinn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 430, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 429 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-91920-wild-eyes",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 91920,
            priority = 4050,
        },
        {
            priority = 4060,
            route = {
                { y = 0.126, mapID = 1421, label = "Quinn Yorick", offMapText = "Travel to Quinn Yorick.", x = 0.534 },
            },
            text = "Accept Wild Eyes from Quinn Yorick at the Ivar Patch.",
            id = "woven-accept-91920-wild-eyes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 91920, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 430 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4070,
            route = {
                { y = 0.154, mapID = 1421, label = "Vile Fin Shredder", offMapText = "Travel to Vile Fin Shredder.", x = 0.598 },
            },
            text = "Wild Eyes: gather 3 Murloc Eyes from the Vile Fin murlocs around the lake.",
            id = "woven-objective-91920-wild-eyes",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 91920, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 430 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91920-wild-eyes" },
        },
        {
            priority = 4080,
            route = {
                { y = 0.408, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel.", x = 0.428 },
            },
            text = "Turn in Wild Eyes to Apothecary Renferrel in the Sepulcher.",
            id = "woven-turnin-91920-wild-eyes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 91920, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 430 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91920-wild-eyes", "woven-objective-91920-wild-eyes" },
        },
        {
            priority = 4090,
            route = {
                { y = 0.408, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel.", x = 0.428 },
            },
            text = "Accept Return to Quinn (Again) from Apothecary Renferrel in the Sepulcher.",
            id = "woven-accept-91921-return-to-quinn-again",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 91921, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91920 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4100,
            route = {
                { y = 0.126, mapID = 1421, label = "Quinn Yorick", offMapText = "Travel to Quinn Yorick.", x = 0.534 },
            },
            text = "Return to Quinn (Again): bring Quinn's potion to Quinn Yorick at the Ivar Patch.",
            id = "woven-turnin-91921-return-to-quinn-again",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 91921, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91920 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91921-return-to-quinn-again" },
        },
        {
            priority = 4110,
            route = {
                { y = 0.1343, mapID = 1421, label = "Rane Yorick", offMapText = "Travel to Rane Yorick in Silverpine Forest.", x = 0.5346 },
            },
            text = "Accept Ivar the Foul from Rane Yorick.",
            id = "accept-425-ivar-the-foul",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 425, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4120,
            text = "Collect 1 Ivar's Head.",
            route = {
                { y = 0.1391, mapID = 1421, label = "Ivar the Foul", offMapText = "Travel to Ivar the Foul.", x = 0.5153 },
            },
            dependsOn = { "accept-425-ivar-the-foul" },
            id = "objective-425-1-ivar-the-foul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 425, text = "Ivar the Foul", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4130,
            text = "Turn in Ivar the Foul to Rane Yorick.",
            route = {
                { y = 0.1343, mapID = 1421, label = "Rane Yorick", offMapText = "Travel to Rane Yorick in Silverpine Forest.", x = 0.5346 },
            },
            dependsOn = { "accept-425-ivar-the-foul", "objective-425-1-ivar-the-foul" },
            id = "turnin-425-ivar-the-foul",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 425, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-437-1-essence-of-nightlash",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Essence of Nightlash.",
            complete = {
                questObjective = { id = 437, index = 1, text = "Essence of Nightlash", count = 1 },
            },
            route = {
                { mapID = 1421, x = 0.45439999999999997, y = 0.2101, label = "Essence of Nightlash", offMapText = "Travel to Essence of Nightlash." },
            },
            sourceStep = 24,
            priority = 4140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-437-the-dead-fields" },
        },
        {
            id = "objective-447-1-grizzled-bear-heart",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Grizzled Bear Heart.",
            complete = {
                questObjective = { id = 447, index = 1, text = "Grizzled Bear Heart", count = 6 },
            },
            route = {
                { mapID = 1421, x = 0.414, y = 0.19399999999999998, label = "Grizzled Bear Heart", offMapText = "Travel to Grizzled Bear Heart." },
            },
            sourceStep = 25,
            priority = 4150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-447-a-recipe-for-death" },
        },
        {
            id = "objective-447-2-skittering-blood",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Skittering Blood.",
            complete = {
                questObjective = { id = 447, index = 2, text = "Skittering Blood", count = 6 },
            },
            route = {
                { mapID = 1421, x = 0.3565, y = 0.1358, label = "Skittering Blood", offMapText = "Travel to Skittering Blood." },
            },
            sourceStep = 26,
            priority = 4160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-447-a-recipe-for-death" },
        },
        {
            priority = 4170,
            text = "Turn in Arugal's Folly to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.442 },
            },
            dependsOn = { "accept-422-arugal-s-folly", "objective-422-1-remedy-of-arugal" },
            id = "turnin-422-arugal-s-folly",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 422, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4180,
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.442 },
            },
            text = "Accept Arugal's Folly from Dalar Dawnweaver.",
            id = "accept-423-arugal-s-folly",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 423, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4190,
            text = "Turn in The Dead Fields to High Executor Hadrec.",
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            dependsOn = { "accept-437-the-dead-fields", "objective-437-1-essence-of-nightlash" },
            id = "turnin-437-the-dead-fields",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 437, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4200,
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            text = "Accept The Decrepit Ferry from High Executor Hadrec.",
            id = "accept-438-the-decrepit-ferry",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 438, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 437 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4210,
            text = "Turn in The Decrepit Ferry.",
            route = {
                { y = 0.3484, mapID = 1421, label = "The Decrepit Ferry", offMapText = "Travel to The Decrepit Ferry.", x = 0.5839 },
            },
            dependsOn = { "accept-438-the-decrepit-ferry" },
            id = "turnin-438-the-decrepit-ferry",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 438, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 437 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4220,
            route = {
                { y = 0.3484, mapID = 1421, label = "Rot Hide Clues", offMapText = "Travel to Rot Hide Clues.", x = 0.5839 },
            },
            text = "Accept Rot Hide Clues.",
            id = "accept-439-rot-hide-clues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 439, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4230,
            text = "Collect 3 Darksoul Shackle.",
            route = {
                { y = 0.4602, mapID = 1421, label = "Moonrage Darksoul", offMapText = "Travel to Moonrage Darksoul.", x = 0.5654 },
            },
            dependsOn = { "accept-423-arugal-s-folly" },
            id = "objective-423-2-moonrage-darksoul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 423, text = "Moonrage Darksoul", index = 2, count = 3 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-423-1-glutton-shackle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Glutton Shackle.",
            complete = {
                questObjective = { id = 423, index = 1, text = "Glutton Shackle", count = 6 },
            },
            route = {
                { mapID = 1421, x = 0.5654, y = 0.46020000000000005, label = "Glutton Shackle", offMapText = "Travel to Glutton Shackle." },
            },
            sourceStep = 33,
            priority = 4240,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-423-arugal-s-folly" },
        },
        {
            priority = 4250,
            text = "Turn in Border Crossings.",
            route = {
                { mapID = 1421, x = 0.4991, y = 0.6032, label = "Border Crossings", offMapText = "Travel to Border Crossings." },
            },
            dependsOn = { "accept-477-border-crossings" },
            id = "turnin-477-border-crossings",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 477, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4260,
            route = {
                { mapID = 1421, x = 0.4991, y = 0.6032, label = "Maps and Runes", offMapText = "Travel to Maps and Runes." },
            },
            text = "Accept Maps and Runes.",
            id = "accept-478-maps-and-runes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 478, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 477 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4270,
            text = "Turn in Maps and Runes to Shadow Priest Allister.",
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister in Silverpine Forest.", x = 0.4398 },
            },
            dependsOn = { "accept-478-maps-and-runes" },
            id = "turnin-478-maps-and-runes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 478, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 477 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4280,
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister in Silverpine Forest.", x = 0.4398 },
            },
            text = "Accept Dalar's Analysis from Shadow Priest Allister.",
            id = "accept-481-dalar-s-analysis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 481, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 478 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4290,
            text = "Turn in Arugal's Folly to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.4419 },
            },
            dependsOn = { "accept-423-arugal-s-folly", "objective-423-2-moonrage-darksoul", "objective-423-1-glutton-shackle" },
            id = "turnin-423-arugal-s-folly",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 423, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4300,
            text = "Accept Arugal's Folly from Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.4419 },
            },
            dependsOn = { "turnin-423-arugal-s-folly" },
            id = "accept-424-arugal-s-folly",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 424, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 423 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4310,
            text = "Turn in Dalar's Analysis to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.4419 },
            },
            dependsOn = { "accept-481-dalar-s-analysis" },
            id = "turnin-481-dalar-s-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 481, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 478 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4320,
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver in Silverpine Forest.", x = 0.4419 },
            },
            text = "Accept Dalaran's Intentions from Dalar Dawnweaver.",
            id = "accept-482-dalaran-s-intentions",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 482, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4330,
            text = "Turn in Dalaran's Intentions to Shadow Priest Allister.",
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister in Silverpine Forest.", x = 0.4398 },
            },
            dependsOn = { "accept-482-dalaran-s-intentions" },
            id = "turnin-482-dalaran-s-intentions",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 482, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4340,
            text = "Accept Ambermill Investigations from Shadow Priest Allister.",
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister.", x = 0.4398 },
            },
            dependsOn = { "turnin-482-dalaran-s-intentions" },
            id = "accept-479-ambermill-investigations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 479, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 482 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4350,
            text = "Turn in Rot Hide Clues to High Executor Hadrec.",
            route = {
                { y = 0.4139, mapID = 1421, label = "High Executor Hadrec", offMapText = "Travel to High Executor Hadrec in Silverpine Forest.", x = 0.4309 },
            },
            dependsOn = { "accept-439-rot-hide-clues" },
            id = "turnin-439-rot-hide-clues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 439, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4360,
            text = "Turn in Ride to the Undercity to Gordon Wendham.",
            route = {
                { y = 0.418, mapID = 1458, label = "Gordon Wendham", offMapText = "Travel to Gordon Wendham in Undercity.", x = 0.6149 },
            },
            dependsOn = { "accept-6323-ride-to-the-undercity" },
            id = "turnin-6323-ride-to-the-undercity",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6323, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4370,
            route = {
                { y = 0.418, mapID = 1458, label = "Gordon Wendham", offMapText = "Travel to Gordon Wendham in Undercity.", x = 0.6149 },
            },
            text = "Accept Michael Garrett from Gordon Wendham.",
            id = "accept-6322-michael-garrett",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6322, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6323 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4380,
            text = "Turn in Michael Garrett to Michael Garrett.",
            route = {
                { y = 0.4856, mapID = 1458, label = "Michael Garrett", offMapText = "Travel to Michael Garrett in Undercity.", x = 0.6326 },
            },
            dependsOn = { "accept-6322-michael-garrett" },
            id = "turnin-6322-michael-garrett",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6322, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6323 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4390,
            route = {
                { y = 0.4856, mapID = 1458, label = "Michael Garrett", offMapText = "Travel to Michael Garrett in Undercity.", x = 0.6326 },
            },
            text = "Accept Return to Podrig from Michael Garrett.",
            id = "accept-6324-return-to-podrig",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6324, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4400,
            text = "Turn in Return to Podrig to Deathguard Podrig.",
            route = {
                { y = 0.4168, mapID = 1421, label = "Deathguard Podrig", offMapText = "Travel to Deathguard Podrig in Silverpine Forest.", x = 0.4343 },
            },
            dependsOn = { "accept-6324-return-to-podrig" },
            id = "turnin-6324-return-to-podrig",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 6324, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4410,
            text = "Turn in A Recipe For Death to Master Apothecary Faranell.",
            route = {
                { mapID = 1458, x = 0.4882, y = 0.6929000000000001, label = "Master Apothecary Faranell", offMapText = "Travel to Master Apothecary Faranell in Undercity." },
            },
            dependsOn = { "accept-447-a-recipe-for-death", "objective-447-1-grizzled-bear-heart", "objective-447-2-skittering-blood" },
            id = "turnin-447-a-recipe-for-death",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 447, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4420,
            text = "Turn in Zinge's Delivery to Apothecary Zinge.",
            route = {
                { y = 0.6799, mapID = 1458, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity.", x = 0.5013 },
            },
            dependsOn = { "accept-1359-zinge-s-delivery" },
            id = "turnin-1359-zinge-s-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1359, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4430,
            route = {
                { y = 0.6799, mapID = 1458, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity.", x = 0.5013 },
            },
            text = "Accept Sample for Helbrim from Apothecary Zinge.",
            id = "accept-1358-sample-for-helbrim",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1358, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1359 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1886-quest-work",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
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
            checkpointQuest = 1886,
            priority = 4440,
        },
        {
            priority = 4450,
            id = "objective-1886-quest-work",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            sourceStep = 51,
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-1886-the-deathstalkers" },
            classAction = "objective-1886-quest-work",
        },
        {
            priority = 4460,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-1886-the-deathstalkers",
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
            priority = 4470,
            route = {
                { y = 0.6911, mapID = 1458, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity.", x = 0.8351 },
            },
            text = "Turn in The Deathstalkers to Mennet Carkad.",
            id = "turnin-1886-the-deathstalkers",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1886, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1886-quest-work", "woven-class-rogue-accept-1886-the-deathstalkers" },
        },
        {
            priority = 4480,
            route = {
                { y = 0.6911, mapID = 1458, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity.", x = 0.8351 },
            },
            text = "Accept The Deathstalkers from Mennet Carkad.",
            id = "accept-1898-the-deathstalkers",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1898, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1886 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4490,
            text = "Turn in The Deathstalkers to Andron Gant.",
            route = {
                { y = 0.763, mapID = 1458, label = "Andron Gant", offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482 },
            },
            dependsOn = { "accept-1898-the-deathstalkers" },
            id = "turnin-1898-the-deathstalkers",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1898, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1886 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4500,
            route = {
                { y = 0.763, mapID = 1458, label = "Andron Gant", offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482 },
            },
            text = "Accept The Deathstalkers from Andron Gant.",
            id = "accept-1899-the-deathstalkers",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1899, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1898 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4510,
            text = "Collect 1 Andron's Ledger.",
            route = {
                { y = 0.7705, mapID = 1458, label = "Andron's Bookshelf", offMapText = "Travel to Andron's Bookshelf.", x = 0.5542 },
            },
            dependsOn = { "accept-1899-the-deathstalkers" },
            id = "objective-1899-1-andron-s-bookshelf",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1899, text = "Andron's Bookshelf", index = 1, count = 1 },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1898 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4520,
            text = "Turn in The Deathstalkers to Mennet Carkad.",
            route = {
                { y = 0.6911, mapID = 1458, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity.", x = 0.8351 },
            },
            dependsOn = { "accept-1899-the-deathstalkers", "objective-1899-1-andron-s-bookshelf" },
            id = "turnin-1899-the-deathstalkers",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1899, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1898 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4530,
            route = {
                { mapID = 1458, x = 0.6553, y = 0.7973, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            text = "Accept The Deathstalkers from Mennet Carkad.",
            id = "accept-1978-the-deathstalkers",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1978, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1899 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4540,
            text = "Turn in The Deathstalkers to Varimathras.",
            route = {
                { y = 0.8464, mapID = 1458, label = "Varimathras", offMapText = "Travel to Varimathras in Undercity.", x = 0.5975 },
            },
            dependsOn = { "accept-1978-the-deathstalkers" },
            id = "turnin-1978-the-deathstalkers",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1978, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1899 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4550,
            route = {
                { y = 0.3782, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall in Orgrimmar.", x = 0.3173 },
            },
            text = "Accept Hidden Enemies from Thrall.",
            id = "accept-5726-hidden-enemies",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5726, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4560,
            text = "Collect 1 Lieutenant's Insignia.",
            route = {
                { y = 0.0967, mapID = 1411, label = "Burning Blade Apprentice", offMapText = "Travel to Burning Blade Apprentice.", x = 0.5498 },
            },
            dependsOn = { "accept-5726-hidden-enemies" },
            id = "objective-5726-1-burning-blade-apprentice",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5726, text = "Burning Blade Apprentice", index = 1, count = 1 },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4570,
            text = "Turn in Hidden Enemies to Thrall.",
            route = {
                { y = 0.3782, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall in Orgrimmar.", x = 0.3173 },
            },
            dependsOn = { "accept-5726-hidden-enemies", "objective-5726-1-burning-blade-apprentice" },
            id = "turnin-5726-hidden-enemies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5726, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4580,
            route = {
                { y = 0.3782, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall in Orgrimmar.", x = 0.3173 },
            },
            text = "Accept Hidden Enemies from Thrall.",
            id = "accept-5727-hidden-enemies",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5727, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5726 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4590,
            text = "For Hidden Enemies: Take the Lieutenant's Insignia to Neeru Fireblade and speak to him. Gauge if he believes you are a member of the Burning Blade.",
            id = "objective-5727-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5727, state = "complete" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5726 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-5727-hidden-enemies" },
        },
        {
            priority = 4600,
            text = "Turn in Hidden Enemies to Thrall.",
            route = {
                { y = 0.3783, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall in Orgrimmar.", x = 0.3174 },
            },
            dependsOn = { "accept-5727-hidden-enemies", "objective-5727-quest-work" },
            id = "turnin-5727-hidden-enemies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5727, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5726 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4610,
            text = "Kill Grimson the Pale and collect the Head of Grimson in Deep Elem Mine.",
            route = {
                { y = 0.4601, mapID = 1421, label = "Deep Elem Mine", offMapText = "Travel to Deep Elem Mine.", x = 0.5657 },
                { y = 0.4487, mapID = 1421, label = "Grimson the Pale", offMapText = "Travel to Grimson the Pale.", x = 0.5854 },
            },
            dependsOn = { "accept-424-arugal-s-folly" },
            id = "objective-424-1-grimson-the-pale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 424, text = "Head of Grimson", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 423 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4620,
            text = "Collect 8 Dalaran Pendants from Dalaran humans in Ambermill.",
            route = {
                { y = 0.6424, mapID = 1421, label = "Ambermill", offMapText = "Travel to Ambermill.", x = 0.5997 },
            },
            dependsOn = { "accept-479-ambermill-investigations" },
            id = "objective-479-1-dalaran-pendant",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 479, text = "Dalaran Pendant", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 482 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4630,
            text = "Turn in Arugal's Folly to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.4419 },
            },
            dependsOn = { "accept-424-arugal-s-folly", "objective-424-1-grimson-the-pale" },
            id = "turnin-424-arugal-s-folly",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 424, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 423 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4640,
            text = "Accept Arugal's Folly from Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.4419 },
            },
            dependsOn = { "turnin-424-arugal-s-folly" },
            id = "accept-99-arugal-s-folly",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 424 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4650,
            text = "Turn in Ambermill Investigations to Shadow Priest Allister.",
            route = {
                { y = 0.4093, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister.", x = 0.4398 },
            },
            dependsOn = { "accept-479-ambermill-investigations", "objective-479-1-dalaran-pendant" },
            id = "turnin-479-ambermill-investigations",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 479, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 482 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4660,
            text = "Collect 6 Pyrewood Shackles from Pyrewood villagers (or Moonrage forms at night).",
            route = {
                { y = 0.7246, mapID = 1421, label = "Pyrewood Village", offMapText = "Travel to Pyrewood Village.", x = 0.4697 },
            },
            dependsOn = { "accept-99-arugal-s-folly" },
            id = "objective-99-1-pyrewood-shackle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 99, text = "Pyrewood Shackle", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 424 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4670,
            text = "Turn in Arugal's Folly to Dalar Dawnweaver.",
            route = {
                { y = 0.3978, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.4419 },
            },
            dependsOn = { "accept-99-arugal-s-folly", "objective-99-1-pyrewood-shackle" },
            id = "turnin-99-arugal-s-folly",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 424 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4680,
            text = "Accept Watching the Roads from Shadow Priest Allister in the Sepulcher.",
            route = {
                { y = 0.41, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister.", x = 0.44 },
            },
            dependsOn = { "turnin-479-ambermill-investigations" },
            id = "woven-accept-95981-watching-the-roads",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95981, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 479 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4690,
            route = {
                { y = 0.746, mapID = 1421, label = "Dalaran Watcher", offMapText = "Travel to Dalaran Watcher.", x = 0.604 },
                { y = 0.652, mapID = 1421, label = "Dalaran Wizard", offMapText = "Travel to Dalaran Wizard.", x = 0.632 },
            },
            text = "Watching the Roads: slay 8 Dalaran Watchers and 8 Dalaran Wizards in Ambermill.",
            id = "woven-objective-95981-watching-the-roads",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95981, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 479 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95981-watching-the-roads" },
        },
        {
            priority = 4700,
            route = {
                { y = 0.41, mapID = 1421, label = "Shadow Priest Allister", offMapText = "Travel to Shadow Priest Allister.", x = 0.44 },
            },
            text = "Turn in Watching the Roads to Shadow Priest Allister in the Sepulcher.",
            id = "woven-turnin-95981-watching-the-roads",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95981, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 479 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95981-watching-the-roads", "woven-objective-95981-watching-the-roads" },
        },
        {
            priority = 4710,
            text = "Accept Arugal's Folly from Dalar Dawnweaver in the Sepulcher.",
            route = {
                { y = 0.398, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.442 },
            },
            dependsOn = { "turnin-99-arugal-s-folly" },
            id = "woven-accept-98298-arugals-folly",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98298, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 99 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4720,
            route = {
                { y = 0.74, mapID = 1421, label = "Moonrage Bloodhowler", offMapText = "Travel to Moonrage Bloodhowler.", x = 0.5 },
            },
            text = "Arugal's Folly: bring 6 Worgen Bits from Moonrage Bloodhowlers.",
            id = "woven-objective-98298-arugals-folly",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98298, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 99 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98298-arugals-folly" },
        },
        {
            priority = 4730,
            route = {
                { y = 0.398, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.442 },
            },
            text = "Turn in Arugal's Folly to Dalar Dawnweaver in the Sepulcher.",
            id = "woven-turnin-98298-arugals-folly",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98298, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 99 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98298-arugals-folly", "woven-objective-98298-arugals-folly" },
        },
        {
            priority = 4740,
            route = {
                { y = 0.398, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.442 },
            },
            text = "Accept Stop the Spread from Dalar Dawnweaver in the Sepulcher.",
            id = "woven-accept-98299-stop-the-spread",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98299, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 98298 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4750,
            route = {
                { y = 0.832, mapID = 1421, label = "Sickly Refugee", offMapText = "Travel to Sickly Refugee.", x = 0.454 },
                { y = 0.864, mapID = 1421, label = "Haggard Refugee", offMapText = "Travel to Haggard Refugee.", x = 0.462 },
            },
            text = "Stop the Spread: slay 5 Sickly Refugees and 5 Haggard Refugees by the Greymane Wall.",
            id = "woven-objective-98299-stop-the-spread",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98299, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 98298 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98299-stop-the-spread" },
        },
        {
            priority = 4760,
            route = {
                { y = 0.398, mapID = 1421, label = "Dalar Dawnweaver", offMapText = "Travel to Dalar Dawnweaver.", x = 0.442 },
            },
            text = "Turn in Stop the Spread to Dalar Dawnweaver in the Sepulcher.",
            id = "woven-turnin-98299-stop-the-spread",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98299, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 98298 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98299-stop-the-spread", "woven-objective-98299-stop-the-spread" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
