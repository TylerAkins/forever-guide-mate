local _, ns = ...

ns:RegisterGuide({
    revision = 14,
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
        },
        {
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
            route = {
                { y = 0.742, mapID = 1411, label = "Kali Remik", x = 0.062, offMapText = "Travel to Kali Remik in Durotar." },
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
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", x = 0.469, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
            route = {
                { y = 0.623, mapID = 1412, label = "Var'jun", x = 0.462, offMapText = "Travel to Var'jun in Mulgore." },
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
        },
        {
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
            route = {
                { y = 0.623, mapID = 1412, label = "Var'jun", x = 0.462, offMapText = "Travel to Var'jun in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
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
            route = {
                { y = 0.625, mapID = 1412, label = "Narm Skychaser", x = 0.474, offMapText = "Travel to Narm Skychaser in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", x = 0.443, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
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
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", x = 0.443, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
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
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", x = 0.443, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
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
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", x = 0.443, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
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
            useClientPin = false,
            dependsOn = { "woven-class-mage-accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
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
        },
        {
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
        },
        {
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            useClientPin = false,
            dependsOn = { "woven-class-druid-accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", x = 0.445, offMapText = "Travel to Grull Hawkwind in Mulgore." },
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
            route = {
                { y = 0.764, mapID = 1412, label = "Lanka Farshot", x = 0.440, offMapText = "Travel to Lanka Farshot in Mulgore." },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", x = 0.445, offMapText = "Travel to Grull Hawkwind in Mulgore." },
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
            route = {
                { y = 0.766, mapID = 1412, label = "Meela Dawnstrider", x = 0.446, offMapText = "Travel to Meela Dawnstrider in Mulgore." },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", x = 0.445, offMapText = "Travel to Grull Hawkwind in Mulgore." },
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
            route = {
                { y = 0.767, mapID = 1412, label = "Harutt Thunderhorn", x = 0.437, offMapText = "Travel to Harutt Thunderhorn in Mulgore." },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", x = 0.445, offMapText = "Travel to Grull Hawkwind in Mulgore." },
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
            route = {
                { y = 0.766, mapID = 1412, label = "Gart Mistrunner", x = 0.446, offMapText = "Travel to Gart Mistrunner in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
            route = {
                { y = 0.630, mapID = 1412, label = "Gennia Runetotem", x = 0.475, offMapText = "Travel to Gennia Runetotem in Mulgore." },
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
            classAction = "objective-91316-making-repairs",
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
        },
        {
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-447-a-recipe-for-death" },
        },
        {
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
        },
        {
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
            route = {
                { mapID = 1458, x = 0.832, y = 0.69, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity." },
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
        },
        {
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
