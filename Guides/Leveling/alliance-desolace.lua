local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Desolace",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-desolace",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 35 },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1799-fragments-of-the-orb-of-orahil",
        },
        {
            id = "level-before-woven-class-warlock-accept-4968-knowledge-of-the-orb-of-orahil",
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
            checkpointQuest = 4968,
            alternativeQuests = { 4965, 4967, 4969 },
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "woven-class-warlock-accept-4968-knowledge-of-the-orb-of-orahil",
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
            priority = 70,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4968-knowledge-of-the-orb-of-orahil" },
            id = "woven-class-warlock-turnin-4968-knowledge-of-the-orb-of-orahil",
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
            priority = 80,
            route = {
                { y = 0.06, mapID = 1455, label = "Briarthorn", x = 0.502, offMapText = "Travel to Briarthorn in Ironforge." },
            },
            id = "woven-class-warlock-accept-4965-knowledge-of-the-orb-of-orahil",
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
            priority = 90,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4965-knowledge-of-the-orb-of-orahil" },
            id = "woven-class-warlock-turnin-4965-knowledge-of-the-orb-of-orahil",
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                    { faction = "Alliance" },
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
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "woven-class-mage-accept-1953-return-to-the-marsh",
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
            priority = 350,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1953-return-to-the-marsh" },
            id = "woven-class-mage-turnin-1953-return-to-the-marsh",
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
            classAction = "turnin-1953-return-to-the-marsh",
        },
        {
            id = "level-before-turnin-1453-reclaimers-business-in-desolace",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1453,
            priority = 360,
        },
        {
            priority = 370,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Turn in Reclaimers' Business in Desolace to Kreldig Ungor.",
            id = "turnin-1453-reclaimers-business-in-desolace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1453, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            id = "accept-1454-the-karnitol-shipwreck",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1454, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            id = "accept-1458-reagents-for-reclaimers-inc",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1458, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            route = {
                { y = 0.1087, mapID = 1443, label = "Corporal Melkins", offMapText = "Travel to Corporal Melkins in Desolace.", x = 0.6674 },
            },
            text = "Accept Centaur Bounty from Corporal Melkins.",
            id = "accept-1387-centaur-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1387, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            route = {
                { y = 0.1093, mapID = 1443, label = "Captain Pentigast", offMapText = "Travel to Captain Pentigast in Desolace.", x = 0.6666 },
            },
            text = "Accept Strange Alliance from Captain Pentigast.",
            id = "accept-1382-strange-alliance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1382, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { y = 0.1182, mapID = 1443, label = "Vahlarriel Demonslayer", offMapText = "Travel to Vahlarriel Demonslayer in Desolace.", x = 0.6644 },
            },
            text = "Accept Vahlarriel's Search from Vahlarriel Demonslayer.",
            id = "accept-1437-vahlarriel-s-search",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1437, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Collect 10 Hatefury Claw.",
            route = {
                { y = 0.158, mapID = 1443, label = "Hatefury Trickster", offMapText = "Travel to Hatefury Trickster.", x = 0.694 },
            },
            dependsOn = { "accept-1458-reagents-for-reclaimers-inc" },
            id = "objective-1458-1-hatefury-trickster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1458, text = "Hatefury Trickster", index = 1, count = 10 },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Collect 10 Hatefury Horn.",
            route = {
                { y = 0.158, mapID = 1443, label = "Hatefury Horn", offMapText = "Travel to Hatefury Horn.", x = 0.694 },
            },
            dependsOn = { "accept-1458-reagents-for-reclaimers-inc" },
            id = "objective-1458-2-hatefury-horn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1458, text = "Hatefury Horn", index = 2, count = 10 },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            route = {
                { mapID = 1443, x = 0.662, y = 0.09630000000000001, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace." },
            },
            dependsOn = {
                "accept-1458-reagents-for-reclaimers-inc",
                "objective-1458-1-hatefury-trickster",
                "objective-1458-2-hatefury-horn",
            },
            id = "turnin-1458-reagents-for-reclaimers-inc",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1458, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { mapID = 1443, x = 0.662, y = 0.09630000000000001, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace." },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            id = "accept-1459-reagents-for-reclaimers-inc",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1459, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Vahlarriel's Search.",
            route = {
                { y = 0.1783, mapID = 1443, label = "Vahlarriel's Search", offMapText = "Travel to Vahlarriel's Search.", x = 0.5654 },
            },
            dependsOn = { "accept-1437-vahlarriel-s-search" },
            id = "turnin-1437-vahlarriel-s-search",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1437, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.1783, mapID = 1443, label = "Vahlarriel's Search", offMapText = "Travel to Vahlarriel's Search.", x = 0.5654 },
            },
            text = "Accept Vahlarriel's Search.",
            id = "accept-1465-vahlarriel-s-search",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1465, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1437 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5741-sceptre-of-light",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5741,
            priority = 490,
        },
        {
            priority = 500,
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888 },
            },
            text = "Accept Sceptre of Light from Azore Aldamort.",
            id = "accept-5741-sceptre-of-light",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5741, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in The Karnitol Shipwreck.",
            route = {
                { y = 0.3045, mapID = 1443, label = "The Karnitol Shipwreck", offMapText = "Travel to The Karnitol Shipwreck.", x = 0.3611 },
            },
            dependsOn = { "accept-1454-the-karnitol-shipwreck" },
            id = "turnin-1454-the-karnitol-shipwreck",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1454, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.3045, mapID = 1443, label = "The Karnitol Shipwreck", offMapText = "Travel to The Karnitol Shipwreck.", x = 0.3611 },
            },
            text = "Accept The Karnitol Shipwreck.",
            id = "accept-1455-the-karnitol-shipwreck",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1455, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1454 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.3041, mapID = 1443, label = "Claim Rackmore's Treasure!", offMapText = "Travel to Claim Rackmore's Treasure!.", x = 0.3607 },
            },
            text = "Accept Claim Rackmore's Treasure!.",
            id = "accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6161, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Collect 1 Rackmore's Silver Key.",
            route = {
                { y = 0.302, mapID = 1443, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.338 },
            },
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
            id = "objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6161, text = "Elixir of Water Breathing", index = 1, count = 1 },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in The Karnitol Shipwreck to Kreldig Ungor.",
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            dependsOn = { "accept-1455-the-karnitol-shipwreck" },
            id = "turnin-1455-the-karnitol-shipwreck",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1455, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1454 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            id = "accept-1456-the-karnitol-shipwreck",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1456, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1455 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            text = "Turn in Vahlarriel's Search to Vahlarriel Demonslayer.",
            route = {
                { y = 0.1182, mapID = 1443, label = "Vahlarriel Demonslayer", offMapText = "Travel to Vahlarriel Demonslayer in Desolace.", x = 0.6644 },
            },
            dependsOn = { "accept-1465-vahlarriel-s-search" },
            id = "turnin-1465-vahlarriel-s-search",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1465, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1437 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.1182, mapID = 1443, label = "Vahlarriel Demonslayer", offMapText = "Travel to Vahlarriel Demonslayer in Desolace.", x = 0.6644 },
            },
            text = "Accept Vahlarriel's Search from Vahlarriel Demonslayer.",
            id = "accept-1438-vahlarriel-s-search",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1438, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1465 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Collect 1 Sceptre of Light.",
            route = {
                { y = 0.3015, mapID = 1443, label = "Burning Blade Seer", offMapText = "Travel to Burning Blade Seer.", x = 0.5517 },
            },
            dependsOn = { "accept-5741-sceptre-of-light" },
            id = "objective-5741-1-burning-blade-seer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5741, text = "Burning Blade Seer", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in Vahlarriel's Search to Dalinda Malem.",
            route = {
                { y = 0.2613, mapID = 1443, label = "Dalinda Malem", offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486 },
            },
            dependsOn = { "accept-1438-vahlarriel-s-search" },
            id = "turnin-1438-vahlarriel-s-search",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1438, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1465 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.2613, mapID = 1443, label = "Dalinda Malem", offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486 },
            },
            text = "Accept Search for Tyranis from Dalinda Malem.",
            id = "accept-1439-search-for-tyranis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1439, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Collect 1 Tyranis' Pendant.",
            route = {
                { y = 0.2908, mapID = 1443, label = "Tyranis Malem", offMapText = "Travel to Tyranis Malem.", x = 0.5301 },
            },
            dependsOn = { "accept-1439-search-for-tyranis" },
            id = "objective-1439-1-tyranis-malem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1439, text = "Tyranis Malem", index = 1, count = 1 },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in Search for Tyranis to Dalinda Malem.",
            route = {
                { y = 0.2613, mapID = 1443, label = "Dalinda Malem", offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486 },
            },
            dependsOn = { "accept-1439-search-for-tyranis", "objective-1439-1-tyranis-malem" },
            id = "turnin-1439-search-for-tyranis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1439, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.2613, mapID = 1443, label = "Dalinda Malem", offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486 },
            },
            text = "Accept Return to Vahlarriel from Dalinda Malem.",
            id = "accept-1440-return-to-vahlarriel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1440, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1439 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1440-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Dalinda Malem out of the fortress until she reaches safety.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1439 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 1440, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1443, x = 0.5826, y = 0.3095, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 24,
            dependsOn = { "accept-1440-return-to-vahlarriel" },
            priority = 650,
        },
        {
            id = "level-before-accept-5501-bone-collector",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5501,
            priority = 660,
        },
        {
            priority = 670,
            route = {
                { y = 0.3898, mapID = 1443, label = "Bibbly F'utzbuckle", offMapText = "Travel to Bibbly F'utzbuckle in Desolace.", x = 0.6233 },
            },
            text = "Accept Bone Collector from Bibbly F'utzbuckle.",
            id = "accept-5501-bone-collector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 5501, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Collect 15 Centaur Ear.",
            route = {
                { y = 0.692, mapID = 1443, label = "Magram Outrunner", offMapText = "Travel to Magram Outrunner.", x = 0.69 },
            },
            dependsOn = { "accept-1387-centaur-bounty" },
            id = "objective-1387-1-magram-outrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1387, text = "Magram Outrunner", index = 1, count = 15 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.6186, mapID = 1443, label = "Smeed Scrabblescrew", offMapText = "Travel to Smeed Scrabblescrew in Desolace.", x = 0.6086 },
            },
            text = "Accept Kodo Roundup from Smeed Scrabblescrew.",
            id = "accept-5561-kodo-roundup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5561, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Use Kodo Kombobulator.",
            route = {
                { y = 0.603, mapID = 1443, label = "Kodo Kombobulator", offMapText = "Travel to Kodo Kombobulator.", x = 0.544 },
            },
            dependsOn = { "accept-5561-kodo-roundup" },
            id = "objective-5561-1-kodo-kombobulator",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 710,
            text = "Turn in Kodo Roundup to Smeed Scrabblescrew.",
            route = {
                { y = 0.6186, mapID = 1443, label = "Smeed Scrabblescrew", offMapText = "Travel to Smeed Scrabblescrew in Desolace.", x = 0.6086 },
            },
            dependsOn = { "accept-5561-kodo-roundup", "objective-5561-1-kodo-kombobulator" },
            id = "turnin-5561-kodo-roundup",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5561, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1459-2-aged-kodo-hide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Aged Kodo Hide.",
            complete = {
                questObjective = { id = 1459, index = 2, text = "Aged Kodo Hide", count = 3 },
            },
            route = {
                { mapID = 1443, x = 0.544, y = 0.603, label = "Aged Kodo Hide", offMapText = "Travel to Aged Kodo Hide." },
            },
            sourceStep = 30,
            priority = 720,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1459-reagents-for-reclaimers-inc" },
        },
        {
            id = "objective-5501-1-kodo-bone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 31,
            priority = 730,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5501-bone-collector" },
        },
        {
            priority = 740,
            text = "For Strange Alliance: Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.",
            id = "objective-1382-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1382, state = "complete" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1382-strange-alliance" },
        },
        {
            priority = 750,
            text = "Turn in Strange Alliance to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            dependsOn = { "accept-1382-strange-alliance", "objective-1382-quest-work" },
            id = "turnin-1382-strange-alliance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1382, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623 },
            },
            text = "Accept Raid on the Kolkar from Uthek the Wise.",
            id = "accept-1384-raid-on-the-kolkar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1384, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            text = "Turn in Centaur Bounty to Corporal Melkins.",
            route = {
                { y = 0.1087, mapID = 1443, label = "Corporal Melkins", offMapText = "Travel to Corporal Melkins in Desolace.", x = 0.6674 },
            },
            dependsOn = { "accept-1387-centaur-bounty", "objective-1387-1-magram-outrunner" },
            id = "turnin-1387-centaur-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1387, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "Turn in Return to Vahlarriel to Vahlarriel Demonslayer.",
            route = {
                { y = 0.1182, mapID = 1443, label = "Vahlarriel Demonslayer", offMapText = "Travel to Vahlarriel Demonslayer in Desolace.", x = 0.6644 },
            },
            dependsOn = { "accept-1440-return-to-vahlarriel", "objective-1440-reviewed-escort" },
            id = "turnin-1440-return-to-vahlarriel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1440, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1439 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            text = "Collect 10 Crude Charm.",
            route = {
                { y = 0.39, mapID = 1443, label = "Kolkar Ambusher", offMapText = "Travel to Kolkar Ambusher.", x = 0.684 },
            },
            dependsOn = { "accept-1384-raid-on-the-kolkar" },
            id = "objective-1384-1-kolkar-ambusher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1384, text = "Kolkar Ambusher", index = 1, count = 10 },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            text = "Turn in Bone Collector to Bibbly F'utzbuckle.",
            route = {
                { y = 0.3898, mapID = 1443, label = "Bibbly F'utzbuckle", offMapText = "Travel to Bibbly F'utzbuckle in Desolace.", x = 0.6233 },
            },
            dependsOn = { "accept-5501-bone-collector", "objective-5501-1-kodo-bone" },
            id = "turnin-5501-bone-collector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 5501, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            text = "Turn in Sceptre of Light to Azore Aldamort.",
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889 },
            },
            dependsOn = { "accept-5741-sceptre-of-light", "objective-5741-1-burning-blade-seer" },
            id = "turnin-5741-sceptre-of-light",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 5741, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.2717, mapID = 1443, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889 },
            },
            text = "Accept Book of the Ancients from Azore Aldamort.",
            id = "accept-6027-book-of-the-ancients",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6027, state = "activeOrCompleted" },
            },
            sourceStep = 38,
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
            text = "Collect 1 Book of the Ancients.",
            route = {
                { y = 0.0662, mapID = 1443, label = "Lord Kragaru", offMapText = "Travel to Lord Kragaru.", x = 0.2819 },
            },
            dependsOn = { "accept-6027-book-of-the-ancients" },
            id = "objective-6027-1-lord-kragaru",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6027, text = "Lord Kragaru", index = 1, count = 1 },
            },
            sourceStep = 39,
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
            id = "objective-1456-1-karnitol-s-satchel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Karnitol's Satchel.",
            complete = {
                questObjective = { id = 1456, index = 1, text = "Karnitol's Satchel", count = 1 },
            },
            route = {
                { mapID = 1443, x = 0.284, y = 0.122, label = "Karnitol's Satchel", offMapText = "Travel to Karnitol's Satchel." },
            },
            sourceStep = 40,
            priority = 840,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1455 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1456-the-karnitol-shipwreck" },
        },
        {
            id = "objective-6161-2-rackmore-s-golden-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 41,
            priority = 850,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6161-claim-rackmore-s-treasure" },
        },
        {
            priority = 860,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6161, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "Turn in Book of the Ancients to Azore Aldamort.",
            route = {
                { mapID = 1443, x = 0.3889, y = 0.2717, label = "Azore Aldamort", offMapText = "Travel to Azore Aldamort in Desolace." },
            },
            dependsOn = { "accept-6027-book-of-the-ancients", "objective-6027-1-lord-kragaru" },
            id = "turnin-6027-book-of-the-ancients",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 6027, state = "completed" },
            },
            sourceStep = 44,
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
            priority = 880,
            text = "Turn in Raid on the Kolkar to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            dependsOn = { "accept-1384-raid-on-the-kolkar", "objective-1384-1-kolkar-ambusher" },
            id = "turnin-1384-raid-on-the-kolkar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1384, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 890,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Accept Stealing Supplies from Uthek the Wise.",
            id = "accept-1370-stealing-supplies",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1370, state = "activeOrCompleted" },
            },
            sourceStep = 45,
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
            priority = 900,
            text = "Collect 6 Crudely Dried Meat.",
            route = {
                { y = 0.753, mapID = 1443, label = "Sack of Meat", offMapText = "Travel to Sack of Meat.", x = 0.709 },
            },
            dependsOn = { "accept-1370-stealing-supplies" },
            id = "objective-1370-1-sack-of-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1370, text = "Sack of Meat", index = 1, count = 6 },
            },
            sourceStep = 46,
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
            priority = 910,
            text = "Turn in Stealing Supplies to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            dependsOn = { "accept-1370-stealing-supplies", "objective-1370-1-sack-of-meat" },
            id = "turnin-1370-stealing-supplies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1370, state = "completed" },
            },
            sourceStep = 47,
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
            priority = 920,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Accept Ongeku from Uthek the Wise.",
            id = "accept-1373-ongeku",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1373, state = "activeOrCompleted" },
            },
            sourceStep = 47,
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
            priority = 930,
            text = "Turn in The Karnitol Shipwreck to Kreldig Ungor.",
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            dependsOn = { "accept-1456-the-karnitol-shipwreck", "objective-1456-1-karnitol-s-satchel" },
            id = "turnin-1456-the-karnitol-shipwreck",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1456, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1455 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            id = "accept-1457-the-karnitol-shipwreck",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1457, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1459-1-scorpashi-venom",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill Scorpashi scorpions in Desolace and collect 7 Scorpashi Venom.",
            complete = {
                questObjective = { id = 1459, index = 1, text = "Scorpashi Venom", count = 7 },
            },
            route = {
                { mapID = 1443, x = 0.6759999999999999, y = 0.18, label = "Scorpashi Venom", offMapText = "Travel to Scorpashi Venom." },
            },
            sourceStep = 50,
            priority = 950,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1459-reagents-for-reclaimers-inc" },
        },
        {
            priority = 960,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            route = {
                { mapID = 1443, x = 0.662, y = 0.09630000000000001, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace." },
            },
            dependsOn = {
                "accept-1459-reagents-for-reclaimers-inc",
                "objective-1459-2-aged-kodo-hide",
                "objective-1459-1-scorpashi-venom",
            },
            id = "turnin-1459-reagents-for-reclaimers-inc",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1459, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 970,
            route = {
                { y = 0.7726, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Parts for Kravel to Kravel Koalbeard.",
            id = "turnin-1112-parts-for-kravel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1112, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1111 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 980,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard.",
            id = "accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1114, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 990,
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts.",
            route = {
                { y = 0.7712, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            id = "turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1114, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1000,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept The Rumormonger from Kravel Koalbeard.",
            id = "accept-1115-the-rumormonger",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1115, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1114 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1010,
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Turn in Goblin Sponsorship to Pozzik.",
            id = "turnin-1183-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1183, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1182 },
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
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept The Eighteenth Pilot from Pozzik.",
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1186, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1030,
            text = "Turn in The Eighteenth Pilot to Razzeric.",
            route = {
                { y = 0.7609, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1186, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            route = {
                { y = 0.7609, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Accept Razzeric's Tweaking from Razzeric.",
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1187, state = "activeOrCompleted" },
            },
            sourceStep = 59,
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
