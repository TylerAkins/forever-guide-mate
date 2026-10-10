local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Ashenvale",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-ashenvale-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 26 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-mage-accept-1944-waters-of-xavian",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 26 },
            },
            requiredLevel = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1944,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1944-waters-of-xavian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1944-waters-of-xavian",
        },
        {
            priority = 30,
            id = "woven-class-mage-objective-1944-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1944-waters-of-xavian" },
            classAction = "objective-1944-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "woven-class-mage-accept-1944-waters-of-xavian", "woven-class-mage-objective-1944-quest-work" },
            id = "woven-class-mage-turnin-1944-waters-of-xavian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1944-waters-of-xavian",
        },
        {
            priority = 50,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1945-laughing-sisters",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1945-laughing-sisters",
        },
        {
            priority = 60,
            id = "woven-class-mage-objective-1945-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1945-laughing-sisters" },
            classAction = "objective-1945-quest-work",
        },
        {
            priority = 70,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = { "woven-class-mage-accept-1945-laughing-sisters", "woven-class-mage-objective-1945-quest-work" },
            id = "woven-class-mage-turnin-1945-laughing-sisters",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1945-laughing-sisters",
        },
        {
            priority = 80,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1946-nether-lace-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1946-nether-lace-garment",
        },
        {
            priority = 90,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = { "woven-class-mage-accept-1946-nether-lace-garment" },
            id = "woven-class-mage-turnin-1946-nether-lace-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1946-nether-lace-garment",
        },
        {
            priority = 100,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "woven-class-mage-accept-1943-speak-with-deino",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1943-speak-with-deino",
        },
        {
            priority = 110,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "woven-class-mage-accept-1943-speak-with-deino" },
            id = "woven-class-mage-turnin-1943-speak-with-deino",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1943-speak-with-deino",
        },
        {
            id = "level-before-accept-6541-report-to-kadrak",
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
            checkpointQuest = 6541,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            text = "Accept Report to Kadrak from Thork.",
            id = "accept-6541-report-to-kadrak",
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
            complete = {
                quest = { id = 6541, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in Report to Kadrak to Kadrak.",
            route = {
                { y = 0.0542, mapID = 1413, label = "Kadrak", offMapText = "Travel to Kadrak in The Barrens.", x = 0.4812 },
            },
            dependsOn = { "accept-6541-report-to-kadrak" },
            id = "turnin-6541-report-to-kadrak",
            kind = "turnin",
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
            complete = {
                quest = { id = 6541, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6504-the-lost-pages",
            kind = "note",
            text = "Reach level 23 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 23 },
            },
            requiredLevel = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6504,
            priority = 150,
        },
        {
            priority = 160,
            route = {
                { y = 0.7115, mapID = 1440, label = "Gurda Ragescar", offMapText = "Travel to Gurda Ragescar in Ashenvale.", x = 0.7 },
            },
            text = "Accept The Lost Pages from Gurda Ragescar.",
            id = "accept-6504-the-lost-pages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6504, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-6504-the-lost-pages" },
            id = "objective-6504-1-shredder-operating-manual-page-1",
            text = "Loot Shredder Operating Manual pages 1 through 4 from enemies around Ashenvale. Use Page 1 with all four pages in your bags to assemble Chapter 1.",
            useClientPin = true,
            complete = {
                questObjective = { id = 6504, text = "Shredder Operating Manual - Page 1", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 170,
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
        },
        {
            dependsOn = { "accept-6504-the-lost-pages" },
            id = "objective-6504-2-shredder-operating-manual-page-5",
            text = "Loot Shredder Operating Manual pages 5 through 8 from enemies around Ashenvale. Use Page 5 with all four pages in your bags to assemble Chapter 2.",
            useClientPin = true,
            complete = {
                questObjective = { id = 6504, text = "Shredder Operating Manual - Page 5", index = 2, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 180,
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
        },
        {
            dependsOn = { "accept-6504-the-lost-pages" },
            id = "objective-6504-3-shredder-operating-manual-page-9",
            text = "Loot Shredder Operating Manual pages 9 through 12 from enemies around Ashenvale. Use Page 9 with all four pages in your bags to assemble Chapter 3.",
            useClientPin = true,
            complete = {
                questObjective = { id = 6504, text = "Shredder Operating Manual - Page 9", index = 3, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 190,
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 200,
            text = "Turn in The Lost Pages to Gurda Ragescar.",
            route = {
                { y = 0.7115, mapID = 1440, label = "Gurda Ragescar", offMapText = "Travel to Gurda Ragescar in Ashenvale.", x = 0.7 },
            },
            dependsOn = {
                "accept-6504-the-lost-pages",
                "objective-6504-1-shredder-operating-manual-page-1",
                "objective-6504-2-shredder-operating-manual-page-5",
                "objective-6504-3-shredder-operating-manual-page-9",
            },
            id = "turnin-6504-the-lost-pages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6504, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.6812, mapID = 1440, label = "Kuray'bin", offMapText = "Travel to Kuray'bin in Ashenvale.", x = 0.711 },
            },
            text = "Accept Ashenvale Outrunners from Kuray'bin.",
            id = "accept-6503-ashenvale-outrunners",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6503, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            id = "turnin-6382-the-ashenvale-hunt",
            kind = "turnin",
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
                quest = { id = 6382, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 882 },
                    conditions = {},
                },
            },
            alternativeQuests = { 235, 742 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "accept-235-verified-pickup",
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
            text = "Speak with Warcaller Gorlach to accept The Ashenvale Hunt.",
            complete = {
                quest = { id = 235, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1454, x = 0.3768, y = 0.7515999999999999, label = "Warcaller Gorlach", offMapText = "Travel to Warcaller Gorlach." },
            },
            priority = 230,
            requiredQuests = {},
            alternativeQuests = { 742, 6382 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "turnin-235-the-ashenvale-hunt",
            kind = "turnin",
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
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            complete = {
                quest = { id = 235, state = "completed" },
            },
            route = {
                { mapID = 1440, x = 0.7378, y = 0.6146, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale." },
            },
            sourceStep = 12,
            priority = 240,
            requiredQuests = {},
            alternativeQuests = { 742, 6382 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-235-verified-pickup" },
        },
        {
            id = "accept-742-verified-pickup",
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
            text = "Accept The Ashenvale Hunt from Bluff Runner Windstrider in Thunder Bluff.",
            complete = {
                quest = { id = 742, state = "activeOrCompleted" },
            },
            priority = 250,
            requiredQuests = {},
            alternativeQuests = { 235, 6382 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            id = "turnin-742-the-ashenvale-hunt",
            kind = "turnin",
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
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            complete = {
                quest = { id = 742, state = "completed" },
            },
            route = {
                { mapID = 1440, x = 0.7378, y = 0.6146, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale." },
            },
            sourceStep = 12,
            priority = 260,
            requiredQuests = {},
            alternativeQuests = { 235, 6382 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-742-verified-pickup" },
        },
        {
            priority = 270,
            text = "Accept The Ashenvale Hunt from Senani Thunderheart.",
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            dependsOn = { "turnin-6382-the-ashenvale-hunt" },
            id = "accept-6383-the-ashenvale-hunt",
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
                quest = { id = 6383, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            dependsOn = { "accept-6383-the-ashenvale-hunt" },
            id = "turnin-6383-the-ashenvale-hunt",
            kind = "turnin",
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
                quest = { id = 6383, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.6001, mapID = 1440, label = "Mastok Wrilehiss", offMapText = "Travel to Mastok Wrilehiss in Ashenvale.", x = 0.7367 },
            },
            text = "Accept Stonetalon Standstill from Mastok Wrilehiss.",
            id = "accept-25-stonetalon-standstill",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 25, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { y = 0.6148, mapID = 1440, label = "Pixel", offMapText = "Travel to Pixel in Ashenvale.", x = 0.7306 },
            },
            text = "Accept Satyr Horns from Pixel.",
            id = "accept-6441-satyr-horns",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6441, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Kill 9 Ashenvale Outrunner.",
            route = {
                { y = 0.702, mapID = 1440, label = "Ashenvale Outrunner", offMapText = "Travel to Ashenvale Outrunner.", x = 0.728 },
            },
            dependsOn = { "accept-6503-ashenvale-outrunners" },
            id = "objective-6503-1-ashenvale-outrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6503, text = "Ashenvale Outrunner", index = 1, count = 9 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { y = 0.753, mapID = 1440, label = "Torek", offMapText = "Travel to Torek in Ashenvale.", x = 0.6834 },
            },
            text = "Accept Torek's Assault from Torek.",
            id = "accept-6544-torek-s-assault",
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
                quest = { id = 6544, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-24-shadumbra-s-head",
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
            text = "Loot Shadumbra's Head from Shadumbra. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Shadumbra's Head", minCount = 1 },
                    },
                    {
                        quest = { id = 24, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 330,
        },
        {
            priority = 340,
            text = "Use the Shadumbra's Head to accept Shadumbra's Head.",
            id = "accept-24-shadumbra-s-head",
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
                quest = { id = 24, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.345, mapID = 1440, label = "Ruul Snowhoof", offMapText = "Travel to Ruul Snowhoof in Ashenvale.", x = 0.4149 },
            },
            text = "Accept Freedom to Ruul from Ruul Snowhoof.",
            id = "accept-6482-freedom-to-ruul",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6482, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-216-1-thistlefur-avenger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 12 Thistlefur Avenger.",
            complete = {
                questObjective = { id = 216, index = 1, text = "Thistlefur Avenger", count = 12 },
            },
            route = {
                { mapID = 1440, x = 0.396, y = 0.364, label = "Thistlefur Avenger", offMapText = "Travel to Thistlefur Avenger." },
            },
            sourceStep = 32,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-216-2-thistlefur-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 12 Thistlefur Shaman.",
            complete = {
                questObjective = { id = 216, index = 2, text = "Thistlefur Shaman", count = 12 },
            },
            route = {
                { mapID = 1440, x = 0.396, y = 0.364, label = "Thistlefur Shaman", offMapText = "Travel to Thistlefur Shaman." },
            },
            sourceStep = 32,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1534-1-empty-blue-waterskin",
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
            checkpointQuest = 1534,
            priority = 380,
        },
        {
            priority = 390,
            route = {
                { y = 0.6744, mapID = 1440, label = "Empty Blue Waterskin", offMapText = "Travel to Empty Blue Waterskin.", x = 0.3355 },
            },
            text = "Collect 1 Filled Blue Waterskin.",
            id = "objective-1534-1-empty-blue-waterskin",
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
                questObjective = { id = 1534, text = "Empty Blue Waterskin", index = 1, count = 1 },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1536 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-23-ursangous-s-paw",
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
            text = "Loot Ursangous's Paw from Ursangous. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ursangous's Paw", minCount = 1 },
                    },
                    {
                        quest = { id = 23, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 400,
        },
        {
            priority = 410,
            text = "Use the Ursangous's Paw to accept Ursangous's Paw.",
            id = "accept-23-ursangous-s-paw",
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
                quest = { id = 23, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1918-the-befouled-element",
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
            text = "Loot Befouled Water Globe from Tideress. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Befouled Water Globe", minCount = 1 },
                    },
                    {
                        quest = { id = 1918, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 420,
        },
        {
            priority = 430,
            text = "Use the Befouled Water Globe to accept The Befouled Element.",
            id = "accept-1918-the-befouled-element",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1918, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-25-1-befouled-water-elemental",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 12 Befouled Water Elemental.",
            complete = {
                questObjective = { id = 25, index = 1, text = "Befouled Water Elemental", count = 12 },
            },
            route = {
                { mapID = 1440, x = 0.496, y = 0.6920000000000001, label = "Befouled Water Elemental", offMapText = "Travel to Befouled Water Elemental." },
            },
            sourceStep = 38,
            priority = 440,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-25-stonetalon-standstill" },
        },
        {
            priority = 450,
            route = {
                { y = 0.729, mapID = 1440, label = "Etched Phial", offMapText = "Travel to Etched Phial.", x = 0.602 },
            },
            text = "Collect 1 Filled Etched Phial.",
            id = "objective-1195-1-etched-phial",
            kind = "objective",
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
                questObjective = { id = 1195, text = "Etched Phial", index = 1, count = 1 },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Ashenvale Outrunners to Kuray'bin.",
            route = {
                { mapID = 1440, x = 0.7111, y = 0.6812, label = "Kuray'bin", offMapText = "Travel to Kuray'bin in Ashenvale." },
            },
            dependsOn = { "accept-6503-ashenvale-outrunners", "objective-6503-1-ashenvale-outrunner" },
            id = "turnin-6503-ashenvale-outrunners",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6503, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Torek's Assault to Ertog Ragetusk.",
            route = {
                { y = 0.6247, mapID = 1440, label = "Ertog Ragetusk", offMapText = "Travel to Ertog Ragetusk in Ashenvale.", x = 0.7303 },
            },
            dependsOn = { "accept-6544-torek-s-assault" },
            id = "turnin-6544-torek-s-assault",
            kind = "turnin",
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
                quest = { id = 6544, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Turn in Shadumbra's Head to Senani Thunderheart.",
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            dependsOn = { "accept-24-shadumbra-s-head" },
            id = "turnin-24-shadumbra-s-head",
            kind = "turnin",
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
                quest = { id = 24, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Turn in Ursangous's Paw to Senani Thunderheart.",
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            dependsOn = { "accept-23-ursangous-s-paw" },
            id = "turnin-23-ursangous-s-paw",
            kind = "turnin",
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
                quest = { id = 23, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Freedom to Ruul to Yama Snowhoof.",
            route = {
                { y = 0.6092, mapID = 1440, label = "Yama Snowhoof", offMapText = "Travel to Yama Snowhoof in Ashenvale.", x = 0.7411 },
            },
            dependsOn = { "accept-6482-freedom-to-ruul" },
            id = "turnin-6482-freedom-to-ruul",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6482, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Stonetalon Standstill to Mastok Wrilehiss.",
            route = {
                { y = 0.6, mapID = 1440, label = "Mastok Wrilehiss", offMapText = "Travel to Mastok Wrilehiss in Ashenvale.", x = 0.7367 },
            },
            dependsOn = { "accept-25-stonetalon-standstill", "objective-25-1-befouled-water-elemental" },
            id = "turnin-25-stonetalon-standstill",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 25, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in The Befouled Element to Mastok Wrilehiss.",
            route = {
                { y = 0.6, mapID = 1440, label = "Mastok Wrilehiss", offMapText = "Travel to Mastok Wrilehiss in Ashenvale.", x = 0.7367 },
            },
            dependsOn = { "accept-1918-the-befouled-element" },
            id = "turnin-1918-the-befouled-element",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1918, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.6, mapID = 1440, label = "Mastok Wrilehiss", offMapText = "Travel to Mastok Wrilehiss in Ashenvale.", x = 0.7367 },
            },
            text = "Accept Je'neu of the Earthen Ring from Mastok Wrilehiss.",
            id = "accept-824-je-neu-of-the-earthen-ring",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 824, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "For Satyr Horns: Collect 16 Satyr Horns for Pixel in Splintertree Post.",
            id = "objective-6441-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6441, state = "complete" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-6441-satyr-horns" },
        },
        {
            priority = 550,
            text = "Turn in Satyr Horns to Pixel.",
            route = {
                { y = 0.6148, mapID = 1440, label = "Pixel", offMapText = "Travel to Pixel in Ashenvale.", x = 0.7306 },
            },
            dependsOn = { "accept-6441-satyr-horns", "objective-6441-quest-work" },
            id = "turnin-6441-satyr-horns",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6441, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "Turn in Je'neu of the Earthen Ring to Je'neu Sancrea.",
            route = {
                { y = 0.3429, mapID = 1440, label = "Je'neu Sancrea", offMapText = "Travel to Je'neu Sancrea in Ashenvale.", x = 0.1156 },
            },
            dependsOn = { "accept-824-je-neu-of-the-earthen-ring" },
            id = "turnin-824-je-neu-of-the-earthen-ring",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 824, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "For Troll Charm: Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.",
            id = "objective-6462-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6462, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 580,
            route = {
                { y = 0.3485, mapID = 1440, label = "Mitsuwa", offMapText = "Travel to Mitsuwa in Ashenvale.", x = 0.1165 },
            },
            text = "Turn in Troll Charm to Mitsuwa.",
            id = "turnin-6462-troll-charm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6462, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-6462-quest-work" },
        },
        {
            priority = 590,
            route = {
                { y = 0.3454, mapID = 1440, label = "Karang Amakkar", offMapText = "Travel to Karang Amakkar in Ashenvale.", x = 0.119 },
            },
            text = "Turn in Between a Rock and a Thistlefur to Karang Amakkar.",
            id = "turnin-216-between-a-rock-and-a-thistlefur",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 216, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-216-1-thistlefur-avenger", "objective-216-2-thistlefur-shaman" },
        },
        {
            priority = 600,
            route = {
                { y = 0.3463, mapID = 1440, label = "Muglash", offMapText = "Travel to Muglash in Ashenvale.", x = 0.1206 },
            },
            text = "Accept Vorsha the Lasher from Muglash.",
            id = "accept-6641-vorsha-the-lasher",
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
                quest = { id = 6641, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Vorsha the Lasher to Warsong Runner.",
            route = {
                { y = 0.3421, mapID = 1440, label = "Warsong Runner", offMapText = "Travel to Warsong Runner in Ashenvale.", x = 0.1222 },
            },
            dependsOn = { "accept-6641-vorsha-the-lasher" },
            id = "turnin-6641-vorsha-the-lasher",
            kind = "turnin",
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
                quest = { id = 6641, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-2-sharptalon-s-claw",
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
            text = "Loot Sharptalon's Claw from Sharptalon. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Sharptalon's Claw", minCount = 1 },
                    },
                    {
                        quest = { id = 2, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 620,
        },
        {
            priority = 630,
            text = "Use the Sharptalon's Claw to accept Sharptalon's Claw.",
            id = "accept-2-sharptalon-s-claw",
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
                quest = { id = 2, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "Turn in Sharptalon's Claw to Senani Thunderheart.",
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            dependsOn = { "accept-2-sharptalon-s-claw" },
            id = "turnin-2-sharptalon-s-claw",
            kind = "turnin",
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
                quest = { id = 2, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.6146, mapID = 1440, label = "Senani Thunderheart", offMapText = "Travel to Senani Thunderheart in Ashenvale.", x = 0.7378 },
            },
            text = "Accept The Hunt Completed from Senani Thunderheart.",
            id = "accept-247-the-hunt-completed",
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
                quest = { id = 247, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 2, 23, 24 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            route = {
                { mapID = 1456, x = 0.2281, y = 0.2089, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff." },
            },
            text = "Turn in The Flying Machine Airport to Apothecary Zamah.",
            id = "turnin-1086-the-flying-machine-airport",
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
                quest = { id = 1086, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1067 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Turn in The Sacred Flame to Zangen Stonehoof.",
            route = {
                { y = 0.508, mapID = 1456, label = "Zangen Stonehoof", offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.", x = 0.551 },
            },
            dependsOn = { "objective-1195-1-etched-phial" },
            id = "turnin-1195-the-sacred-flame",
            kind = "turnin",
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
                quest = { id = 1195, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.508, mapID = 1456, label = "Zangen Stonehoof", offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.", x = 0.551 },
            },
            text = "Accept The Sacred Flame from Zangen Stonehoof.",
            id = "accept-1196-the-sacred-flame",
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
                quest = { id = 1196, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            route = {
                { y = 0.8092, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6154 },
            },
            text = "Accept Steelsnap from Melor Stonehoof.",
            id = "accept-1131-steelsnap",
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
                quest = { id = 1131, state = "activeOrCompleted" },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
