local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "The Barrens & Stonetalon Mountain",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 15 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-rogue-accept-2380-to-orgrimmar",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 2380,
            alternativeQuests = { 2378 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.436, mapID = 1411, label = "Kaplak", x = 0.52, offMapText = "Travel to Kaplak in Durotar." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-2380-to-orgrimmar",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2380-to-orgrimmar",
        },
        {
            priority = 30,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "woven-class-rogue-accept-2380-to-orgrimmar" },
            id = "woven-class-rogue-turnin-2380-to-orgrimmar",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2380-to-orgrimmar",
        },
        {
            id = "level-before-woven-class-rogue-accept-2378-find-the-shattered-hand",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
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
            checkpointQuest = 2378,
            alternativeQuests = { 2380 },
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            id = "woven-class-rogue-accept-2378-find-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2378-find-the-shattered-hand",
        },
        {
            priority = 60,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "woven-class-rogue-accept-2378-find-the-shattered-hand" },
            id = "woven-class-rogue-turnin-2378-find-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2378-find-the-shattered-hand",
        },
        {
            id = "level-before-woven-class-rogue-accept-1998-fenwick-thatros",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1998,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            id = "woven-class-rogue-accept-1998-fenwick-thatros",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1998-fenwick-thatros",
        },
        {
            priority = 90,
            id = "woven-class-rogue-objective-1998-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-1998-fenwick-thatros" },
            classAction = "objective-1998-quest-work",
        },
        {
            priority = 100,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "woven-class-rogue-accept-1998-fenwick-thatros", "woven-class-rogue-objective-1998-quest-work" },
            id = "woven-class-rogue-turnin-1998-fenwick-thatros",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1998-fenwick-thatros",
        },
        {
            priority = 110,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-1999-tools-of-the-trade",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1999-tools-of-the-trade",
        },
        {
            priority = 120,
            id = "woven-class-rogue-objective-1999-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-1999-tools-of-the-trade" },
            classAction = "objective-1999-quest-work",
        },
        {
            priority = 130,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "woven-class-rogue-accept-1999-tools-of-the-trade", "woven-class-rogue-objective-1999-quest-work" },
            id = "woven-class-rogue-turnin-1999-tools-of-the-trade",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1999-tools-of-the-trade",
        },
        {
            id = "level-before-woven-class-mage-accept-1960-investigate-the-alchemist-shop",
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
            checkpointQuest = 1960,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1960-investigate-the-alchemist-shop",
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
            priority = 160,
            id = "woven-class-mage-objective-1960-quest-work",
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
            dependsOn = { "woven-class-mage-accept-1960-investigate-the-alchemist-shop" },
            classAction = "objective-1960-quest-work",
        },
        {
            priority = 170,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = {
                "woven-class-mage-accept-1960-investigate-the-alchemist-shop",
                "woven-class-mage-objective-1960-quest-work",
            },
            id = "woven-class-mage-turnin-1960-investigate-the-alchemist-shop",
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
            id = "level-before-woven-class-mage-accept-1961-gathering-materials",
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
            priority = 180,
        },
        {
            priority = 190,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1961-gathering-materials",
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
            priority = 200,
            dependsOn = { "woven-class-mage-accept-1961-gathering-materials" },
            id = "woven-class-mage-objective-1961-gathering-materials",
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
            priority = 210,
            route = {
                { y = 0.304, mapID = 1458, label = "Josef Gregorian", x = 0.706, offMapText = "Travel to Josef Gregorian in Undercity." },
            },
            dependsOn = { "woven-class-mage-accept-1961-gathering-materials", "woven-class-mage-objective-1961-gathering-materials" },
            id = "woven-class-mage-turnin-1961-gathering-materials",
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
            priority = 220,
            route = {
                { y = 0.302, mapID = 1458, label = "Rhiannon Davis", x = 0.702, offMapText = "Travel to Rhiannon Davis in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1962-spellfire-robes",
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
            priority = 230,
            route = {
                { y = 0.304, mapID = 1458, label = "Josef Gregorian", x = 0.706, offMapText = "Travel to Josef Gregorian in Undercity." },
                { y = 0.296, mapID = 1458, label = "Victor Ward", x = 0.702, offMapText = "Travel to Victor Ward in Undercity." },
                { y = 0.302, mapID = 1458, label = "Rhiannon Davis", x = 0.702, offMapText = "Travel to Rhiannon Davis in Undercity." },
            },
            dependsOn = { "woven-class-mage-accept-1962-spellfire-robes" },
            id = "woven-class-mage-turnin-1962-spellfire-robes",
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
            priority = 240,
            route = {
                { y = 0.86, mapID = 1454, label = "Uthel'nay", x = 0.39, offMapText = "Travel to Uthel'nay in Orgrimmar." },
            },
            id = "woven-class-mage-accept-1959-report-to-anastasia",
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
            priority = 250,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "woven-class-mage-accept-1959-report-to-anastasia" },
            id = "woven-class-mage-turnin-1959-report-to-anastasia",
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
            id = "level-before-woven-class-paladin-accept-96204-the-windshapers-wrath",
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
            checkpointQuest = 96204,
            priority = 260,
        },
        {
            priority = 270,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-96204-the-windshapers-wrath",
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
            priority = 280,
            dependsOn = { "woven-class-paladin-accept-96204-the-windshapers-wrath" },
            id = "woven-class-paladin-objective-96204-reviewed-mechanics",
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
            priority = 290,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = {
                "woven-class-paladin-accept-96204-the-windshapers-wrath",
                "woven-class-paladin-objective-96204-reviewed-mechanics",
            },
            id = "woven-class-paladin-turnin-96204-the-windshapers-wrath",
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
            priority = 300,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-95034-the-debt",
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
            priority = 310,
            route = {
                { y = 0.408, mapID = 1421, label = "Lumina Windsinger", x = 0.432, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-95034-the-debt" },
            id = "woven-class-paladin-turnin-95034-the-debt",
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
            priority = 320,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-91862-lumina-windsinger",
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
            priority = 330,
            route = {
                { y = 0.236, mapID = 1421, label = "Rot Hide Savage", x = 0.656, offMapText = "Travel to Rot Hide Savage in Silverpine Forest." },
                { y = 0.236, mapID = 1421, label = "Raging Rot Hide", x = 0.658, offMapText = "Travel to Raging Rot Hide in Silverpine Forest." },
                { y = 0.256, mapID = 1421, label = "Rot Hide Bruiser", x = 0.682, offMapText = "Travel to Rot Hide Bruiser in Silverpine Forest." },
                { y = 0.25, mapID = 1421, label = "Snarlmane", x = 0.652, offMapText = "Travel to Snarlmane in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-91862-lumina-windsinger" },
            id = "woven-class-paladin-objective-91862-lumina-windsinger",
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
            priority = 340,
            route = {
                { y = 0.232, mapID = 1421, label = "Lumina Windsinger", x = 0.656, offMapText = "Travel to Lumina Windsinger in Silverpine Forest." },
            },
            dependsOn = {
                "woven-class-paladin-accept-91862-lumina-windsinger",
                "woven-class-paladin-objective-91862-lumina-windsinger",
            },
            id = "woven-class-paladin-turnin-91862-lumina-windsinger",
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
            priority = 350,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-91860-a-grim-fate",
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
            priority = 360,
            dependsOn = { "woven-class-paladin-accept-91860-a-grim-fate" },
            id = "woven-class-paladin-objective-91860-reviewed-mechanics",
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
            priority = 370,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-91860-a-grim-fate", "woven-class-paladin-objective-91860-reviewed-mechanics" },
            id = "woven-class-paladin-turnin-91860-a-grim-fate",
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
            priority = 380,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            id = "woven-class-paladin-accept-91859-a-curious-pair",
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
            priority = 390,
            route = {
                { y = 0.418, mapID = 1421, label = "Deathguard Baldren", x = 0.458, offMapText = "Travel to Deathguard Baldren in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-91859-a-curious-pair" },
            id = "woven-class-paladin-turnin-91859-a-curious-pair",
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
            priority = 400,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", x = 0.22, offMapText = "Travel to Danitha Morr in Tirisfal Glades." },
            },
            id = "woven-class-paladin-accept-91858-diplomatic-incident",
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
            priority = 410,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", x = 0.434, offMapText = "Travel to Trevan Rol in Silverpine Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-91858-diplomatic-incident" },
            id = "woven-class-paladin-turnin-91858-diplomatic-incident",
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
            id = "level-before-accept-1859-therzok",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 8 },
                    },
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
            checkpointQuest = 1859,
            alternativeQuests = { 1885 },
            priority = 420,
        },
        {
            priority = 430,
            route = {
                { y = 0.4369, mapID = 1411, label = "Kaplak", offMapText = "Travel to Kaplak in Durotar.", x = 0.5198 },
            },
            text = "Accept Therzok from Kaplak.",
            id = "accept-1859-therzok",
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
                        race = { 2, 8 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 1859, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            alternativeQuests = { 1885 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-840-conscript-of-the-horde",
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
            checkpointQuest = 840,
            priority = 440,
        },
        {
            priority = 450,
            route = {
                { y = 0.4359, mapID = 1411, label = "Takrin Pathseeker", offMapText = "Travel to Takrin Pathseeker in Durotar.", x = 0.5085 },
            },
            text = "Accept Conscript of the Horde from Takrin Pathseeker.",
            id = "accept-840-conscript-of-the-horde",
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
                quest = { id = 840, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Conscript of the Horde to Kargal Battlescar.",
            route = {
                { y = 0.1938, mapID = 1413, label = "Kargal Battlescar", offMapText = "Travel to Kargal Battlescar in The Barrens.", x = 0.6226 },
            },
            dependsOn = { "accept-840-conscript-of-the-horde" },
            id = "turnin-840-conscript-of-the-horde",
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
                quest = { id = 840, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.1938, mapID = 1413, label = "Kargal Battlescar", offMapText = "Travel to Kargal Battlescar in The Barrens.", x = 0.6226 },
            },
            text = "Accept Crossroads Conscription from Kargal Battlescar.",
            id = "accept-842-crossroads-conscription",
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
                quest = { id = 842, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 840 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6365-meats-to-orgrimmar",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 6365,
            priority = 480,
        },
        {
            priority = 490,
            route = {
                { y = 0.2984, mapID = 1413, label = "Zargh", offMapText = "Travel to Zargh in The Barrens.", x = 0.5262 },
            },
            text = "Accept Meats to Orgrimmar from Zargh.",
            id = "accept-6365-meats-to-orgrimmar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6365, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            text = "Accept Raptor Thieves from Gazrog.",
            id = "accept-869-raptor-thieves",
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
                quest = { id = 869, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in Crossroads Conscription to Sergra Darkthorn.",
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            dependsOn = { "accept-842-crossroads-conscription" },
            id = "turnin-842-crossroads-conscription",
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
                quest = { id = 842, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 840 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            text = "Accept Plainstrider Menace from Sergra Darkthorn.",
            id = "accept-844-plainstrider-menace",
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
                quest = { id = 844, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept The Forgotten Pools from Tonga Runetotem.",
            id = "accept-870-the-forgotten-pools",
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
                quest = { id = 870, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            text = "Accept Disrupt the Attacks from Thork.",
            id = "accept-871-disrupt-the-attacks",
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
                quest = { id = 871, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "Turn in Meats to Orgrimmar to Devrak.",
            route = {
                { y = 0.3034, mapID = 1413, label = "Devrak", offMapText = "Travel to Devrak in The Barrens.", x = 0.515 },
            },
            dependsOn = { "accept-6365-meats-to-orgrimmar" },
            id = "turnin-6365-meats-to-orgrimmar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6365, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.3034, mapID = 1413, label = "Devrak", offMapText = "Travel to Devrak in The Barrens.", x = 0.515 },
            },
            text = "Accept Ride to Orgrimmar from Devrak.",
            id = "accept-6384-ride-to-orgrimmar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6384, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            text = "Turn in Ride to Orgrimmar to Innkeeper Gryshka.",
            route = {
                { y = 0.6841, mapID = 1454, label = "Innkeeper Gryshka", offMapText = "Travel to Innkeeper Gryshka in Orgrimmar.", x = 0.5409 },
            },
            dependsOn = { "accept-6384-ride-to-orgrimmar" },
            id = "turnin-6384-ride-to-orgrimmar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6384, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.6841, mapID = 1454, label = "Innkeeper Gryshka", offMapText = "Travel to Innkeeper Gryshka in Orgrimmar.", x = 0.5409 },
            },
            text = "Accept Doras the Wind Rider Master from Innkeeper Gryshka.",
            id = "accept-6385-doras-the-wind-rider-master",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6385, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6384 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Turn in Doras the Wind Rider Master to Doras.",
            route = {
                { y = 0.6389, mapID = 1454, label = "Doras", offMapText = "Travel to Doras in Orgrimmar.", x = 0.4512 },
            },
            dependsOn = { "accept-6385-doras-the-wind-rider-master" },
            id = "turnin-6385-doras-the-wind-rider-master",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6385, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6384 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.6389, mapID = 1454, label = "Doras", offMapText = "Travel to Doras in Orgrimmar.", x = 0.4512 },
            },
            text = "Accept Return to the Crossroads. from Doras.",
            id = "accept-6386-return-to-the-crossroads",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6386, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6385 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Therzok to Therzok.",
            route = {
                { y = 0.01, mapID = 1454, label = "Therzok", offMapText = "Travel to Therzok in Orgrimmar.", x = 0.4383 },
            },
            dependsOn = { "accept-1859-therzok" },
            id = "turnin-1859-therzok",
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
                        race = { 2, 8 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 1859, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            alternativeQuests = { 1885 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1963-the-shattered-hand",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            checkpointQuest = 1963,
            priority = 620,
        },
        {
            priority = 630,
            route = {
                { y = 0.01, mapID = 1454, label = "Therzok", offMapText = "Travel to Therzok in Orgrimmar.", x = 0.4383 },
            },
            text = "Accept The Shattered Hand from Therzok.",
            id = "accept-1963-the-shattered-hand",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1963, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            route = {
                { y = 0.3015, mapID = 1413, label = "Apothecary Helbrim", offMapText = "Travel to Apothecary Helbrim in The Barrens.", x = 0.5144 },
            },
            text = "Turn in Sample for Helbrim to Apothecary Helbrim.",
            id = "turnin-1358-sample-for-helbrim",
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
                quest = { id = 1358, state = "completed" },
            },
            sourceStep = 14,
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
            priority = 650,
            route = {
                { y = 0.3015, mapID = 1413, label = "Apothecary Helbrim", offMapText = "Travel to Apothecary Helbrim in The Barrens.", x = 0.5144 },
            },
            text = "Accept Fungal Spores from Apothecary Helbrim.",
            id = "accept-848-fungal-spores",
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
                quest = { id = 848, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            route = {
                { y = 0.3015, mapID = 1413, label = "Apothecary Helbrim", offMapText = "Travel to Apothecary Helbrim in The Barrens.", x = 0.5144 },
            },
            text = "Accept Wharfmaster Dizzywig from Apothecary Helbrim.",
            id = "accept-1492-wharfmaster-dizzywig",
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
                quest = { id = 1492, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.2984, mapID = 1413, label = "Zargh", offMapText = "Travel to Zargh in The Barrens.", x = 0.5262 },
            },
            dependsOn = { "accept-6386-return-to-the-crossroads" },
            id = "turnin-6386-return-to-the-crossroads",
            text = "Turn in Return to the Crossroads. to Zargh.",
            complete = {
                quest = { id = 6386, state = "completed" },
            },
            taxiDestination = "Crossroads",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            priority = 670,
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6385 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-819-chen-s-empty-keg",
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
            text = "Loot Chen's Empty Keg from Chen's Empty Keg. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Chen's Empty Keg", minCount = 1 },
                    },
                    {
                        quest = { id = 819, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 680,
        },
        {
            id = "level-before-accept-819-chen-s-empty-keg",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 11 },
            },
            requiredLevel = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 819,
            priority = 690,
        },
        {
            priority = 700,
            text = "Use the Chen's Empty Keg to accept Chen's Empty Keg.",
            id = "accept-819-chen-s-empty-keg",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 819, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-871-3-razormane-hunter",
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
            text = "Kill 3 Razormane Hunter.",
            complete = {
                questObjective = { id = 871, index = 3, text = "Razormane Hunter", count = 3 },
            },
            route = {
                { mapID = 1413, x = 0.556, y = 0.254, label = "Razormane Hunter", offMapText = "Travel to Razormane Hunter." },
            },
            sourceStep = 18,
            priority = 710,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-871-disrupt-the-attacks" },
        },
        {
            id = "objective-871-1-razormane-water-seeker",
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
            text = "Kill 8 Razormane Water Seeker.",
            complete = {
                questObjective = { id = 871, index = 1, text = "Razormane Water Seeker", count = 8 },
            },
            route = {
                { mapID = 1413, x = 0.556, y = 0.254, label = "Razormane Water Seeker", offMapText = "Travel to Razormane Water Seeker." },
            },
            sourceStep = 18,
            priority = 720,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-871-disrupt-the-attacks" },
        },
        {
            id = "objective-871-2-razormane-thornweaver",
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
            text = "Kill 8 Razormane Thornweaver.",
            complete = {
                questObjective = { id = 871, index = 2, text = "Razormane Thornweaver", count = 8 },
            },
            route = {
                { mapID = 1413, x = 0.556, y = 0.254, label = "Razormane Thornweaver", offMapText = "Travel to Razormane Thornweaver." },
            },
            sourceStep = 18,
            priority = 730,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-871-disrupt-the-attacks" },
        },
        {
            id = "objective-844-1-plainstrider-beak",
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
            text = "Collect 7 Plainstrider Beak.",
            complete = {
                questObjective = { id = 844, index = 1, text = "Plainstrider Beak", count = 7 },
            },
            route = {
                { mapID = 1413, x = 0.53, y = 0.22399999999999998, label = "Plainstrider Beak", offMapText = "Travel to Plainstrider Beak." },
            },
            sourceStep = 21,
            priority = 740,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-844-plainstrider-menace" },
        },
        {
            priority = 750,
            text = "Turn in Disrupt the Attacks to Thork.",
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            dependsOn = {
                "accept-871-disrupt-the-attacks",
                "objective-871-3-razormane-hunter",
                "objective-871-1-razormane-water-seeker",
                "objective-871-2-razormane-thornweaver",
            },
            id = "turnin-871-disrupt-the-attacks",
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
                quest = { id = 871, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            text = "Accept The Disruption Ends from Thork.",
            id = "accept-872-the-disruption-ends",
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
                quest = { id = 872, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            text = "Accept Supplies for the Crossroads from Thork.",
            id = "accept-5041-supplies-for-the-crossroads",
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
                quest = { id = 5041, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-867-harpy-raiders",
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
            checkpointQuest = 867,
            priority = 780,
        },
        {
            priority = 790,
            route = {
                { y = 0.3089, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            text = "Accept Harpy Raiders from Darsok Swiftdagger.",
            id = "accept-867-harpy-raiders",
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
                quest = { id = 867, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 800,
            text = "Turn in Plainstrider Menace to Sergra Darkthorn.",
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            dependsOn = { "accept-844-plainstrider-menace", "objective-844-1-plainstrider-beak" },
            id = "turnin-844-plainstrider-menace",
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
                quest = { id = 844, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            text = "Accept The Zhevra from Sergra Darkthorn.",
            id = "accept-845-the-zhevra",
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
                quest = { id = 845, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 844 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            text = "Collect 1 Kreenig Snarlsnout's Tusk.",
            route = {
                { y = 0.2704, mapID = 1413, label = "Kreenig Snarlsnout", offMapText = "Travel to Kreenig Snarlsnout.", x = 0.5853 },
            },
            dependsOn = { "accept-872-the-disruption-ends" },
            id = "objective-872-3-kreenig-snarlsnout",
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
                questObjective = { id = 872, text = "Kreenig Snarlsnout", index = 3, count = 1 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5041-1-crossroads-supply-crates",
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
            text = "Collect 1 Crossroads' Supply Crates.",
            complete = {
                questObjective = { id = 5041, index = 1, text = "Crossroads' Supply Crates", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.584, y = 0.27, label = "Crossroads' Supply Crates", offMapText = "Travel to Crossroads' Supply Crates." },
            },
            sourceStep = 26,
            priority = 830,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5041-supplies-for-the-crossroads" },
        },
        {
            id = "objective-872-1-razormane-geomancer",
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
            text = "Kill 8 Razormane Geomancer.",
            complete = {
                questObjective = { id = 872, index = 1, text = "Razormane Geomancer", count = 8 },
            },
            route = {
                { mapID = 1413, x = 0.59, y = 0.244, label = "Razormane Geomancer", offMapText = "Travel to Razormane Geomancer." },
            },
            sourceStep = 27,
            priority = 840,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-872-the-disruption-ends" },
        },
        {
            id = "objective-872-2-razormane-defender",
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
            text = "Kill 8 Razormane Defender.",
            complete = {
                questObjective = { id = 872, index = 2, text = "Razormane Defender", count = 8 },
            },
            route = {
                { mapID = 1413, x = 0.59, y = 0.244, label = "Razormane Defender", offMapText = "Travel to Razormane Defender." },
            },
            sourceStep = 27,
            priority = 850,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-872-the-disruption-ends" },
        },
        {
            id = "level-before-accept-887-southsea-freebooters",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 887,
            priority = 860,
        },
        {
            priority = 870,
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            text = "Accept Southsea Freebooters from Gazlowe.",
            id = "accept-887-southsea-freebooters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 887, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-894-samophlange",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 894,
            priority = 880,
        },
        {
            priority = 890,
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            text = "Accept Samophlange from Sputtervalve.",
            id = "accept-894-samophlange",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 894, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-895-wanted-baron-longshore",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 11 },
            },
            requiredLevel = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 895,
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.3747, mapID = 1413, label = "WANTED: Baron Longshore", offMapText = "Travel to WANTED: Baron Longshore.", x = 0.6259 },
            },
            text = "Accept WANTED: Baron Longshore.",
            id = "accept-895-wanted-baron-longshore",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                },
            },
            complete = {
                quest = { id = 895, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            text = "Turn in Chen's Empty Keg to Brewmaster Drohn.",
            route = {
                { y = 0.3839, mapID = 1413, label = "Brewmaster Drohn", offMapText = "Travel to Brewmaster Drohn in The Barrens.", x = 0.6226 },
            },
            dependsOn = { "accept-819-chen-s-empty-keg" },
            id = "turnin-819-chen-s-empty-keg",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 819, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 930,
            route = {
                { y = 0.3839, mapID = 1413, label = "Brewmaster Drohn", offMapText = "Travel to Brewmaster Drohn in The Barrens.", x = 0.6226 },
            },
            text = "Accept Chen's Empty Keg from Brewmaster Drohn.",
            id = "accept-821-chen-s-empty-keg",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 821, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 940,
            text = "Collect 1 Tazan's Satchel.",
            route = {
                { y = 0.44, mapID = 1413, label = "Tazan", offMapText = "Travel to Tazan.", x = 0.646 },
            },
            dependsOn = { "accept-1963-the-shattered-hand" },
            id = "objective-1963-1-tazan",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1963, text = "Tazan", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            text = "Collect 1 Baron Longshore's Head.",
            route = {
                { y = 0.472, mapID = 1413, label = "Baron Longshore", offMapText = "Travel to Baron Longshore.", x = 0.642 },
            },
            dependsOn = { "accept-895-wanted-baron-longshore" },
            id = "objective-895-1-baron-longshore",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                },
            },
            complete = {
                questObjective = { id = 895, text = "Baron Longshore", index = 1, count = 1 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-887-2-southsea-cannoneer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            text = "Kill 6 Southsea Cannoneer.",
            complete = {
                questObjective = { id = 887, index = 2, text = "Southsea Cannoneer", count = 6 },
            },
            route = {
                { mapID = 1413, x = 0.634, y = 0.45799999999999996, label = "Southsea Cannoneer", offMapText = "Travel to Southsea Cannoneer." },
            },
            sourceStep = 37,
            priority = 960,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-887-southsea-freebooters" },
        },
        {
            id = "objective-887-1-southsea-brigand",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            text = "Kill 12 Southsea Brigand.",
            complete = {
                questObjective = { id = 887, index = 1, text = "Southsea Brigand", count = 12 },
            },
            route = {
                { mapID = 1413, x = 0.634, y = 0.45799999999999996, label = "Southsea Brigand", offMapText = "Travel to Southsea Brigand." },
            },
            sourceStep = 37,
            priority = 970,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-887-southsea-freebooters" },
        },
        {
            priority = 980,
            text = "Turn in Southsea Freebooters to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-887-southsea-freebooters", "objective-887-2-southsea-cannoneer", "objective-887-1-southsea-brigand" },
            id = "turnin-887-southsea-freebooters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 887, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            text = "Accept The Missing Shipment from Gazlowe.",
            id = "accept-890-the-missing-shipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 890, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 887 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Turn in WANTED: Baron Longshore to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-895-wanted-baron-longshore", "objective-895-1-baron-longshore" },
            id = "turnin-895-wanted-baron-longshore",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                },
            },
            complete = {
                quest = { id = 895, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            dependsOn = { "accept-1492-wharfmaster-dizzywig" },
            id = "turnin-1492-wharfmaster-dizzywig",
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
                quest = { id = 1492, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            text = "Turn in The Missing Shipment to Wharfmaster Dizzywig.",
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            dependsOn = { "accept-890-the-missing-shipment" },
            id = "turnin-890-the-missing-shipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 890, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 887 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Accept The Missing Shipment from Wharfmaster Dizzywig.",
            id = "accept-892-the-missing-shipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 892, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 890 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-896-miner-s-fortune",
            kind = "note",
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 13 },
            },
            requiredLevel = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 896,
            priority = 1040,
        },
        {
            priority = 1050,
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Accept Miner's Fortune from Wharfmaster Dizzywig.",
            id = "accept-896-miner-s-fortune",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 896, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1060,
            text = "Turn in The Missing Shipment to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-892-the-missing-shipment" },
            id = "turnin-892-the-missing-shipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 892, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 890 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            text = "Accept Stolen Booty from Gazlowe.",
            id = "accept-888-stolen-booty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 888, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 892 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "Turn in The Disruption Ends to Thork.",
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            dependsOn = {
                "accept-872-the-disruption-ends",
                "objective-872-3-kreenig-snarlsnout",
                "objective-872-1-razormane-geomancer",
                "objective-872-2-razormane-defender",
            },
            id = "turnin-872-the-disruption-ends",
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
                quest = { id = 872, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1090,
            text = "Turn in Supplies for the Crossroads to Thork.",
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            dependsOn = { "accept-5041-supplies-for-the-crossroads", "objective-5041-1-crossroads-supply-crates" },
            id = "turnin-5041-supplies-for-the-crossroads",
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
                quest = { id = 5041, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-845-1-zhevra-hooves",
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
            text = "Collect 4 Zhevra Hooves.",
            complete = {
                questObjective = { id = 845, index = 1, text = "Zhevra Hooves", count = 4 },
            },
            route = {
                { mapID = 1413, x = 0.532, y = 0.342, label = "Zhevra Hooves", offMapText = "Travel to Zhevra Hooves." },
            },
            sourceStep = 44,
            priority = 1100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 844 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-845-the-zhevra" },
        },
        {
            priority = 1110,
            text = "Turn in The Zhevra to Sergra Darkthorn.",
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            dependsOn = { "accept-845-the-zhevra", "objective-845-1-zhevra-hooves" },
            id = "turnin-845-the-zhevra",
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
                quest = { id = 845, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 844 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            text = "Accept Prowlers of the Barrens from Sergra Darkthorn.",
            id = "accept-903-prowlers-of-the-barrens",
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
                quest = { id = 903, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 845 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1130,
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            text = "Accept Centaur Bracers from Regthar Deathgate.",
            id = "accept-855-centaur-bracers",
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
                quest = { id = 855, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1140,
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            text = "Accept Kolkar Leaders from Regthar Deathgate.",
            id = "accept-850-kolkar-leaders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 850, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-848-1-fungal-spores",
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
            text = "Collect 4 Fungal Spores.",
            complete = {
                questObjective = { id = 848, index = 1, text = "Fungal Spores", count = 4 },
            },
            route = {
                { mapID = 1413, x = 0.447, y = 0.231, label = "Fungal Spores", offMapText = "Travel to Fungal Spores." },
            },
            sourceStep = 48,
            priority = 1150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-848-fungal-spores" },
        },
        {
            priority = 1160,
            text = "Collect 1 Barak's Head.",
            route = {
                { y = 0.2361, mapID = 1413, label = "Barak Kodobane", offMapText = "Travel to Barak Kodobane.", x = 0.4272 },
            },
            dependsOn = { "accept-850-kolkar-leaders" },
            id = "objective-850-1-barak-kodobane",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 850, text = "Barak Kodobane", index = 1, count = 1 },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            text = "Turn in Centaur Bracers to Regthar Deathgate.",
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            dependsOn = { "accept-855-centaur-bracers", "objective-855-1-centaur-bracers" },
            id = "turnin-855-centaur-bracers",
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
                quest = { id = 855, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1180,
            text = "Turn in Kolkar Leaders to Regthar Deathgate.",
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            dependsOn = { "accept-850-kolkar-leaders", "objective-850-1-barak-kodobane" },
            id = "turnin-850-kolkar-leaders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 850, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            text = "Accept Verog the Dervish from Regthar Deathgate.",
            id = "accept-851-verog-the-dervish",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 851, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 850 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1200,
            text = "Collect 5 Savannah Lion Tusk.",
            route = {
                { y = 0.284, mapID = 1413, label = "Savannah Prowler", offMapText = "Travel to Savannah Prowler.", x = 0.412 },
            },
            dependsOn = { "accept-821-chen-s-empty-keg" },
            id = "objective-821-1-savannah-prowler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 821, text = "Savannah Prowler", index = 1, count = 5 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            text = "Collect 7 Prowler Claws.",
            route = {
                { y = 0.284, mapID = 1413, label = "Prowler Claws", offMapText = "Travel to Prowler Claws.", x = 0.412 },
            },
            dependsOn = { "accept-903-prowlers-of-the-barrens" },
            id = "objective-903-1-prowler-claws",
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
                questObjective = { id = 903, text = "Prowler Claws", index = 1, count = 7 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 845 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1220,
            text = "Collect 8 Witchwing Talon.",
            route = {
                { y = 0.1845, mapID = 1413, label = "Witchwing Harpy", offMapText = "Travel to Witchwing Harpy.", x = 0.4086 },
            },
            dependsOn = { "accept-867-harpy-raiders" },
            id = "objective-867-1-witchwing-harpy",
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
                questObjective = { id = 867, text = "Witchwing Harpy", index = 1, count = 8 },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            text = "Turn in Samophlange.",
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            dependsOn = { "accept-894-samophlange" },
            id = "turnin-894-samophlange",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 894, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1240,
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            text = "Accept Samophlange.",
            id = "accept-900-samophlange",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 900, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 894 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1250,
            text = "Close the Fuel Control Valve beside the Samophlange.",
            id = "objective-900-2-authored-Fuel-Control-Valve",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                questObjective = { id = 900, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 894 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-900-samophlange" },
            route = {
                { mapID = 1413, x = 0.524, y = 0.11410000000000001, label = "Fuel-Control-Valve", offMapText = "Travel to Fuel-Control-Valve." },
            },
        },
        {
            priority = 1260,
            text = "Close the Regulator Valve beside the Samophlange.",
            id = "objective-900-3-authored-Regulator-Valve",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                questObjective = { id = 900, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 894 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-900-samophlange" },
            route = {
                { mapID = 1413, x = 0.5229, y = 0.114, label = "Regulator-Valve", offMapText = "Travel to Regulator-Valve." },
            },
        },
        {
            priority = 1270,
            text = "Close the Main Control Valve beside the Samophlange.",
            id = "objective-900-1-authored-Main-Control-Valve",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                questObjective = { id = 900, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 894 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-900-samophlange" },
            route = {
                { mapID = 1413, x = 0.5233, y = 0.1157, label = "Main-Control-Valve", offMapText = "Travel to Main-Control-Valve." },
            },
        },
        {
            priority = 1280,
            text = "Turn in Samophlange.",
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            dependsOn = {
                "accept-900-samophlange",
                "objective-900-2-authored-Fuel-Control-Valve",
                "objective-900-3-authored-Regulator-Valve",
                "objective-900-1-authored-Main-Control-Valve",
            },
            id = "turnin-900-samophlange",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 900, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 894 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1290,
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            text = "Accept Samophlange.",
            id = "accept-901-samophlange",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 901, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 900 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1300,
            text = "Collect 1 Console Key.",
            route = {
                { y = 0.1039, mapID = 1413, label = "Tinkerer Sniggles", offMapText = "Travel to Tinkerer Sniggles.", x = 0.5284 },
            },
            dependsOn = { "accept-901-samophlange" },
            id = "objective-901-1-tinkerer-sniggles",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                questObjective = { id = 901, text = "Tinkerer Sniggles", index = 1, count = 1 },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 900 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1310,
            text = "Turn in Samophlange.",
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            dependsOn = { "accept-901-samophlange", "objective-901-1-tinkerer-sniggles" },
            id = "turnin-901-samophlange",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 901, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 900 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1320,
            route = {
                { y = 0.1164, mapID = 1413, label = "Samophlange", offMapText = "Travel to Samophlange.", x = 0.5241 },
            },
            text = "Accept Samophlange.",
            id = "accept-902-samophlange",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 902, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 901 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-869-1-raptor-head",
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
            text = "Collect 12 Raptor Head.",
            complete = {
                questObjective = { id = 869, index = 1, text = "Raptor Head", count = 12 },
            },
            route = {
                { mapID = 1413, x = 0.53, y = 0.126, label = "Raptor Head", offMapText = "Travel to Raptor Head." },
            },
            sourceStep = 61,
            priority = 1330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-869-raptor-thieves" },
        },
        {
            priority = 1340,
            text = "Loot a Cats Eye Emerald from Venture Co. Overseers or Enforcers at Boulder Lode Mine.",
            route = {
                { y = 0.05, mapID = 1413, label = "Boulder Lode Mine", offMapText = "Travel to Boulder Lode Mine northeast of the Sludge Fen.", x = 0.61 },
            },
            dependsOn = { "accept-896-miner-s-fortune" },
            id = "objective-896-1-cats-eye-emerald",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 896, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1350,
            text = "Turn in Miner's Fortune to Wharfmaster Dizzywig.",
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            dependsOn = { "accept-896-miner-s-fortune", "objective-896-1-cats-eye-emerald" },
            id = "turnin-896-miner-s-fortune",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 896, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Turn in Samophlange to Sputtervalve.",
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            dependsOn = { "accept-902-samophlange" },
            id = "turnin-902-samophlange",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 902, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 901 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            text = "Accept Wenikee Boltbucket from Sputtervalve.",
            id = "accept-3921-wenikee-boltbucket",
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
                quest = { id = 3921, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1380,
            text = "Turn in Fungal Spores to Apothecary Helbrim.",
            route = {
                { y = 0.3015, mapID = 1413, label = "Apothecary Helbrim", offMapText = "Travel to Apothecary Helbrim in The Barrens.", x = 0.5144 },
            },
            dependsOn = { "accept-848-fungal-spores", "objective-848-1-fungal-spores" },
            id = "turnin-848-fungal-spores",
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
                quest = { id = 848, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1390,
            text = "Turn in Harpy Raiders to Darsok Swiftdagger.",
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            dependsOn = { "accept-867-harpy-raiders", "objective-867-1-witchwing-harpy" },
            id = "turnin-867-harpy-raiders",
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
                quest = { id = 867, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1400,
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            text = "Accept Harpy Lieutenants from Darsok Swiftdagger.",
            id = "accept-875-harpy-lieutenants",
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
                quest = { id = 875, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 867 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1410,
            text = "Turn in The Forgotten Pools to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "accept-870-the-forgotten-pools" },
            id = "turnin-870-the-forgotten-pools",
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
                quest = { id = 870, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1420,
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept The Stagnant Oasis from Tonga Runetotem.",
            id = "accept-877-the-stagnant-oasis",
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
                quest = { id = 877, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1430,
            text = "Turn in Prowlers of the Barrens to Sergra Darkthorn.",
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            dependsOn = { "accept-903-prowlers-of-the-barrens", "objective-903-1-prowler-claws" },
            id = "turnin-903-prowlers-of-the-barrens",
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
                quest = { id = 903, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 845 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1440,
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5224 },
            },
            text = "Accept Echeyakee from Sergra Darkthorn.",
            id = "accept-881-echeyakee",
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
                quest = { id = 881, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 903 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1450,
            text = "Turn in Raptor Thieves to Gazrog.",
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            dependsOn = { "accept-869-raptor-thieves", "objective-869-1-raptor-head" },
            id = "turnin-869-raptor-thieves",
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
                quest = { id = 869, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1460,
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            text = "Accept Stolen Silver from Gazrog.",
            id = "accept-3281-stolen-silver",
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
                quest = { id = 3281, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1061-the-spirits-of-stonetalon",
            kind = "note",
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 13 },
            },
            requiredLevel = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1061,
            priority = 1470,
        },
        {
            priority = 1480,
            route = {
                { y = 0.3827, mapID = 1454, label = "Zor Lonetree", offMapText = "Travel to Zor Lonetree in Orgrimmar.", x = 0.3899 },
            },
            text = "Accept The Spirits of Stonetalon from Zor Lonetree.",
            id = "accept-1061-the-spirits-of-stonetalon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1061, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2379-zando-zan",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 2379,
            priority = 1490,
        },
        {
            priority = 1500,
            route = {
                { y = 0.5372, mapID = 1454, label = "Shenthul", offMapText = "Travel to Shenthul in Orgrimmar.", x = 0.4305 },
            },
            text = "Accept Zando'zan from Shenthul.",
            id = "accept-2379-zando-zan",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2379, state = "activeOrCompleted" },
            },
            sourceStep = 84,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1510,
            text = "Turn in The Shattered Hand to Therzok.",
            route = {
                { y = 0.01, mapID = 1454, label = "Therzok", offMapText = "Travel to Therzok in Orgrimmar.", x = 0.4383 },
            },
            dependsOn = { "accept-1963-the-shattered-hand", "objective-1963-1-tazan" },
            id = "turnin-1963-the-shattered-hand",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1963, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            route = {
                { y = 0.01, mapID = 1454, label = "Therzok", offMapText = "Travel to Therzok in Orgrimmar.", x = 0.4383 },
            },
            text = "Accept The Shattered Hand from Therzok.",
            id = "accept-1858-the-shattered-hand",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1858, state = "activeOrCompleted" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1963 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-2379-zando-zan" },
            id = "turnin-2379-zando-zan",
            text = "Turn in Zando'zan to Zando'zan.",
            useClientPin = true,
            complete = {
                quest = { id = 2379, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 1530,
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 1540,
            text = "Accept Wrenix of Ratchet from Zando'zan.",
            id = "accept-2382-wrenix-of-ratchet",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2382, state = "activeOrCompleted" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-1858-the-shattered-hand" },
            id = "objective-1858-1-tazan-s-key",
            text = "Collect 1 Tazan's Logbook.",
            useClientPin = true,
            complete = {
                questObjective = { id = 1858, text = "Tazan's Key", index = 1, count = 1 },
            },
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
                        race = { 2, 8 },
                    },
                },
            },
            priority = 1550,
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1963 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 1560,
            text = "Turn in The Shattered Hand to Therzok.",
            route = {
                { y = 0.01, mapID = 1454, label = "Therzok", offMapText = "Travel to Therzok in Orgrimmar.", x = 0.4383 },
            },
            dependsOn = { "accept-1858-the-shattered-hand", "objective-1858-1-tazan-s-key" },
            id = "turnin-1858-the-shattered-hand",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1858, state = "completed" },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1963 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
            text = "Turn in Wenikee Boltbucket to Wenikee Boltbucket.",
            route = {
                { y = 0.1116, mapID = 1413, label = "Wenikee Boltbucket", offMapText = "Travel to Wenikee Boltbucket in The Barrens.", x = 0.4905 },
            },
            dependsOn = { "accept-3921-wenikee-boltbucket" },
            id = "turnin-3921-wenikee-boltbucket",
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
                quest = { id = 3921, state = "completed" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1580,
            route = {
                { y = 0.1116, mapID = 1413, label = "Wenikee Boltbucket", offMapText = "Travel to Wenikee Boltbucket in The Barrens.", x = 0.4905 },
            },
            text = "Accept Nugget Slugs from Wenikee Boltbucket.",
            id = "accept-3922-nugget-slugs",
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
                quest = { id = 3922, state = "activeOrCompleted" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1590,
            route = {
                { y = 0.0745, mapID = 1413, label = "Wizzlecrank's Shredder", offMapText = "Travel to Wizzlecrank's Shredder in The Barrens.", x = 0.5651 },
            },
            text = "Accept Ignition from Wizzlecrank's Shredder.",
            id = "accept-858-ignition",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 858, state = "activeOrCompleted" },
            },
            sourceStep = 92,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1600,
            text = "Collect 1 Ignition Key.",
            route = {
                { y = 0.0825, mapID = 1413, label = "Supervisor Lugwizzle", offMapText = "Travel to Supervisor Lugwizzle.", x = 0.562 },
            },
            dependsOn = { "accept-858-ignition" },
            id = "objective-858-1-supervisor-lugwizzle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                questObjective = { id = 858, text = "Supervisor Lugwizzle", index = 1, count = 1 },
            },
            sourceStep = 93,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1610,
            text = "Turn in Ignition to Wizzlecrank's Shredder.",
            route = {
                { y = 0.0745, mapID = 1413, label = "Wizzlecrank's Shredder", offMapText = "Travel to Wizzlecrank's Shredder in The Barrens.", x = 0.5651 },
            },
            dependsOn = { "accept-858-ignition", "objective-858-1-supervisor-lugwizzle" },
            id = "turnin-858-ignition",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 858, state = "completed" },
            },
            sourceStep = 94,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1620,
            route = {
                { y = 0.0745, mapID = 1413, label = "Wizzlecrank's Shredder", offMapText = "Travel to Wizzlecrank's Shredder in The Barrens.", x = 0.5651 },
            },
            text = "Accept The Escape from Wizzlecrank's Shredder.",
            id = "accept-863-the-escape",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 863, state = "activeOrCompleted" },
            },
            sourceStep = 94,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 858 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-3922-1-nugget-slug",
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
            text = "Collect 15 Nugget Slug.",
            complete = {
                questObjective = { id = 3922, index = 1, text = "Nugget Slug", count = 15 },
            },
            route = {
                { mapID = 1413, x = 0.555, y = 0.08, label = "Nugget Slug", offMapText = "Travel to Nugget Slug." },
            },
            sourceStep = 96,
            priority = 1630,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3922-nugget-slugs" },
        },
        {
            priority = 1640,
            text = "Escort Wizzlecrank out of the Venture Co. drill site.",
            route = {
                { y = 0.0745, mapID = 1413, label = "Wizzlecrank", offMapText = "Travel to Wizzlecrank at the Venture Co. drill site.", x = 0.5651 },
            },
            dependsOn = { "accept-863-the-escape" },
            id = "objective-863-the-escape",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 863, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 858 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1650,
            text = "Use the Horn of Echeyakee beside the bones to summon Echeyakee. Kill the white lion and loot his hide.",
            route = {
                { mapID = 1413, x = 0.5585, y = 0.17079999999999998, label = "Echeyakee", offMapText = "Travel to Echeyakee." },
            },
            dependsOn = { "accept-881-echeyakee" },
            id = "objective-881-1-horn-of-echeyakee",
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
                questObjective = { id = 881, index = 1, count = 1 },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 903 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1660,
            text = "Turn in Nugget Slugs to Wenikee Boltbucket.",
            route = {
                { y = 0.1116, mapID = 1413, label = "Wenikee Boltbucket", offMapText = "Travel to Wenikee Boltbucket in The Barrens.", x = 0.4905 },
            },
            dependsOn = { "accept-3922-nugget-slugs", "objective-3922-1-nugget-slug" },
            id = "turnin-3922-nugget-slugs",
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
                quest = { id = 3922, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-821-2-plainstrider-kidney",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill Fleeting, Greater or Ornery Plainstriders in northern Barrens and collect 5 Plainstrider Kidneys.",
            complete = {
                questObjective = { id = 821, index = 2, count = 5 },
            },
            route = {
                { mapID = 1413, x = 0.48, y = 0.132, label = "Northern Barrens plainstriders", offMapText = "Travel to Northern Barrens plainstriders." },
            },
            sourceStep = 100,
            priority = 1670,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-821-chen-s-empty-keg" },
        },
        {
            priority = 1680,
            text = "Collect 6 Harpy Lieutenant Ring.",
            route = {
                { y = 0.148, mapID = 1413, label = "Witchwing Slayer", offMapText = "Travel to Witchwing Slayer.", x = 0.394 },
            },
            dependsOn = { "accept-875-harpy-lieutenants" },
            id = "objective-875-1-witchwing-slayer",
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
                questObjective = { id = 875, text = "Witchwing Slayer", index = 1, count = 6 },
            },
            sourceStep = 101,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 867 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1690,
            text = "Turn in Echeyakee to Sergra Darkthorn.",
            route = {
                { y = 0.31, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            dependsOn = { "accept-881-echeyakee", "objective-881-1-horn-of-echeyakee" },
            id = "turnin-881-echeyakee",
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
                quest = { id = 881, state = "completed" },
            },
            sourceStep = 102,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 903 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1700,
            route = {
                { y = 0.31, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            text = "Accept The Angry Scytheclaws from Sergra Darkthorn.",
            id = "accept-905-the-angry-scytheclaws",
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
                quest = { id = 905, state = "activeOrCompleted" },
            },
            sourceStep = 102,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 881 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4921-lost-in-battle",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 4921,
            priority = 1710,
        },
        {
            priority = 1720,
            route = {
                { y = 0.3158, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik in The Barrens.", x = 0.5195 },
            },
            text = "Accept Lost in Battle from Mankrik.",
            id = "accept-4921-lost-in-battle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4921, state = "activeOrCompleted" },
            },
            sourceStep = 104,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1730,
            text = "Turn in Harpy Lieutenants to Darsok Swiftdagger.",
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            dependsOn = { "accept-875-harpy-lieutenants", "objective-875-1-witchwing-slayer" },
            id = "turnin-875-harpy-lieutenants",
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
                quest = { id = 875, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 867 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1740,
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            text = "Accept Serena Bloodfeather from Darsok Swiftdagger.",
            id = "accept-876-serena-bloodfeather",
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
                quest = { id = 876, state = "activeOrCompleted" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 875 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            text = "Turn in Wrenix of Ratchet to Wrenix the Wretched.",
            route = {
                { y = 0.3632, mapID = 1413, label = "Wrenix the Wretched", offMapText = "Travel to Wrenix the Wretched in The Barrens.", x = 0.6307 },
            },
            dependsOn = { "accept-2382-wrenix-of-ratchet" },
            id = "turnin-2382-wrenix-of-ratchet",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2382, state = "completed" },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1760,
            route = {
                { y = 0.3632, mapID = 1413, label = "Wrenix the Wretched", offMapText = "Travel to Wrenix the Wretched in The Barrens.", x = 0.6307 },
            },
            text = "Accept Plundering the Plunderers from Wrenix the Wretched.",
            id = "accept-2381-plundering-the-plunderers",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2381, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1770,
            text = "Turn in The Escape to Sputtervalve.",
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            dependsOn = { "accept-863-the-escape", "objective-863-the-escape" },
            id = "turnin-863-the-escape",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 863, state = "completed" },
            },
            sourceStep = 109,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 858 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1483-ziz-fizziks",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1483,
            priority = 1780,
        },
        {
            priority = 1790,
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            text = "Accept Ziz Fizziks from Sputtervalve.",
            id = "accept-1483-ziz-fizziks",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1483, state = "activeOrCompleted" },
            },
            sourceStep = 109,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1800,
            route = {
                { y = 0.3762, mapID = 1413, label = "Mebok Mizzyrix", offMapText = "Travel to Mebok Mizzyrix in The Barrens.", x = 0.6237 },
            },
            text = "Accept Raptor Horns from Mebok Mizzyrix.",
            id = "accept-865-raptor-horns",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 865, state = "activeOrCompleted" },
            },
            sourceStep = 111,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1810,
            route = {
                { y = 0.3762, mapID = 1413, label = "Mebok Mizzyrix", offMapText = "Travel to Mebok Mizzyrix in The Barrens.", x = 0.6237 },
            },
            text = "Accept Deepmoss Spider Eggs from Mebok Mizzyrix.",
            id = "accept-1069-deepmoss-spider-eggs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            complete = {
                quest = { id = 1069, state = "activeOrCompleted" },
            },
            sourceStep = 111,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1820,
            text = "Collect 1 Southsea Treasure.",
            route = {
                { y = 0.4544, mapID = 1413, label = "The Jewel of the Southsea", offMapText = "Travel to The Jewel of the Southsea.", x = 0.6495 },
            },
            dependsOn = { "accept-2381-plundering-the-plunderers" },
            id = "objective-2381-1-the-jewel-of-the-southsea",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2381, text = "The Jewel of the Southsea", index = 1, count = 1 },
            },
            sourceStep = 114,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-888-2-telescopic-lens",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            text = "Collect 1 Telescopic Lens.",
            complete = {
                questObjective = { id = 888, index = 2, text = "Telescopic Lens", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.6358, y = 0.4924, label = "Telescopic Lens", offMapText = "Travel to Telescopic Lens." },
            },
            sourceStep = 115,
            priority = 1830,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 892 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-888-stolen-booty" },
        },
        {
            id = "objective-888-1-shipment-of-boots",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            text = "Collect 1 Shipment of Boots.",
            complete = {
                questObjective = { id = 888, index = 1, text = "Shipment of Boots", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.6263000000000001, y = 0.4964, label = "Shipment of Boots", offMapText = "Travel to Shipment of Boots." },
            },
            sourceStep = 116,
            priority = 1840,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 892 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-888-stolen-booty" },
        },
        {
            id = "objective-3281-1-stolen-silver",
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
            text = "Collect 1 Stolen Silver.",
            complete = {
                questObjective = { id = 3281, index = 1, text = "Stolen Silver", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.5803, y = 0.5387, label = "Stolen Silver", offMapText = "Travel to Stolen Silver." },
            },
            sourceStep = 117,
            priority = 1850,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3281-stolen-silver" },
        },
        {
            id = "objective-865-1-intact-raptor-horn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            text = "Collect 5 Intact Raptor Horn.",
            complete = {
                questObjective = { id = 865, index = 1, text = "Intact Raptor Horn", count = 5 },
            },
            route = {
                { mapID = 1413, x = 0.5736, y = 0.5238, label = "Intact Raptor Horn", offMapText = "Travel to Intact Raptor Horn." },
            },
            sourceStep = 118,
            priority = 1860,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-865-raptor-horns" },
        },
        {
            priority = 1870,
            text = "Collect 1 Verog's Head.",
            route = {
                { y = 0.4177, mapID = 1413, label = "Verog the Dervish", offMapText = "Travel to Verog the Dervish.", x = 0.5291 },
            },
            dependsOn = { "accept-851-verog-the-dervish" },
            id = "objective-851-1-verog-the-dervish",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 851, text = "Verog the Dervish", index = 1, count = 1 },
            },
            sourceStep = 120,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 850 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-855-1-centaur-bracers",
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
            text = "Collect 15 Centaur Bracers.",
            complete = {
                questObjective = { id = 855, index = 1, text = "Centaur Bracers", count = 15 },
            },
            route = {
                { mapID = 1413, x = 0.5291, y = 0.4177, label = "Centaur Bracers", offMapText = "Travel to Centaur Bracers." },
            },
            sourceStep = 121,
            priority = 1880,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-855-centaur-bracers" },
        },
        {
            priority = 1890,
            text = "Find the Beaten Corpse south of the Crossroads. Inspect it to learn the fate of Mankrik's wife.",
            id = "objective-4921-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4921, index = 1, count = 1 },
            },
            sourceStep = 129,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4921-lost-in-battle" },
            route = {
                { mapID = 1413, x = 0.49329999999999996, y = 0.5032, label = "Lost in Battle", offMapText = "Travel to Lost in Battle." },
            },
        },
        {
            priority = 1900,
            text = "Turn in Lost in Battle to Mankrik.",
            route = {
                { y = 0.3158, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik in The Barrens.", x = 0.5195 },
            },
            dependsOn = { "accept-4921-lost-in-battle", "objective-4921-quest-work" },
            id = "turnin-4921-lost-in-battle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4921, state = "completed" },
            },
            sourceStep = 129,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1910,
            route = {
                { y = 0.3158, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik in The Barrens.", x = 0.5195 },
            },
            text = "Accept Consumed by Hatred from Mankrik.",
            id = "accept-899-consumed-by-hatred",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 899, state = "activeOrCompleted" },
            },
            sourceStep = 129,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1920,
            text = "Swim down to the Bubbling Fissure at the Stagnant Oasis and interact with it to test the Dried Seeds.",
            id = "objective-877-quest-work",
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
                questObjective = { id = 877, index = 1, count = 1 },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-877-the-stagnant-oasis" },
            route = {
                { mapID = 1413, x = 0.5561, y = 0.4274, label = "The Stagnant Oasis", offMapText = "Travel to The Stagnant Oasis." },
            },
        },
        {
            priority = 1930,
            text = "Turn in The Stagnant Oasis to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "accept-877-the-stagnant-oasis", "objective-877-quest-work" },
            id = "turnin-877-the-stagnant-oasis",
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
                quest = { id = 877, state = "completed" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1940,
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept Altered Beings from Tonga Runetotem.",
            id = "accept-880-altered-beings",
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
                quest = { id = 880, state = "activeOrCompleted" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1950,
            text = "Kill Sunscale raptors nearby and loot a Sunscale Feather. Place it in the Blue Raptor Nest.",
            id = "objective-905-1-authored-Blue-Raptor-Nest",
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
                questObjective = { id = 905, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 881 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            route = {
                { mapID = 1413, x = 0.526, y = 0.4611, label = "Blue-Raptor-Nest", offMapText = "Travel to Blue-Raptor-Nest." },
            },
        },
        {
            priority = 1960,
            text = "Loot another Sunscale Feather from nearby raptors and place it in the Red Raptor Nest.",
            id = "objective-905-3-authored-Red-Raptor-Nest",
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
                questObjective = { id = 905, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 881 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            route = {
                { mapID = 1413, x = 0.5246, y = 0.4657, label = "Red-Raptor-Nest", offMapText = "Travel to Red-Raptor-Nest." },
            },
        },
        {
            priority = 1970,
            text = "Loot another Sunscale Feather from nearby raptors and place it in the Yellow Raptor Nest.",
            id = "objective-905-2-authored-Yellow-Raptor-Nest",
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
                questObjective = { id = 905, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 881 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-905-the-angry-scytheclaws" },
            route = {
                { mapID = 1413, x = 0.5202, y = 0.4647, label = "Yellow-Raptor-Nest", offMapText = "Travel to Yellow-Raptor-Nest." },
            },
        },
        {
            priority = 1980,
            text = "Turn in The Angry Scytheclaws to Sergra Darkthorn.",
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            dependsOn = {
                "accept-905-the-angry-scytheclaws",
                "objective-905-1-authored-Blue-Raptor-Nest",
                "objective-905-3-authored-Red-Raptor-Nest",
                "objective-905-2-authored-Yellow-Raptor-Nest",
            },
            id = "turnin-905-the-angry-scytheclaws",
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
                quest = { id = 905, state = "completed" },
            },
            sourceStep = 132,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 881 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1990,
            route = {
                { y = 0.3101, mapID = 1413, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn in The Barrens.", x = 0.5223 },
            },
            text = "Accept Jorn Skyseer from Sergra Darkthorn.",
            id = "accept-3261-jorn-skyseer",
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
                quest = { id = 3261, state = "activeOrCompleted" },
            },
            sourceStep = 132,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 905 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2000,
            text = "Turn in Stolen Silver to Gazrog.",
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            dependsOn = { "accept-3281-stolen-silver", "objective-3281-1-stolen-silver" },
            id = "turnin-3281-stolen-silver",
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
                quest = { id = 3281, state = "completed" },
            },
            sourceStep = 133,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2010,
            text = "Turn in Verog the Dervish to Regthar Deathgate.",
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            dependsOn = { "accept-851-verog-the-dervish", "objective-851-1-verog-the-dervish" },
            id = "turnin-851-verog-the-dervish",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 851, state = "completed" },
            },
            sourceStep = 134,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 850 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2020,
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            text = "Accept Hezrul Bloodmark from Regthar Deathgate.",
            id = "accept-852-hezrul-bloodmark",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 852, state = "activeOrCompleted" },
            },
            sourceStep = 134,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 851 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2030,
            text = "Collect 1 Serena's Head.",
            route = {
                { y = 0.1217, mapID = 1413, label = "Serena Bloodfeather", offMapText = "Travel to Serena Bloodfeather.", x = 0.3916 },
            },
            dependsOn = { "accept-876-serena-bloodfeather" },
            id = "objective-876-1-serena-bloodfeather",
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
                questObjective = { id = 876, text = "Serena Bloodfeather", index = 1, count = 1 },
            },
            sourceStep = 135,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 875 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2040,
            text = "Turn in The Spirits of Stonetalon to Seereth Stonebreak.",
            route = {
                { y = 0.2787, mapID = 1413, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens.", x = 0.3529 },
            },
            dependsOn = { "accept-1061-the-spirits-of-stonetalon" },
            id = "turnin-1061-the-spirits-of-stonetalon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1061, state = "completed" },
            },
            sourceStep = 136,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2050,
            text = "Accept Goblin Invaders from Seereth Stonebreak.",
            route = {
                { y = 0.2788, mapID = 1413, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens.", x = 0.3526 },
            },
            dependsOn = { "turnin-1061-the-spirits-of-stonetalon" },
            id = "accept-1062-goblin-invaders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1062, state = "activeOrCompleted" },
            },
            sourceStep = 136,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1061 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2060,
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            text = "Accept Avenge My Village from Makaba Flathoof.",
            id = "accept-6548-avenge-my-village",
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
                quest = { id = 6548, state = "activeOrCompleted" },
            },
            sourceStep = 137,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2070,
            text = "Kill 6 Grimtotem Mercenary.",
            route = {
                { y = 0.906, mapID = 1442, label = "Grimtotem Mercenary", offMapText = "Travel to Grimtotem Mercenary.", x = 0.802 },
            },
            dependsOn = { "accept-6548-avenge-my-village" },
            id = "objective-6548-2-grimtotem-mercenary",
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
                questObjective = { id = 6548, text = "Grimtotem Mercenary", index = 2, count = 6 },
            },
            sourceStep = 138,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2080,
            text = "Kill 8 Grimtotem Ruffian.",
            route = {
                { y = 0.906, mapID = 1442, label = "Grimtotem Ruffian", offMapText = "Travel to Grimtotem Ruffian.", x = 0.802 },
            },
            dependsOn = { "accept-6548-avenge-my-village" },
            id = "objective-6548-1-grimtotem-ruffian",
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
                questObjective = { id = 6548, text = "Grimtotem Ruffian", index = 1, count = 8 },
            },
            sourceStep = 138,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2090,
            text = "Turn in Avenge My Village to Makaba Flathoof.",
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            dependsOn = { "accept-6548-avenge-my-village", "objective-6548-2-grimtotem-mercenary", "objective-6548-1-grimtotem-ruffian" },
            id = "turnin-6548-avenge-my-village",
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
                quest = { id = 6548, state = "completed" },
            },
            sourceStep = 139,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2100,
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            text = "Accept Kill Grundig Darkcloud from Makaba Flathoof.",
            id = "accept-6629-kill-grundig-darkcloud",
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
                quest = { id = 6629, state = "activeOrCompleted" },
            },
            sourceStep = 139,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6548 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-6629-2-grimtotem-brute",
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
            text = "Kill 6 Grimtotem Brute.",
            complete = {
                questObjective = { id = 6629, index = 2, text = "Grimtotem Brute", count = 6 },
            },
            route = {
                { mapID = 1442, x = 0.74, y = 0.8540000000000001, label = "Grimtotem Brute", offMapText = "Travel to Grimtotem Brute." },
            },
            sourceStep = 141,
            priority = 2110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6548 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6629-kill-grundig-darkcloud" },
        },
        {
            priority = 2120,
            route = {
                { y = 0.8559, mapID = 1442, label = "Kaya Flathoof", offMapText = "Travel to Kaya Flathoof in Stonetalon Mountains.", x = 0.7348 },
            },
            text = "Accept Protect Kaya from Kaya Flathoof.",
            id = "accept-6523-protect-kaya",
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
                quest = { id = 6523, state = "activeOrCompleted" },
            },
            sourceStep = 142,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2130,
            route = {
                { y = 0.9502, mapID = 1442, label = "Xen'Zilla", offMapText = "Travel to Xen'Zilla in Stonetalon Mountains.", x = 0.7124 },
            },
            text = "Accept Blood Feeders from Xen'Zilla.",
            id = "accept-6461-blood-feeders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6461, state = "activeOrCompleted" },
            },
            sourceStep = 144,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2140,
            text = "Kill 10 Deepmoss Creeper.",
            route = {
                { y = 0.78, mapID = 1442, label = "Deepmoss Creeper", offMapText = "Travel to Deepmoss Creeper.", x = 0.592 },
            },
            dependsOn = { "accept-6461-blood-feeders" },
            id = "objective-6461-1-deepmoss-creeper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6461, text = "Deepmoss Creeper", index = 1, count = 10 },
            },
            sourceStep = 145,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2150,
            text = "Turn in Ziz Fizziks to Ziz Fizziks.",
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            dependsOn = { "accept-1483-ziz-fizziks" },
            id = "turnin-1483-ziz-fizziks",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1483, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2160,
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            text = "Accept Super Reaper 6000 from Ziz Fizziks.",
            id = "accept-1093-super-reaper-6000",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1093, state = "activeOrCompleted" },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1069-1-deepmoss-egg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            text = "Collect 15 Deepmoss Egg.",
            complete = {
                questObjective = { id = 1069, index = 1, text = "Deepmoss Egg", count = 15 },
            },
            route = {
                { mapID = 1442, x = 0.624, y = 0.614, label = "Deepmoss Egg", offMapText = "Travel to Deepmoss Egg." },
            },
            sourceStep = 148,
            priority = 2170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1069-deepmoss-spider-eggs" },
        },
        {
            id = "objective-6461-2-deepmoss-venomspitter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Deepmoss Venomspitter.",
            complete = {
                questObjective = { id = 6461, index = 2, text = "Deepmoss Venomspitter", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.624, y = 0.614, label = "Deepmoss Venomspitter", offMapText = "Travel to Deepmoss Venomspitter." },
            },
            sourceStep = 149,
            priority = 2180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6461-blood-feeders" },
        },
        {
            priority = 2190,
            text = "Collect 1 Super Reaper 6000 Blueprints.",
            route = {
                { y = 0.52, mapID = 1442, label = "Venture Co. Operator", offMapText = "Travel to Venture Co. Operator.", x = 0.622 },
            },
            dependsOn = { "accept-1093-super-reaper-6000" },
            id = "objective-1093-1-venture-co-operator",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1093, text = "Venture Co. Operator", index = 1, count = 1 },
            },
            sourceStep = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1062-1-venture-co-logger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Venture Co. Logger.",
            complete = {
                questObjective = { id = 1062, index = 1, text = "Venture Co. Logger", count = 15 },
            },
            route = {
                { mapID = 1442, x = 0.6659999999999999, y = 0.55, label = "Venture Co. Logger", offMapText = "Travel to Venture Co. Logger." },
            },
            sourceStep = 151,
            priority = 2200,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1061 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1062-goblin-invaders" },
        },
        {
            priority = 2210,
            text = "Turn in Super Reaper 6000 to Ziz Fizziks.",
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            dependsOn = { "accept-1093-super-reaper-6000", "objective-1093-1-venture-co-operator" },
            id = "turnin-1093-super-reaper-6000",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1093, state = "completed" },
            },
            sourceStep = 153,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2220,
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            text = "Accept Further Instructions from Ziz Fizziks.",
            id = "accept-1094-further-instructions",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1094, state = "activeOrCompleted" },
            },
            sourceStep = 153,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1093 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2230,
            text = "Turn in Jorn Skyseer to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-3261-jorn-skyseer" },
            id = "turnin-3261-jorn-skyseer",
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
                quest = { id = 3261, state = "completed" },
            },
            sourceStep = 155,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 905 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2240,
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            text = "Accept Ishamuhale from Jorn Skyseer.",
            id = "accept-882-ishamuhale",
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
                quest = { id = 882, state = "activeOrCompleted" },
            },
            sourceStep = 155,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2250,
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            text = "Accept Tribes at War from Mangletooth.",
            id = "accept-878-tribes-at-war",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 878, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2260,
            route = {
                { y = 0.525, mapID = 1413, label = "Lakota'mani", offMapText = "Travel to Lakota'mani.", x = 0.475 },
            },
            text = "Kill Lakota'mani and loot the Hoof of Lakota'mani.",
            id = "note-883-lakota-mani-loot",
            kind = "note",
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
                any = {
                    {
                        quest = { id = 883, state = "activeOrCompleted" },
                    },
                    { item = "Hoof of Lakota'mani" },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-883-lakota-mani",
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
            text = "Loot Hoof of Lakota'mani from Lakota'mani. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Hoof of Lakota'mani", minCount = 1 },
                    },
                    {
                        quest = { id = 883, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 2270,
        },
        {
            priority = 2280,
            text = "Use the Hoof of Lakota'mani to accept Lakota'mani.",
            id = "accept-883-lakota-mani",
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
                quest = { id = 883, state = "activeOrCompleted" },
            },
            sourceStep = 158,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-821-3-thunder-lizard-horn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Thunder Lizard Horn.",
            complete = {
                questObjective = { id = 821, index = 3, text = "Thunder Lizard Horn", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.462, y = 0.514, label = "Thunder Lizard Horn", offMapText = "Travel to Thunder Lizard Horn." },
            },
            sourceStep = 159,
            priority = 2290,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-821-chen-s-empty-keg" },
        },
        {
            priority = 2300,
            route = {
                { y = 0.546, mapID = 1413, label = "Bristleback Water Seeker", offMapText = "Travel to Bristleback Water Seeker.", x = 0.504 },
            },
            text = "Kill Bristleback Water Seeker. Loot the starter item here, then use it to accept the quest.",
            id = "objective-5052-1-bristleback-water-seeker",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5052, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 878 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2310,
            text = "Collect 60 Bristleback Quilboar Tusk.",
            route = {
                { y = 0.546, mapID = 1413, label = "Bristleback Quilboar Tusk", offMapText = "Travel to Bristleback Quilboar Tusk.", x = 0.504 },
            },
            dependsOn = { "accept-899-consumed-by-hatred" },
            id = "objective-899-1-bristleback-quilboar-tusk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 899, text = "Bristleback Quilboar Tusk", index = 1, count = 60 },
            },
            sourceStep = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-878-1-bristleback-water-seeker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 6 Bristleback Water Seeker.",
            complete = {
                questObjective = { id = 878, index = 1, text = "Bristleback Water Seeker", count = 6 },
            },
            route = {
                { mapID = 1413, x = 0.504, y = 0.546, label = "Bristleback Water Seeker", offMapText = "Travel to Bristleback Water Seeker." },
            },
            sourceStep = 161,
            priority = 2320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-878-tribes-at-war" },
        },
        {
            id = "objective-878-2-bristleback-thornweaver",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 12 Bristleback Thornweaver.",
            complete = {
                questObjective = { id = 878, index = 2, text = "Bristleback Thornweaver", count = 12 },
            },
            route = {
                { mapID = 1413, x = 0.504, y = 0.546, label = "Bristleback Thornweaver", offMapText = "Travel to Bristleback Thornweaver." },
            },
            sourceStep = 161,
            priority = 2330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-878-tribes-at-war" },
        },
        {
            id = "objective-878-3-bristleback-geomancer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 12 Bristleback Geomancer.",
            complete = {
                questObjective = { id = 878, index = 3, text = "Bristleback Geomancer", count = 12 },
            },
            route = {
                { mapID = 1413, x = 0.504, y = 0.546, label = "Bristleback Geomancer", offMapText = "Travel to Bristleback Geomancer." },
            },
            sourceStep = 161,
            priority = 2340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-878-tribes-at-war" },
        },
        {
            priority = 2350,
            text = "Collect 8 Altered Snapjaw Shell.",
            route = {
                { y = 0.427, mapID = 1413, label = "Oasis Snapjaw", offMapText = "Travel to Oasis Snapjaw.", x = 0.5553 },
            },
            dependsOn = { "accept-880-altered-beings" },
            id = "objective-880-1-oasis-snapjaw",
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
                questObjective = { id = 880, text = "Oasis Snapjaw", index = 1, count = 8 },
            },
            sourceStep = 162,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2360,
            text = "Kill Zhevra Chargers east of the Crossroads and loot a Fresh Zhevra Carcass.",
            route = {
                { mapID = 1413, x = 0.606, y = 0.35600000000000004, label = "Zhevra Chargers", offMapText = "Travel to Zhevra Chargers." },
            },
            dependsOn = { "accept-882-ishamuhale" },
            id = "objective-882-1-zhevra-charger",
            kind = "note",
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
                any = {
                    {
                        all = {
                            {
                                item = { name = "Fresh Zhevra Carcass", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 882, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 164,
            sourceInstructionIndex = 1,
            checkpointQuest = 882,
            instructionOnly = true,
            rememberPreparation = 882,
        },
        {
            priority = 2370,
            text = "Place the Fresh Zhevra Carcass by the dead tree to summon Ishamuhale. Kill the raptor and collect his fang.",
            route = {
                { mapID = 1413, x = 0.5989, y = 0.3029, label = "Ishamuhale", offMapText = "Travel to Ishamuhale." },
            },
            dependsOn = { "accept-882-ishamuhale" },
            id = "objective-882-1-fresh-zhevra-carcass",
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
                questObjective = { id = 882, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2380,
            text = "Turn in Plundering the Plunderers to Wrenix the Wretched.",
            route = {
                { y = 0.3632, mapID = 1413, label = "Wrenix the Wretched", offMapText = "Travel to Wrenix the Wretched in The Barrens.", x = 0.6307 },
            },
            dependsOn = { "accept-2381-plundering-the-plunderers", "objective-2381-1-the-jewel-of-the-southsea" },
            id = "turnin-2381-plundering-the-plunderers",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2381, state = "completed" },
            },
            sourceStep = 165,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2390,
            text = "Turn in Stolen Booty to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-888-stolen-booty", "objective-888-2-telescopic-lens", "objective-888-1-shipment-of-boots" },
            id = "turnin-888-stolen-booty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                },
            },
            complete = {
                quest = { id = 888, state = "completed" },
            },
            sourceStep = 166,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 892 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2400,
            text = "Turn in Further Instructions to Sputtervalve.",
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            dependsOn = { "accept-1094-further-instructions" },
            id = "turnin-1094-further-instructions",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1094, state = "completed" },
            },
            sourceStep = 167,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1093 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2410,
            route = {
                { y = 0.3722, mapID = 1413, label = "Sputtervalve", offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298 },
            },
            text = "Accept Further Instructions from Sputtervalve.",
            id = "accept-1095-further-instructions",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1095, state = "activeOrCompleted" },
            },
            sourceStep = 167,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1094 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2420,
            text = "Kill Fleeting, Greater or Ornery Plainstriders in northern Barrens and collect 5 Plainstrider Kidneys.",
            route = {
                { mapID = 1413, x = 0.48, y = 0.132, label = "Northern Barrens plainstriders", offMapText = "Travel to Northern Barrens plainstriders." },
            },
            dependsOn = { "accept-821-chen-s-empty-keg" },
            id = "objective-821-1-plainstrider-kidney",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 821, index = 2, count = 5 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2430,
            text = "Turn in Raptor Horns to Mebok Mizzyrix.",
            route = {
                { y = 0.3762, mapID = 1413, label = "Mebok Mizzyrix", offMapText = "Travel to Mebok Mizzyrix in The Barrens.", x = 0.6237 },
            },
            dependsOn = { "accept-865-raptor-horns", "objective-865-1-intact-raptor-horn" },
            id = "turnin-865-raptor-horns",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                },
            },
            complete = {
                quest = { id = 865, state = "completed" },
            },
            sourceStep = 169,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2440,
            text = "Turn in Deepmoss Spider Eggs to Mebok Mizzyrix.",
            route = {
                { y = 0.3762, mapID = 1413, label = "Mebok Mizzyrix", offMapText = "Travel to Mebok Mizzyrix in The Barrens.", x = 0.6237 },
            },
            dependsOn = { "accept-1069-deepmoss-spider-eggs", "objective-1069-1-deepmoss-egg" },
            id = "turnin-1069-deepmoss-spider-eggs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            complete = {
                quest = { id = 1069, state = "completed" },
            },
            sourceStep = 169,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2450,
            text = "Turn in Chen's Empty Keg to Brewmaster Drohn.",
            route = {
                { y = 0.3839, mapID = 1413, label = "Brewmaster Drohn", offMapText = "Travel to Brewmaster Drohn in The Barrens.", x = 0.6226 },
            },
            dependsOn = {
                "accept-821-chen-s-empty-keg",
                "objective-821-1-savannah-prowler",
                "objective-821-2-plainstrider-kidney",
                "objective-821-3-thunder-lizard-horn",
                "objective-821-1-plainstrider-kidney",
            },
            id = "turnin-821-chen-s-empty-keg",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 821, state = "completed" },
            },
            sourceStep = 171,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2460,
            text = "Turn in Serena Bloodfeather to Darsok Swiftdagger.",
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            dependsOn = { "accept-876-serena-bloodfeather", "objective-876-1-serena-bloodfeather" },
            id = "turnin-876-serena-bloodfeather",
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
                quest = { id = 876, state = "completed" },
            },
            sourceStep = 172,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 875 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1060-letter-to-jin-zil",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1060,
            priority = 2470,
        },
        {
            priority = 2480,
            route = {
                { y = 0.309, mapID = 1413, label = "Darsok Swiftdagger", offMapText = "Travel to Darsok Swiftdagger in The Barrens.", x = 0.5162 },
            },
            text = "Accept Letter to Jin'Zil from Darsok Swiftdagger.",
            id = "accept-1060-letter-to-jin-zil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1060, state = "activeOrCompleted" },
            },
            sourceStep = 172,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 876 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2490,
            text = "Turn in Consumed by Hatred to Mankrik.",
            route = {
                { y = 0.3158, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik in The Barrens.", x = 0.5195 },
            },
            dependsOn = { "accept-899-consumed-by-hatred", "objective-899-1-bristleback-quilboar-tusk" },
            id = "turnin-899-consumed-by-hatred",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 899, state = "completed" },
            },
            sourceStep = 173,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2500,
            text = "Turn in Altered Beings to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "accept-880-altered-beings", "objective-880-1-oasis-snapjaw" },
            id = "turnin-880-altered-beings",
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
                quest = { id = 880, state = "completed" },
            },
            sourceStep = 175,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 877 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2510,
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            text = "Accept Mura Runetotem from Tonga Runetotem.",
            id = "accept-3301-mura-runetotem",
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
                quest = { id = 3301, state = "activeOrCompleted" },
            },
            sourceStep = 175,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 880 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1528-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1528,
            alternativeQuests = { 1529, 2985, 2986 },
            priority = 2520,
        },
        {
            priority = 2530,
            route = {
                { y = 0.3773, mapID = 1454, label = "Searn Firewarder", offMapText = "Travel to Searn Firewarder in Orgrimmar.", x = 0.3796 },
            },
            text = "Accept Call of Water from Searn Firewarder.",
            id = "accept-1528-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1528, state = "activeOrCompleted" },
            },
            sourceStep = 182,
            requiredQuests = {},
            alternativeQuests = { 1529, 2985, 2986 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2540,
            text = "Turn in Call of Water to Islen Waterseer.",
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            dependsOn = { "accept-1528-call-of-water" },
            id = "turnin-1528-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1528, state = "completed" },
            },
            sourceStep = 184,
            requiredQuests = {},
            alternativeQuests = { 1529, 2985, 2986 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2550,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Accept Call of Water from Islen Waterseer.",
            id = "accept-1530-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1530, state = "activeOrCompleted" },
            },
            sourceStep = 184,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1507-devourer-of-souls",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            checkpointQuest = 1507,
            alternativeQuests = { 1472 },
            priority = 2560,
        },
        {
            priority = 2570,
            route = {
                { y = 0.4529, mapID = 1454, label = "Gan'rul Bloodeye", offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar.", x = 0.4825 },
            },
            text = "Accept Devourer of Souls from Gan'rul Bloodeye.",
            id = "accept-1507-devourer-of-souls",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1507, state = "activeOrCompleted" },
            },
            sourceStep = 186,
            requiredQuests = {},
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2580,
            text = "Turn in Devourer of Souls to Cazul.",
            route = {
                { y = 0.4648, mapID = 1454, label = "Cazul", offMapText = "Travel to Cazul in Orgrimmar.", x = 0.4706 },
            },
            dependsOn = { "accept-1507-devourer-of-souls" },
            id = "turnin-1507-devourer-of-souls",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1507, state = "completed" },
            },
            sourceStep = 188,
            requiredQuests = {},
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2590,
            route = {
                { y = 0.4648, mapID = 1454, label = "Cazul", offMapText = "Travel to Cazul in Orgrimmar.", x = 0.4706 },
            },
            text = "Accept Blind Cazul from Cazul.",
            id = "accept-1508-blind-cazul",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1508, state = "activeOrCompleted" },
            },
            sourceStep = 188,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1507 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2600,
            text = "Turn in Blind Cazul to Zankaja.",
            route = {
                { y = 0.5945, mapID = 1454, label = "Zankaja", offMapText = "Travel to Zankaja in Orgrimmar.", x = 0.3703 },
            },
            dependsOn = { "accept-1508-blind-cazul" },
            id = "turnin-1508-blind-cazul",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1508, state = "completed" },
            },
            sourceStep = 189,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1507 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2610,
            route = {
                { y = 0.5945, mapID = 1454, label = "Zankaja", offMapText = "Travel to Zankaja in Orgrimmar.", x = 0.3703 },
            },
            text = "Accept News of Dogran from Zankaja.",
            id = "accept-1509-news-of-dogran",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1509, state = "activeOrCompleted" },
            },
            sourceStep = 189,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1508 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2620,
            text = "Turn in News of Dogran to Gazrog.",
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            dependsOn = { "accept-1509-news-of-dogran" },
            id = "turnin-1509-news-of-dogran",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1509, state = "completed" },
            },
            sourceStep = 190,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1508 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2630,
            route = {
                { y = 0.3032, mapID = 1413, label = "Gazrog", offMapText = "Travel to Gazrog in The Barrens.", x = 0.5193 },
            },
            text = "Accept News of Dogran from Gazrog.",
            id = "accept-1510-news-of-dogran",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1510, state = "activeOrCompleted" },
            },
            sourceStep = 190,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1509 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2640,
            text = "Turn in Tribes at War to Mangletooth.",
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            dependsOn = {
                "accept-878-tribes-at-war",
                "objective-878-1-bristleback-water-seeker",
                "objective-878-2-bristleback-thornweaver",
                "objective-878-3-bristleback-geomancer",
            },
            id = "turnin-878-tribes-at-war",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 878, state = "completed" },
            },
            sourceStep = 191,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2650,
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            text = "Accept Blood Shards of Agamaggan from Mangletooth.",
            id = "accept-5052-blood-shards-of-agamaggan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5052, state = "activeOrCompleted" },
            },
            sourceStep = 191,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 878 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2660,
            text = "Turn in Blood Shards of Agamaggan to Mangletooth.",
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            dependsOn = { "accept-5052-blood-shards-of-agamaggan" },
            id = "turnin-5052-blood-shards-of-agamaggan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5052, state = "completed" },
            },
            sourceStep = 192,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 878 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2670,
            text = "Turn in Ishamuhale to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-882-ishamuhale", "objective-882-1-zhevra-charger", "objective-882-1-fresh-zhevra-carcass" },
            id = "turnin-882-ishamuhale",
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
                quest = { id = 882, state = "completed" },
            },
            sourceStep = 194,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2680,
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            text = "Accept Enraged Thunder Lizards from Jorn Skyseer.",
            id = "accept-907-enraged-thunder-lizards",
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
                quest = { id = 907, state = "activeOrCompleted" },
            },
            sourceStep = 194,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 882 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2690,
            text = "Turn in Lakota'mani to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-883-lakota-mani" },
            id = "turnin-883-lakota-mani",
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
                quest = { id = 883, state = "completed" },
            },
            sourceStep = 194,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2700,
            text = "Collect 3 Thunder Lizard Blood.",
            route = {
                { y = 0.626, mapID = 1413, label = "Stormsnout", offMapText = "Travel to Stormsnout.", x = 0.44 },
            },
            dependsOn = { "accept-907-enraged-thunder-lizards" },
            id = "objective-907-1-stormsnout",
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
                questObjective = { id = 907, text = "Stormsnout", index = 1, count = 3 },
            },
            sourceStep = 195,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 882 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2710,
            text = "Turn in Enraged Thunder Lizards to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-907-enraged-thunder-lizards", "objective-907-1-stormsnout" },
            id = "turnin-907-enraged-thunder-lizards",
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
                quest = { id = 907, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 882 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2720,
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            text = "Accept Cry of the Thunderhawk from Jorn Skyseer.",
            id = "accept-913-cry-of-the-thunderhawk",
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
                quest = { id = 913, state = "activeOrCompleted" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 907 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2730,
            text = "Turn in Call of Water to Brine.",
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            dependsOn = { "accept-1530-call-of-water" },
            id = "turnin-1530-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1530, state = "completed" },
            },
            sourceStep = 197,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2740,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Accept Call of Water from Brine.",
            id = "accept-1535-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1535, state = "activeOrCompleted" },
            },
            sourceStep = 197,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1530 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2750,
            text = "Collect 1 Filled Brown Waterskin.",
            route = {
                { y = 0.7697, mapID = 1413, label = "Empty Brown Waterskin", offMapText = "Travel to Empty Brown Waterskin.", x = 0.4435 },
            },
            dependsOn = { "accept-1535-call-of-water" },
            id = "objective-1535-1-empty-brown-waterskin",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                questObjective = { id = 1535, text = "Empty Brown Waterskin", index = 1, count = 1 },
            },
            sourceStep = 198,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1530 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2760,
            text = "Turn in Call of Water to Brine.",
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            dependsOn = { "accept-1535-call-of-water", "objective-1535-1-empty-brown-waterskin" },
            id = "turnin-1535-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1535, state = "completed" },
            },
            sourceStep = 199,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1530 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2770,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Accept Call of Water from Brine.",
            id = "accept-1536-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
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
            complete = {
                quest = { id = 1536, state = "activeOrCompleted" },
            },
            sourceStep = 199,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1535 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-913-1-thunderhawk-wings",
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
            text = "Collect 1 Thunderhawk Wings.",
            complete = {
                questObjective = { id = 913, index = 1, text = "Thunderhawk Wings", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.456, y = 0.562, label = "Thunderhawk Wings", offMapText = "Travel to Thunderhawk Wings." },
            },
            sourceStep = 200,
            priority = 2780,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 907 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-913-cry-of-the-thunderhawk" },
        },
        {
            priority = 2790,
            text = "Turn in Cry of the Thunderhawk to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-913-cry-of-the-thunderhawk", "objective-913-1-thunderhawk-wings" },
            id = "turnin-913-cry-of-the-thunderhawk",
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
                quest = { id = 913, state = "completed" },
            },
            sourceStep = 201,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 907 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2800,
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            text = "Accept Mahren Skyseer from Jorn Skyseer.",
            id = "accept-874-mahren-skyseer",
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
                quest = { id = 874, state = "activeOrCompleted" },
            },
            sourceStep = 201,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 913 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2810,
            route = {
                { y = 0.3015, mapID = 1413, label = "Apothecary Helbrim", offMapText = "Travel to Apothecary Helbrim in The Barrens.", x = 0.5144 },
            },
            text = "Accept Apothecary Zamah from Apothecary Helbrim.",
            id = "accept-853-apothecary-zamah",
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
                quest = { id = 853, state = "activeOrCompleted" },
            },
            sourceStep = 202,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 848 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2820,
            route = {
                { mapID = 1456, x = 0.24719999999999998, y = 0.223, label = "Clarice Foster", offMapText = "Travel to Clarice Foster in Thunder Bluff." },
            },
            text = "Accept Until Death Do Us Part from Clarice Foster.",
            id = "accept-264-until-death-do-us-part",
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
                quest = { id = 264, state = "activeOrCompleted" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2830,
            text = "Turn in Apothecary Zamah to Apothecary Zamah.",
            route = {
                { y = 0.209, mapID = 1456, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff.", x = 0.2281 },
            },
            dependsOn = { "accept-853-apothecary-zamah" },
            id = "turnin-853-apothecary-zamah",
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
                quest = { id = 853, state = "completed" },
            },
            sourceStep = 208,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 848 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5642-shadowguard",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 8 },
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
            checkpointQuest = 5642,
            alternativeQuests = { 5643, 5680 },
            priority = 2840,
        },
        {
            priority = 2850,
            route = {
                { y = 0.1529, mapID = 1456, label = "Miles Welsh", offMapText = "Travel to Miles Welsh in Thunder Bluff.", x = 0.2532 },
            },
            text = "Accept Shadowguard from Miles Welsh.",
            id = "accept-5642-shadowguard",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5642, state = "activeOrCompleted" },
            },
            sourceStep = 212,
            requiredQuests = {},
            alternativeQuests = { 5643, 5680 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5644-devouring-plague",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
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
            checkpointQuest = 5644,
            alternativeQuests = { 5646, 5679 },
            priority = 2860,
        },
        {
            priority = 2870,
            route = {
                { y = 0.1529, mapID = 1456, label = "Miles Welsh", offMapText = "Travel to Miles Welsh in Thunder Bluff.", x = 0.2532 },
            },
            text = "Accept Devouring Plague from Miles Welsh.",
            id = "accept-5644-devouring-plague",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
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
            complete = {
                quest = { id = 5644, state = "activeOrCompleted" },
            },
            sourceStep = 212,
            requiredQuests = {},
            alternativeQuests = { 5646, 5679 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-27-a-lesson-to-learn",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            priority = 2880,
        },
        {
            priority = 2890,
            route = {
                { y = 0.2722, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7648 },
            },
            text = "Accept A Lesson to Learn from Turak Runetotem.",
            id = "accept-27-a-lesson-to-learn",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 27, state = "activeOrCompleted" },
            },
            sourceStep = 215,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2900,
            text = "Turn in A Lesson to Learn to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-27-a-lesson-to-learn" },
            id = "turnin-27-a-lesson-to-learn",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 27, state = "completed" },
            },
            sourceStep = 216,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2910,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Trial of the Lake from Dendrite Starblaze.",
            id = "accept-28-trial-of-the-lake",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 28, state = "activeOrCompleted" },
            },
            sourceStep = 216,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 27 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-28-1-shrine-bauble",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 1 Shrine Bauble.",
            complete = {
                questObjective = { id = 28, index = 1, text = "Shrine Bauble", count = 1 },
            },
            route = {
                { mapID = 1450, x = 0.5433, y = 0.5565, label = "Shrine Bauble", offMapText = "Travel to Shrine Bauble." },
            },
            sourceStep = 217,
            priority = 2920,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 27 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-28-trial-of-the-lake" },
        },
        {
            id = "level-before-objective-28-2-shrine-bauble",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
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
            checkpointQuest = 28,
            priority = 2930,
        },
        {
            priority = 2940,
            text = "Use Shrine Bauble.",
            route = {
                { y = 0.4138, mapID = 1450, label = "Shrine Bauble", offMapText = "Travel to Shrine Bauble.", x = 0.3592 },
            },
            dependsOn = { "accept-28-trial-of-the-lake" },
            id = "objective-28-2-shrine-bauble",
            kind = "objective",
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
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 28, text = "Shrine Bauble", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 27 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2950,
            text = "Turn in Trial of the Lake to Tajarri.",
            route = {
                { y = 0.401, mapID = 1450, label = "Tajarri", offMapText = "Travel to Tajarri in Moonglade.", x = 0.3652 },
            },
            dependsOn = { "accept-28-trial-of-the-lake", "objective-28-1-shrine-bauble", "objective-28-2-shrine-bauble" },
            id = "turnin-28-trial-of-the-lake",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 28, state = "completed" },
            },
            sourceStep = 219,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 27 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2960,
            route = {
                { y = 0.401, mapID = 1450, label = "Tajarri", offMapText = "Travel to Tajarri in Moonglade.", x = 0.3652 },
            },
            text = "Accept Trial of the Sea Lion from Tajarri.",
            id = "accept-30-trial-of-the-sea-lion",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 30, state = "activeOrCompleted" },
            },
            sourceStep = 219,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 28 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-868-egg-hunt",
            kind = "note",
            text = "Reach level 17 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 17 },
            },
            requiredLevel = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 868,
            priority = 2970,
        },
        {
            id = "accept-868-egg-hunt",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Accept Egg Hunt from Korran.",
            complete = {
                quest = { id = 868, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1413, x = 0.5107, y = 0.2963, label = "Korran", offMapText = "Travel to Korran in The Barrens." },
            },
            sourceStep = 246,
            priority = 2980,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2990,
            text = "Collect 1 Hezrul's Head.",
            route = {
                { y = 0.398, mapID = 1413, label = "Hezrul Bloodmark", offMapText = "Travel to Hezrul Bloodmark.", x = 0.488 },
            },
            dependsOn = { "accept-852-hezrul-bloodmark" },
            id = "objective-852-1-hezrul-bloodmark",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 852, text = "Hezrul Bloodmark", index = 1, count = 1 },
            },
            sourceStep = 247,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 851 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3000,
            text = "Turn in Hezrul Bloodmark to Regthar Deathgate.",
            route = {
                { y = 0.2841, mapID = 1413, label = "Regthar Deathgate", offMapText = "Travel to Regthar Deathgate in The Barrens.", x = 0.4534 },
            },
            dependsOn = { "accept-852-hezrul-bloodmark", "objective-852-1-hezrul-bloodmark" },
            id = "turnin-852-hezrul-bloodmark",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 852, state = "completed" },
            },
            sourceStep = 248,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 851 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3010,
            text = "Turn in Goblin Invaders to Seereth Stonebreak.",
            route = {
                { y = 0.2788, mapID = 1413, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens.", x = 0.3526 },
            },
            dependsOn = { "accept-1062-goblin-invaders", "objective-1062-1-venture-co-logger" },
            id = "turnin-1062-goblin-invaders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1062, state = "completed" },
            },
            sourceStep = 249,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1061 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3020,
            route = {
                { y = 0.2788, mapID = 1413, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens.", x = 0.3526 },
            },
            text = "Accept The Elder Crone from Seereth Stonebreak.",
            id = "accept-1063-the-elder-crone",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1063, state = "activeOrCompleted" },
            },
            sourceStep = 250,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3030,
            route = {
                { y = 0.2788, mapID = 1413, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens.", x = 0.3526 },
            },
            text = "Accept Shredding Machines from Seereth Stonebreak.",
            id = "accept-1068-shredding-machines",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1068, state = "activeOrCompleted" },
            },
            sourceStep = 250,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3040,
            text = "Turn in Protect Kaya to Makaba Flathoof.",
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            dependsOn = { "accept-6523-protect-kaya" },
            id = "turnin-6523-protect-kaya",
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
                quest = { id = 6523, state = "completed" },
            },
            sourceStep = 251,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3050,
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            text = "Accept Kaya's Alive from Makaba Flathoof.",
            id = "accept-6401-kaya-s-alive",
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
                quest = { id = 6401, state = "activeOrCompleted" },
            },
            sourceStep = 251,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6523 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3060,
            text = "Turn in Kill Grundig Darkcloud to Makaba Flathoof.",
            route = {
                { y = 0.2779, mapID = 1413, label = "Makaba Flathoof", offMapText = "Travel to Makaba Flathoof in The Barrens.", x = 0.3519 },
            },
            dependsOn = { "accept-6629-kill-grundig-darkcloud", "objective-6629-2-grimtotem-brute" },
            id = "turnin-6629-kill-grundig-darkcloud",
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
                quest = { id = 6629, state = "completed" },
            },
            sourceStep = 251,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6548 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3070,
            text = "Turn in Letter to Jin'Zil to Witch Doctor Jin'Zil.",
            route = {
                { mapID = 1442, x = 0.7454000000000001, y = 0.9793999999999999, label = "Witch Doctor Jin'Zil", offMapText = "Travel to Witch Doctor Jin'Zil in Stonetalon Mountains." },
            },
            dependsOn = { "accept-1060-letter-to-jin-zil" },
            id = "turnin-1060-letter-to-jin-zil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1060, state = "completed" },
            },
            sourceStep = 252,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 876 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1058-jin-zil-s-forest-magic",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 1058,
            priority = 3080,
        },
        {
            priority = 3090,
            route = {
                { mapID = 1442, x = 0.7454000000000001, y = 0.9793999999999999, label = "Witch Doctor Jin'Zil", offMapText = "Travel to Witch Doctor Jin'Zil in Stonetalon Mountains." },
            },
            text = "Accept Jin'Zil's Forest Magic from Witch Doctor Jin'Zil.",
            id = "accept-1058-jin-zil-s-forest-magic",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1058, state = "activeOrCompleted" },
            },
            sourceStep = 252,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3100,
            text = "Turn in News of Dogran to Ken'zigla.",
            route = {
                { y = 0.9513, mapID = 1442, label = "Ken'zigla", offMapText = "Travel to Ken'zigla in Stonetalon Mountains.", x = 0.7325 },
            },
            dependsOn = { "accept-1510-news-of-dogran" },
            id = "turnin-1510-news-of-dogran",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1510, state = "completed" },
            },
            sourceStep = 253,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1509 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3110,
            route = {
                { y = 0.9513, mapID = 1442, label = "Ken'zigla", offMapText = "Travel to Ken'zigla in Stonetalon Mountains.", x = 0.7325 },
            },
            text = "Accept Ken'zigla's Draught from Ken'zigla.",
            id = "accept-1511-ken-zigla-s-draught",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            complete = {
                quest = { id = 1511, state = "activeOrCompleted" },
            },
            sourceStep = 253,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1510 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1472 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3120,
            text = "Turn in Blood Feeders to Xen'Zilla.",
            route = {
                { y = 0.9502, mapID = 1442, label = "Xen'Zilla", offMapText = "Travel to Xen'Zilla in Stonetalon Mountains.", x = 0.7124 },
            },
            dependsOn = { "accept-6461-blood-feeders", "objective-6461-1-deepmoss-creeper", "objective-6461-2-deepmoss-venomspitter" },
            id = "turnin-6461-blood-feeders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6461, state = "completed" },
            },
            sourceStep = 254,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3130,
            text = "Turn in Kaya's Alive to Tammra Windfield.",
            route = {
                { y = 0.5838, mapID = 1442, label = "Tammra Windfield", offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.", x = 0.4746 },
            },
            dependsOn = { "accept-6401-kaya-s-alive" },
            id = "turnin-6401-kaya-s-alive",
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
                quest = { id = 6401, state = "completed" },
            },
            sourceStep = 255,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6523 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3140,
            text = "Turn in Further Instructions to Ziz Fizziks.",
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            dependsOn = { "accept-1095-further-instructions" },
            id = "turnin-1095-further-instructions",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1095, state = "completed" },
            },
            sourceStep = 257,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1094 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3150,
            text = "Kill the shredder XT:9 near the southern side of Windshear Crag.",
            route = {
                { mapID = 1442, x = 0.7066, y = 0.5611999999999999, label = "XT-9", offMapText = "Travel to XT-9." },
            },
            dependsOn = { "accept-1068-shredding-machines" },
            id = "objective-1068-2-authored-XT-9",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1068, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceStep = 258,
        },
        {
            priority = 3160,
            text = "Kill the shredder XT:4 near the northern side of Windshear Crag.",
            route = {
                { mapID = 1442, x = 0.6731999999999999, y = 0.4658, label = "XT-4", offMapText = "Travel to XT-4." },
            },
            dependsOn = { "accept-1068-shredding-machines" },
            id = "objective-1068-1-authored-XT-4",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1068, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceStep = 259,
        },
        {
            id = "level-before-woven-accept-95350-welcome-to-azeroth",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95350,
            priority = 3170,
        },
        {
            priority = 3180,
            route = {
                { y = 0.224, mapID = 1412, label = "Alana Stormwalker", offMapText = "Travel to Alana Stormwalker.", x = 0.334 },
            },
            text = "Accept Welcome to Azeroth from Alana Stormwalker in Mulgore. This step is for Horde Skyborne.",
            id = "woven-accept-95350-welcome-to-azeroth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95350, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3190,
            route = {
                { y = 0.378, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall.", x = 0.32 },
            },
            text = "Turn in Welcome to Azeroth to Thrall in Orgrimmar. This step is for Horde Skyborne.",
            id = "woven-turnin-95350-welcome-to-azeroth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95350, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95350-welcome-to-azeroth" },
        },
        {
            priority = 3200,
            route = {
                { y = 0.378, mapID = 1454, label = "Thrall", offMapText = "Travel to Thrall.", x = 0.32 },
            },
            text = "Accept Journey to the Crossroads from Thrall in Orgrimmar. This step is for Horde Skyborne.",
            id = "woven-accept-98024-journey-to-the-crossroads",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98024, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 96 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3210,
            route = {
                { y = 0.308, mapID = 1413, label = "Thork", offMapText = "Travel to Thork.", x = 0.514 },
            },
            text = "Turn in Journey to the Crossroads to Thork at the Crossroads. This step is for Horde Skyborne.",
            id = "woven-turnin-98024-journey-to-the-crossroads",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98024, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 96 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98024-journey-to-the-crossroads" },
        },
        {
            id = "level-before-woven-accept-97253-parts-and-pieces",
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
            checkpointQuest = 97253,
            priority = 3220,
        },
        {
            priority = 3230,
            route = {
                { y = 0.364, mapID = 1413, label = "Wrenix the Wretched", offMapText = "Travel to Wrenix the Wretched.", x = 0.63 },
            },
            text = "Accept Parts and Pieces from Wrenix the Wretched in Ratchet.",
            id = "woven-accept-97253-parts-and-pieces",
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
                quest = { id = 97253, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3240,
            route = {
                { y = 0.4572, mapID = 1413, label = "Complicated Parts", offMapText = "Travel to Complicated Parts.", x = 0.6139 },
            },
            text = "Parts and Pieces: collect 5 Handfuls of Complicated Parts from the upper pirate camp south of Ratchet.",
            id = "woven-objective-97253-parts-and-pieces",
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
                quest = { id = 97253, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97253-parts-and-pieces" },
        },
        {
            priority = 3250,
            route = {
                { y = 0.364, mapID = 1413, label = "Wrenix the Wretched", offMapText = "Travel to Wrenix the Wretched.", x = 0.63 },
            },
            text = "Turn in Parts and Pieces to Wrenix the Wretched in Ratchet.",
            id = "woven-turnin-97253-parts-and-pieces",
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
                quest = { id = 97253, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97253-parts-and-pieces", "woven-objective-97253-parts-and-pieces" },
        },
        {
            id = "level-before-woven-accept-95507-vrangs-game",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 95507,
            priority = 3260,
        },
        {
            priority = 3270,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            text = "Accept Vrang's Game from Vrang Wildgore.",
            id = "woven-accept-95507-vrangs-game",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95507, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3280,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            text = "Accept Bruised Pride and Lion Hides from Vrang Wildgore.",
            id = "woven-accept-95494-bruised-pride-and-lion-hides",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95494, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Vrang's Game: collect 8 Trapped Game from sprung traps in the valley. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 3290,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            id = "woven-objective-95507-vrangs-game",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 95507, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-95507-vrangs-game" },
        },
        {
            priority = 3300,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            text = "Turn in Vrang's Game to Vrang Wildgore.",
            id = "woven-turnin-95507-vrangs-game",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95507, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95507-vrangs-game", "woven-objective-95507-vrangs-game" },
        },
        {
            priority = 3310,
            route = {
                { y = 0.15, mapID = 1413, label = "Savannah Patriarch", offMapText = "Travel to Savannah Patriarch.", x = 0.43 },
                { y = 0.336, mapID = 1413, label = "Savannah Matriarch", offMapText = "Travel to Savannah Matriarch.", x = 0.604 },
            },
            text = "Bruised Pride and Lion Hides: collect 6 Savannah Lion Hides from Savannah Patriarchs and Savannah Matriarchs.",
            id = "woven-objective-95494-bruised-pride-and-lion-hides",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95494, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95494-bruised-pride-and-lion-hides" },
        },
        {
            priority = 3320,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            text = "Turn in Bruised Pride and Lion Hides to Vrang Wildgore.",
            id = "woven-turnin-95494-bruised-pride-and-lion-hides",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95494, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95494-bruised-pride-and-lion-hides", "woven-objective-95494-bruised-pride-and-lion-hides" },
        },
        {
            priority = 3330,
            route = {
                { y = 0.122, mapID = 1413, label = "Vrang Wildgore", offMapText = "Travel to Vrang Wildgore.", x = 0.438 },
            },
            text = "Accept The Hermit Tanner from Vrang Wildgore.",
            id = "woven-accept-95495-the-hermit-tanner",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95495, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3340,
            route = {
                { y = 0.114, mapID = 1413, label = "Walton", offMapText = "Travel to Walton.", x = 0.42 },
            },
            text = "Turn in The Hermit Tanner to Walton on the ridge.",
            id = "woven-turnin-95495-the-hermit-tanner",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95495, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95495-the-hermit-tanner" },
        },
        {
            priority = 3350,
            route = {
                { y = 0.114, mapID = 1413, label = "Walton", offMapText = "Travel to Walton.", x = 0.42 },
            },
            text = "Accept Trouble in the Valley from Walton.",
            id = "woven-accept-95621-trouble-in-the-valley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95621, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3360,
            route = {
                { y = 0.16, mapID = 1413, label = "Corporal Adamore", offMapText = "Travel to Corporal Adamore.", x = 0.424 },
            },
            text = "Trouble in the Valley: take Benedict's Orders from Corporal Adamore at the wrecked caravan.",
            id = "woven-objective-95621-trouble-in-the-valley",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95621, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95621-trouble-in-the-valley" },
        },
        {
            priority = 3370,
            route = {
                { y = 0.114, mapID = 1413, label = "Walton", offMapText = "Travel to Walton.", x = 0.42 },
            },
            text = "Turn in Trouble in the Valley to Walton.",
            id = "woven-turnin-95621-trouble-in-the-valley",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95621, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95621-trouble-in-the-valley", "woven-objective-95621-trouble-in-the-valley" },
        },
        {
            priority = 3380,
            route = {
                { y = 0.114, mapID = 1413, label = "Walton", offMapText = "Travel to Walton.", x = 0.42 },
            },
            text = "Accept Unwelcome Guests from Walton.",
            id = "woven-accept-95508-unwelcome-guests",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95508, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3390,
            route = {
                { y = 0.114, mapID = 1413, label = "Terry Longdrink", offMapText = "Travel to Terry Longdrink.", x = 0.418 },
            },
            text = "Unwelcome Guests: help Walton survive Terry Longdrink and the Kul Tiras marines.",
            id = "woven-objective-95508-unwelcome-guests",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95508, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95508-unwelcome-guests" },
        },
        {
            priority = 3400,
            route = {
                { y = 0.114, mapID = 1413, label = "Walton", offMapText = "Travel to Walton.", x = 0.42 },
            },
            text = "Turn in Unwelcome Guests to Walton.",
            id = "woven-turnin-95508-unwelcome-guests",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95508, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95508-unwelcome-guests", "woven-objective-95508-unwelcome-guests" },
        },
        {
            priority = 3410,
            route = {
                { y = 0.316, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik.", x = 0.52 },
            },
            text = "Accept Her Name Is Olgra from Mankrik at the Crossroads.",
            id = "woven-accept-95774-her-name-is-olgra",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95774, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 4921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3420,
            route = {
                { y = 0.504, mapID = 1413, label = "Razormane Raider", offMapText = "Travel to Razormane Raider.", x = 0.492 },
            },
            text = "Her Name Is Olgra: collect 4 of Olgra's Adornments from quilboars.",
            id = "woven-objective-95774-her-name-is-olgra",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95774, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 4921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95774-her-name-is-olgra" },
        },
        {
            priority = 3430,
            route = {
                { y = 0.316, mapID = 1413, label = "Mankrik", offMapText = "Travel to Mankrik.", x = 0.52 },
            },
            text = "Turn in Her Name Is Olgra to Mankrik at the Crossroads.",
            id = "woven-turnin-95774-her-name-is-olgra",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95774, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 4921 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95774-her-name-is-olgra", "woven-objective-95774-her-name-is-olgra" },
        },
        {
            id = "level-before-woven-accept-92706-wanted-bruuz",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 92706,
            priority = 3440,
        },
        {
            priority = 3450,
            route = {
                { y = 0.375, mapID = 1413, label = "WANTED", offMapText = "Travel to WANTED.", x = 0.626 },
            },
            text = "Accept WANTED: Bruuz from the poster in Ratchet. This is an elite. Bring a group.",
            id = "woven-accept-92706-wanted-bruuz",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92706, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3460,
            route = {
                { y = 0.39, mapID = 1413, label = "Bruuz", offMapText = "Travel to Bruuz.", x = 0.644 },
            },
            text = "WANTED: Bruuz: bring Bruuz's Dorsal Fin to Gazlowe. This is an elite. Bring a group.",
            id = "woven-objective-92706-wanted-bruuz",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92706, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92706-wanted-bruuz" },
        },
        {
            priority = 3470,
            route = {
                { y = 0.362, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe.", x = 0.626 },
            },
            text = "Turn in WANTED: Bruuz to Gazlowe in Ratchet.",
            id = "woven-turnin-92706-wanted-bruuz",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92706, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92706-wanted-bruuz", "woven-objective-92706-wanted-bruuz" },
        },
        {
            priority = 3480,
            route = {
                { y = 0.29, mapID = 1413, label = "Gur'ak", offMapText = "Travel to Gur'ak.", x = 0.526 },
            },
            text = "Accept Chol'aruk the Ravener from Gur'ak at the Crossroads. This is an elite. Bring a group.",
            id = "woven-accept-97003-cholaruk-the-ravener",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97003, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3490,
            route = {
                { y = 0.272, mapID = 1413, label = "Chol'aruk", offMapText = "Travel to Chol'aruk.", x = 0.574 },
            },
            text = "Chol'aruk the Ravener: bring Chol'aruk's Head from the cave at Thorn Hill. This is an elite. Bring a group.",
            id = "woven-objective-97003-cholaruk-the-ravener",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97003, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97003-cholaruk-the-ravener" },
        },
        {
            priority = 3500,
            route = {
                { y = 0.29, mapID = 1413, label = "Gur'ak", offMapText = "Travel to Gur'ak.", x = 0.526 },
            },
            text = "Turn in Chol'aruk the Ravener to Gur'ak at the Crossroads.",
            id = "woven-turnin-97003-cholaruk-the-ravener",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97003, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97003-cholaruk-the-ravener", "woven-objective-97003-cholaruk-the-ravener" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
