local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Desolace",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-desolace",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 34 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-warlock-accept-1799-fragments-of-the-orb-of-orahil",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1799,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1799-fragments-of-the-orb-of-orahil",
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
                },
            },
            useClientPin = false,
            classAction = "accept-1799-fragments-of-the-orb-of-orahil",
        },
        {
            priority = 30,
            id = "woven-class-warlock-objective-1799-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1799-fragments-of-the-orb-of-orahil" },
            classAction = "objective-1799-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {
                "woven-class-warlock-accept-1799-fragments-of-the-orb-of-orahil",
                "woven-class-warlock-objective-1799-quest-work",
            },
            id = "woven-class-warlock-turnin-1799-fragments-of-the-orb-of-orahil",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-1799-fragments-of-the-orb-of-orahil",
        },
        {
            id = "level-before-woven-class-warlock-accept-4969-knowledge-of-the-orb-of-orahil",
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
            checkpointQuest = 4969,
            alternativeQuests = { 4965, 4967, 4968 },
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "woven-class-warlock-accept-4969-knowledge-of-the-orb-of-orahil",
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
            priority = 70,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4969-knowledge-of-the-orb-of-orahil" },
            id = "woven-class-warlock-turnin-4969-knowledge-of-the-orb-of-orahil",
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
            priority = 80,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "woven-class-warlock-accept-4967-knowledge-of-the-orb-of-orahil",
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
            priority = 90,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4967-knowledge-of-the-orb-of-orahil" },
            id = "woven-class-warlock-turnin-4967-knowledge-of-the-orb-of-orahil",
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
            priority = 100,
            route = {
                { y = 0.352, mapID = 1413, label = "Acolyte Wytula", x = 0.626, offMapText = "Travel to Acolyte Wytula in The Barrens." },
            },
            id = "woven-class-warlock-accept-4962-shard-of-a-felhound",
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
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4962-shard-of-a-felhound",
        },
        {
            priority = 110,
            id = "woven-class-warlock-objective-4962-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4962-shard-of-a-felhound" },
            classAction = "objective-4962-quest-work",
        },
        {
            priority = 120,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4962-shard-of-a-felhound", "woven-class-warlock-objective-4962-quest-work" },
            id = "woven-class-warlock-turnin-4962-shard-of-a-felhound",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4962-shard-of-a-felhound",
        },
        {
            priority = 130,
            route = {
                { y = 0.352, mapID = 1413, label = "Acolyte Magaz", x = 0.626, offMapText = "Travel to Acolyte Magaz in The Barrens." },
            },
            id = "woven-class-warlock-accept-4963-shard-of-an-infernal",
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
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4963-shard-of-an-infernal",
        },
        {
            priority = 140,
            id = "woven-class-warlock-objective-4963-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4963-shard-of-an-infernal" },
            classAction = "objective-4963-quest-work",
        },
        {
            priority = 150,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4963-shard-of-an-infernal", "woven-class-warlock-objective-4963-quest-work" },
            id = "woven-class-warlock-turnin-4963-shard-of-an-infernal",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4963-shard-of-an-infernal",
        },
        {
            priority = 160,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4961-cleansing-of-the-orb-of-orahil",
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
                },
            },
            useClientPin = false,
            classAction = "accept-4961-cleansing-of-the-orb-of-orahil",
        },
        {
            priority = 170,
            id = "woven-class-warlock-objective-4961-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4961-cleansing-of-the-orb-of-orahil" },
            classAction = "objective-4961-quest-work",
        },
        {
            priority = 180,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4961-cleansing-of-the-orb-of-orahil",
                "woven-class-warlock-objective-4961-quest-work",
            },
            id = "woven-class-warlock-turnin-4961-cleansing-of-the-orb-of-orahil",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4961-cleansing-of-the-orb-of-orahil",
        },
        {
            priority = 190,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4976-returning-the-cleansed-orb",
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
                },
            },
            useClientPin = false,
            classAction = "accept-4976-returning-the-cleansed-orb",
        },
        {
            priority = 200,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4976-returning-the-cleansed-orb" },
            id = "woven-class-warlock-turnin-4976-returning-the-cleansed-orb",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4976-returning-the-cleansed-orb",
        },
        {
            priority = 210,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4975-the-completed-orb-of-nohorahil",
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
                },
            },
            useClientPin = false,
            classAction = "accept-4975-the-completed-orb-of-nohorahil",
        },
        {
            priority = 220,
            id = "woven-class-warlock-objective-4975-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4975-the-completed-orb-of-nohorahil" },
            classAction = "objective-4975-quest-work",
        },
        {
            priority = 230,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4975-the-completed-orb-of-nohorahil",
                "woven-class-warlock-objective-4975-quest-work",
            },
            id = "woven-class-warlock-turnin-4975-the-completed-orb-of-nohorahil",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4975-the-completed-orb-of-nohorahil",
        },
        {
            priority = 240,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4964-the-completed-orb-of-darorahil",
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
                },
            },
            useClientPin = false,
            classAction = "accept-4964-the-completed-orb-of-darorahil",
        },
        {
            priority = 250,
            id = "woven-class-warlock-objective-4964-quest-work",
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
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4964-the-completed-orb-of-darorahil" },
            classAction = "objective-4964-quest-work",
        },
        {
            priority = 260,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4964-the-completed-orb-of-darorahil",
                "woven-class-warlock-objective-4964-quest-work",
            },
            id = "woven-class-warlock-turnin-4964-the-completed-orb-of-darorahil",
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
                },
            },
            useClientPin = false,
            classAction = "turnin-4964-the-completed-orb-of-darorahil",
        },
        {
            id = "level-before-woven-class-mage-accept-1954-the-infernal-orb",
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
            checkpointQuest = 1954,
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1954-the-infernal-orb",
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
            classAction = "accept-1954-the-infernal-orb",
        },
        {
            priority = 290,
            id = "woven-class-mage-objective-1954-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1954-the-infernal-orb" },
            classAction = "objective-1954-quest-work",
        },
        {
            priority = 300,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1954-the-infernal-orb", "woven-class-mage-objective-1954-quest-work" },
            id = "woven-class-mage-turnin-1954-the-infernal-orb",
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
            classAction = "turnin-1954-the-infernal-orb",
        },
        {
            priority = 310,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1955-the-exorcism",
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
            classAction = "accept-1955-the-exorcism",
        },
        {
            priority = 320,
            id = "woven-class-mage-objective-1955-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1955-the-exorcism" },
            classAction = "objective-1955-quest-work",
        },
        {
            priority = 330,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1955-the-exorcism", "woven-class-mage-objective-1955-quest-work" },
            id = "woven-class-mage-turnin-1955-the-exorcism",
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
            classAction = "turnin-1955-the-exorcism",
        },
        {
            priority = 340,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "woven-class-mage-accept-1953-return-to-the-marsh-horde",
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
            priority = 350,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1953-return-to-the-marsh-horde" },
            id = "woven-class-mage-turnin-1953-return-to-the-marsh",
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
            classAction = "turnin-1953-return-to-the-marsh",
        },
        {
            id = "loot-starter-before-accept-1480-the-corrupter",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Flayed Demon Skin from Burning Blade Augur, Burning Blade Summoner, Burning Blade Seer. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Flayed Demon Skin", minCount = 1 },
                    },
                    {
                        quest = { id = 1480, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 360,
        },
        {
            id = "level-before-accept-1480-the-corrupter",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 25 },
            },
            requiredLevel = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1480,
            priority = 370,
        },
        {
            priority = 380,
            text = "Use the Flayed Demon Skin to accept The Corrupter.",
            id = "accept-1480-the-corrupter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1480, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5741-sceptre-of-light",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5741,
            priority = 390,
        },
        {
            priority = 400,
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888 },
            },
            text = "Accept Sceptre of Light from Azore Aldamort.",
            id = "accept-5741-sceptre-of-light",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5741, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-5361-family-tree",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5361,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { mapID = 1443, x = 0.5540999999999999, y = 0.5581, label = "Nataka Longhorn", offMapText = "Travel to Nataka Longhorn in Desolace." },
            },
            text = "Turn in Family Tree to Nataka Longhorn.",
            id = "turnin-5361-family-tree",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5361, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { y = 0.5439, mapID = 1443, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace.", x = 0.5257 },
            },
            text = "Turn in Alliance Relations to Takata Steelblade.",
            id = "turnin-1432-alliance-relations",
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
                quest = { id = 1432, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1431 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            route = {
                { y = 0.5439, mapID = 1443, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace.", x = 0.5257 },
            },
            text = "Accept Alliance Relations from Takata Steelblade.",
            id = "accept-1433-alliance-relations",
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
                quest = { id = 1433, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.5439, mapID = 1443, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace.", x = 0.5257 },
            },
            text = "Accept Befouled by Satyr from Takata Steelblade.",
            id = "accept-1434-befouled-by-satyr",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1434, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Alliance Relations to Maurin Bonesplitter.",
            route = {
                { y = 0.5344, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5224 },
            },
            dependsOn = { "accept-1433-alliance-relations" },
            id = "turnin-1433-alliance-relations",
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
                quest = { id = 1433, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.5344, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5224 },
            },
            text = "Accept The Burning of Spirits from Maurin Bonesplitter.",
            id = "accept-1435-the-burning-of-spirits",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1435, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1433 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            route = {
                { y = 0.5344, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5224 },
            },
            dependsOn = { "accept-1480-the-corrupter" },
            id = "turnin-1480-the-corrupter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1480, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.5344, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5224 },
            },
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            id = "accept-1481-the-corrupter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1481, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1480 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.5957, mapID = 1443, label = "Felgur Twocuts", offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562 },
            },
            text = "Accept Khan Dez'hepah from Felgur Twocuts.",
            id = "accept-1365-khan-dez-hepah",
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
                quest = { id = 1365, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            route = {
                { y = 0.5968, mapID = 1443, label = "Gurda Wildmane", offMapText = "Travel to Gurda Wildmane in Desolace.", x = 0.5629 },
            },
            text = "Accept Gelkis Alliance from Gurda Wildmane.",
            id = "accept-1368-gelkis-alliance",
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
                quest = { id = 1368, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Collect 1 Khan Dez'hepah's Head.",
            route = {
                { y = 0.4884, mapID = 1443, label = "Khan Dez'hepah", offMapText = "Travel to Khan Dez'hepah.", x = 0.7468 },
            },
            dependsOn = { "accept-1365-khan-dez-hepah" },
            id = "objective-1365-1-khan-dez-hepah",
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
                questObjective = { id = 1365, text = "Khan Dez'hepah", index = 1, count = 1 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Collect 1 Shadowstalker Scalp.",
            route = {
                { y = 0.242, mapID = 1443, label = "Hatefury Shadowstalker", offMapText = "Travel to Hatefury Shadowstalker.", x = 0.724 },
            },
            dependsOn = { "accept-1481-the-corrupter" },
            id = "objective-1481-1-hatefury-shadowstalker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1481, text = "Hatefury Shadowstalker", index = 1, count = 1 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1480 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1434-1-hatefury-rogue",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Hatefury Rogue.",
            complete = {
                questObjective = { id = 1434, index = 1, text = "Hatefury Rogue", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.7240000000000001, y = 0.242, label = "Hatefury Rogue", offMapText = "Travel to Hatefury Rogue." },
            },
            sourceStep = 12,
            priority = 540,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1434-befouled-by-satyr" },
        },
        {
            id = "objective-1434-2-hatefury-felsworn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Hatefury Felsworn.",
            complete = {
                questObjective = { id = 1434, index = 2, text = "Hatefury Felsworn", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.7240000000000001, y = 0.242, label = "Hatefury Felsworn", offMapText = "Travel to Hatefury Felsworn." },
            },
            sourceStep = 12,
            priority = 550,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1434-befouled-by-satyr" },
        },
        {
            id = "objective-1434-3-hatefury-betrayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Hatefury Betrayer.",
            complete = {
                questObjective = { id = 1434, index = 3, text = "Hatefury Betrayer", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.7240000000000001, y = 0.242, label = "Hatefury Betrayer", offMapText = "Travel to Hatefury Betrayer." },
            },
            sourceStep = 12,
            priority = 560,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1434-befouled-by-satyr" },
        },
        {
            id = "objective-1434-4-hatefury-hellcaller",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Hatefury Hellcaller.",
            complete = {
                questObjective = { id = 1434, index = 4, text = "Hatefury Hellcaller", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.7240000000000001, y = 0.242, label = "Hatefury Hellcaller", offMapText = "Travel to Hatefury Hellcaller." },
            },
            sourceStep = 12,
            priority = 570,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1434-befouled-by-satyr" },
        },
        {
            id = "level-before-accept-5501-bone-collector",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5501,
            priority = 580,
        },
        {
            priority = 590,
            route = {
                { y = 0.3898, mapID = 1443, label = "Bibbly F'utzbuckle", offMapText = "Travel to Bibbly F'utzbuckle in Desolace.", x = 0.6233 },
            },
            text = "Accept Bone Collector from Bibbly F'utzbuckle.",
            id = "accept-5501-bone-collector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 5501, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            text = "Turn in Befouled by Satyr to Takata Steelblade.",
            route = {
                { mapID = 1443, x = 0.5257000000000001, y = 0.5438000000000001, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace." },
            },
            dependsOn = {
                "accept-1434-befouled-by-satyr",
                "objective-1434-1-hatefury-rogue",
                "objective-1434-2-hatefury-felsworn",
                "objective-1434-3-hatefury-betrayer",
                "objective-1434-4-hatefury-hellcaller",
            },
            id = "turnin-1434-befouled-by-satyr",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1434, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1432 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            route = {
                { y = 0.5345, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5225 },
            },
            dependsOn = { "accept-1481-the-corrupter", "objective-1481-1-hatefury-shadowstalker" },
            id = "turnin-1481-the-corrupter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1481, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1480 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            route = {
                { y = 0.5345, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5225 },
            },
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            id = "accept-1482-the-corrupter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1482, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in Khan Dez'hepah to Felgur Twocuts.",
            route = {
                { y = 0.5956, mapID = 1443, label = "Felgur Twocuts", offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562 },
            },
            dependsOn = { "accept-1365-khan-dez-hepah", "objective-1365-1-khan-dez-hepah" },
            id = "turnin-1365-khan-dez-hepah",
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
                quest = { id = 1365, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.5956, mapID = 1443, label = "Felgur Twocuts", offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562 },
            },
            text = "Accept Centaur Bounty from Felgur Twocuts.",
            id = "accept-1366-centaur-bounty",
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
                quest = { id = 1366, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Collect 15 Centaur Ear.",
            route = {
                { y = 0.692, mapID = 1443, label = "Magram Outrunner", offMapText = "Travel to Magram Outrunner.", x = 0.69 },
            },
            dependsOn = { "accept-1366-centaur-bounty" },
            id = "objective-1366-1-magram-outrunner",
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
                questObjective = { id = 1366, text = "Magram Outrunner", index = 1, count = 15 },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { y = 0.6186, mapID = 1443, label = "Smeed Scrabblescrew", offMapText = "Travel to Smeed Scrabblescrew in Desolace.", x = 0.6086 },
            },
            text = "Accept Kodo Roundup from Smeed Scrabblescrew.",
            id = "accept-5561-kodo-roundup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5561, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Use Kodo Kombobulator.",
            route = {
                { y = 0.603, mapID = 1443, label = "Kodo Kombobulator", offMapText = "Travel to Kodo Kombobulator.", x = 0.544 },
            },
            dependsOn = { "accept-5561-kodo-roundup" },
            id = "objective-5561-1-kodo-kombobulator",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5561, text = "Kodo Kombobulator", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            text = "Turn in Kodo Roundup to Smeed Scrabblescrew.",
            route = {
                { y = 0.6186, mapID = 1443, label = "Smeed Scrabblescrew", offMapText = "Travel to Smeed Scrabblescrew in Desolace.", x = 0.6086 },
            },
            dependsOn = { "accept-5561-kodo-roundup", "objective-5561-1-kodo-kombobulator" },
            id = "turnin-5561-kodo-roundup",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5561, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5501-1-kodo-bone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            text = "Collect 10 Kodo Bone.",
            complete = {
                questObjective = { id = 5501, index = 1, text = "Kodo Bone", count = 10 },
            },
            route = {
                { mapID = 1443, x = 0.544, y = 0.603, label = "Kodo Bone", offMapText = "Travel to Kodo Bone." },
            },
            sourceStep = 21,
            priority = 690,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5501-bone-collector" },
        },
        {
            priority = 700,
            text = "Turn in Centaur Bounty to Felgur Twocuts.",
            route = {
                { y = 0.5956, mapID = 1443, label = "Felgur Twocuts", offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.5619 },
            },
            dependsOn = { "accept-1366-centaur-bounty", "objective-1366-1-magram-outrunner" },
            id = "turnin-1366-centaur-bounty",
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
                quest = { id = 1366, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "For Gelkis Alliance: Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.",
            id = "objective-1368-quest-work",
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
                quest = { id = 1368, state = "complete" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1368-gelkis-alliance" },
        },
        {
            priority = 720,
            text = "Turn in Gelkis Alliance to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            dependsOn = { "accept-1368-gelkis-alliance", "objective-1368-quest-work" },
            id = "turnin-1368-gelkis-alliance",
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
                quest = { id = 1368, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            text = "Accept Stealing Supplies from Uthek the Wise.",
            id = "accept-1370-stealing-supplies",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1370, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1368, 1384 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            route = {
                { mapID = 1443, x = 0.2581, y = 0.6822, label = "Taiga Wisemane", offMapText = "Travel to Taiga Wisemane in Desolace." },
            },
            text = "Accept Hand of Iruxos from Taiga Wisemane.",
            id = "accept-5381-hand-of-iruxos",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5381, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            route = {
                { y = 0.7287, mapID = 1443, label = "Drulzegar Skraghook", offMapText = "Travel to Drulzegar Skraghook in Desolace.", x = 0.2332 },
            },
            text = "Accept Other Fish to Fry from Drulzegar Skraghook.",
            id = "accept-6143-other-fish-to-fry",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6143, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            route = {
                { y = 0.7197, mapID = 1443, label = "Mai'Lahii", offMapText = "Travel to Mai'Lahii in Desolace.", x = 0.2265 },
            },
            text = "Accept Clam Bait from Mai'Lahii.",
            id = "accept-6142-clam-bait",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6142, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            text = "Turn in Bone Collector to Bibbly F'utzbuckle.",
            route = {
                { y = 0.3898, mapID = 1443, label = "Bibbly F'utzbuckle", offMapText = "Travel to Bibbly F'utzbuckle in Desolace.", x = 0.6233 },
            },
            dependsOn = { "accept-5501-bone-collector", "objective-5501-1-kodo-bone" },
            id = "turnin-5501-bone-collector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 5501, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "Collect 1 Sceptre of Light.",
            route = {
                { y = 0.3015, mapID = 1443, label = "Burning Blade Seer", offMapText = "Travel to Burning Blade Seer.", x = 0.5517 },
            },
            dependsOn = { "accept-5741-sceptre-of-light" },
            id = "objective-5741-1-burning-blade-seer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5741, text = "Burning Blade Seer", index = 1, count = 1 },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            text = "Collect 1 Demon Box.",
            route = {
                { y = 0.2665, mapID = 1443, label = "Hand of Iruxos Crystal", offMapText = "Travel to Hand of Iruxos Crystal.", x = 0.5497 },
            },
            dependsOn = { "accept-5381-hand-of-iruxos" },
            id = "objective-5381-1-hand-of-iruxos-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5381, text = "Hand of Iruxos Crystal", index = 1, count = 1 },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1435-1-infused-burning-gem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 15 Infused Burning Gem.",
            complete = {
                questObjective = { id = 1435, index = 1, text = "Infused Burning Gem", count = 15 },
            },
            route = {
                { mapID = 1443, x = 0.56, y = 0.294, label = "Infused Burning Gem", offMapText = "Travel to Infused Burning Gem." },
            },
            sourceStep = 35,
            priority = 800,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1433 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1435-the-burning-of-spirits" },
        },
        {
            priority = 810,
            text = "Turn in Sceptre of Light to Azore Aldamort.",
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888 },
            },
            dependsOn = { "accept-5741-sceptre-of-light", "objective-5741-1-burning-blade-seer" },
            id = "turnin-5741-sceptre-of-light",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5741, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888 },
            },
            text = "Accept Book of the Ancients from Azore Aldamort.",
            id = "accept-6027-book-of-the-ancients",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6027, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { y = 0.3041, mapID = 1443, label = "Claim Rackmore's Treasure!", offMapText = "Travel to Claim Rackmore's Treasure!.", x = 0.3607 },
            },
            text = "Accept Claim Rackmore's Treasure!.",
            id = "accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6161, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Collect 1 Rackmore's Silver Key.",
            route = {
                { y = 0.302, mapID = 1443, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.338 },
            },
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
            id = "objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6161, text = "Elixir of Water Breathing", index = 1, count = 1 },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-6142-1-soft-shelled-clam-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Soft-shelled Clam Meat.",
            complete = {
                questObjective = { id = 6142, index = 1, text = "Soft-shelled Clam Meat", count = 10 },
            },
            route = {
                { mapID = 1443, x = 0.33, y = 0.284, label = "Soft-shelled Clam Meat", offMapText = "Travel to Soft-shelled Clam Meat." },
            },
            sourceStep = 39,
            priority = 850,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6142-clam-bait" },
        },
        {
            id = "objective-6161-2-rackmore-s-golden-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Rackmore's Golden Key.",
            complete = {
                questObjective = { id = 6161, index = 2, text = "Rackmore's Golden Key", count = 1 },
            },
            route = {
                { mapID = 1443, x = 0.292, y = 0.136, label = "Rackmore's Golden Key", offMapText = "Travel to Rackmore's Golden Key." },
            },
            sourceStep = 40,
            priority = 860,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
        },
        {
            priority = 870,
            text = "Turn in Claim Rackmore's Treasure!.",
            route = {
                { y = 0.087, mapID = 1443, label = "Claim Rackmore's Treasure!", offMapText = "Travel to Claim Rackmore's Treasure!.", x = 0.3 },
            },
            dependsOn = {
                "accept-6161-claim-rackmore-s-treasure",
                "objective-6161-1-elixir-of-water-breathing",
                "objective-6161-2-rackmore-s-golden-key",
            },
            id = "turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6161, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            text = "Collect 1 Book of the Ancients.",
            route = {
                { y = 0.0662, mapID = 1443, label = "Lord Kragaru", offMapText = "Travel to Lord Kragaru.", x = 0.2819 },
            },
            dependsOn = { "accept-6027-book-of-the-ancients" },
            id = "objective-6027-1-lord-kragaru",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6027, text = "Lord Kragaru", index = 1, count = 1 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1482-1-oracle-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Oracle Crystal.",
            complete = {
                questObjective = { id = 1482, index = 1, text = "Oracle Crystal", count = 1 },
            },
            route = {
                { mapID = 1443, x = 0.27399999999999997, y = 0.08, label = "Oracle Crystal", offMapText = "Travel to Oracle Crystal." },
            },
            sourceStep = 44,
            priority = 890,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1482-the-corrupter" },
        },
        {
            id = "objective-6143-1-slitherblade-myrmidon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Slitherblade Myrmidon.",
            complete = {
                questObjective = { id = 6143, index = 1, text = "Slitherblade Myrmidon", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.292, y = 0.136, label = "Slitherblade Myrmidon", offMapText = "Travel to Slitherblade Myrmidon." },
            },
            sourceStep = 45,
            priority = 900,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6143-other-fish-to-fry" },
        },
        {
            id = "objective-6143-3-slitherblade-sorceress",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 5 Slitherblade Sorceress.",
            complete = {
                questObjective = { id = 6143, index = 3, text = "Slitherblade Sorceress", count = 5 },
            },
            route = {
                { mapID = 1443, x = 0.344, y = 0.22399999999999998, label = "Slitherblade Sorceress", offMapText = "Travel to Slitherblade Sorceress." },
            },
            sourceStep = 46,
            priority = 910,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6143-other-fish-to-fry" },
        },
        {
            id = "objective-6143-2-slitherblade-naga",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Slitherblade Naga.",
            complete = {
                questObjective = { id = 6143, index = 2, text = "Slitherblade Naga", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.354, y = 0.214, label = "Slitherblade Naga", offMapText = "Travel to Slitherblade Naga." },
            },
            sourceStep = 47,
            priority = 920,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6143-other-fish-to-fry" },
        },
        {
            priority = 930,
            text = "Turn in Book of the Ancients to Azore Aldamort.",
            route = {
                { mapID = 1443, x = 0.3889, y = 0.2717, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace." },
            },
            dependsOn = { "accept-6027-book-of-the-ancients", "objective-6027-1-lord-kragaru" },
            id = "turnin-6027-book-of-the-ancients",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6027, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            text = "Turn in The Burning of Spirits to Maurin Bonesplitter.",
            route = {
                { mapID = 1443, x = 0.5224, y = 0.5344, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace." },
            },
            dependsOn = { "accept-1435-the-burning-of-spirits", "objective-1435-1-infused-burning-gem" },
            id = "turnin-1435-the-burning-of-spirits",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1435, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1433 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            route = {
                { mapID = 1443, x = 0.5224, y = 0.5344, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace." },
            },
            dependsOn = { "accept-1482-the-corrupter", "objective-1482-1-oracle-crystal" },
            id = "turnin-1482-the-corrupter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1482, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            route = {
                { y = 0.5344, mapID = 1443, label = "Maurin Bonesplitter", offMapText = "Travel to Maurin Bonesplitter in Desolace.", x = 0.5225 },
            },
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            id = "accept-1484-the-corrupter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1484, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1482 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 970,
            text = "Turn in The Corrupter to Takata Steelblade.",
            route = {
                { y = 0.5438, mapID = 1443, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace.", x = 0.5257 },
            },
            dependsOn = { "accept-1484-the-corrupter" },
            id = "turnin-1484-the-corrupter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1484, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1482 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 980,
            route = {
                { y = 0.5438, mapID = 1443, label = "Takata Steelblade", offMapText = "Travel to Takata Steelblade in Desolace.", x = 0.5257 },
            },
            text = "Accept Alliance Relations from Takata Steelblade.",
            id = "accept-1436-alliance-relations",
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
                quest = { id = 1436, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1434, 1435 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 990,
            text = "Collect 6 Crudely Dried Meat.",
            route = {
                { y = 0.753, mapID = 1443, label = "Sack of Meat", offMapText = "Travel to Sack of Meat.", x = 0.709 },
            },
            dependsOn = { "accept-1370-stealing-supplies" },
            id = "objective-1370-1-sack-of-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1370, text = "Sack of Meat", index = 1, count = 6 },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1368, 1384 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1000,
            text = "Turn in Stealing Supplies to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            dependsOn = { "accept-1370-stealing-supplies", "objective-1370-1-sack-of-meat" },
            id = "turnin-1370-stealing-supplies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1370, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1368, 1384 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            text = "Accept Ongeku from Uthek the Wise.",
            id = "accept-1373-ongeku",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1373, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1020,
            route = {
                { mapID = 1443, x = 0.2505, y = 0.7228, label = "Roon Wildmane", offMapText = "Travel to Roon Wildmane in Desolace." },
            },
            text = "Accept Hunting in Stranglethorn from Roon Wildmane.",
            id = "accept-5763-hunting-in-stranglethorn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5763, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1030,
            text = "Turn in Hand of Iruxos to Taiga Wisemane.",
            route = {
                { y = 0.6822, mapID = 1443, label = "Taiga Wisemane", offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581 },
            },
            dependsOn = { "accept-5381-hand-of-iruxos", "objective-5381-1-hand-of-iruxos-crystal" },
            id = "turnin-5381-hand-of-iruxos",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5381, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            text = "Turn in Other Fish to Fry to Drulzegar Skraghook.",
            route = {
                { y = 0.7287, mapID = 1443, label = "Drulzegar Skraghook", offMapText = "Travel to Drulzegar Skraghook in Desolace.", x = 0.2332 },
            },
            dependsOn = {
                "accept-6143-other-fish-to-fry",
                "objective-6143-1-slitherblade-myrmidon",
                "objective-6143-3-slitherblade-sorceress",
                "objective-6143-2-slitherblade-naga",
            },
            id = "turnin-6143-other-fish-to-fry",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6143, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Turn in Clam Bait to Mai'Lahii.",
            route = {
                { y = 0.7197, mapID = 1443, label = "Mai'Lahii", offMapText = "Travel to Mai'Lahii in Desolace.", x = 0.2264 },
            },
            dependsOn = { "accept-6142-clam-bait", "objective-6142-1-soft-shelled-clam-meat" },
            id = "turnin-6142-clam-bait",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6142, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Alliance Relations to Keldran.",
            route = {
                { y = 0.5263, mapID = 1454, label = "Keldran", offMapText = "Travel to Keldran in Orgrimmar.", x = 0.2256 },
            },
            dependsOn = { "accept-1436-alliance-relations" },
            id = "turnin-1436-alliance-relations",
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
                quest = { id = 1436, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1434, 1435 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
