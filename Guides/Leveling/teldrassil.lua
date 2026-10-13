local _, ns = ...

ns:RegisterGuide({
    revision = 8,
    title = "Night Elf Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-teldrassil",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.5869 },
            },
            id = "accept-456-the-balance-of-nature",
            conditions = {
                all = {
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
            priority = 20,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            id = "objective-456-1-young-nightsaber",
            conditions = {
                all = {
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
            priority = 30,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            dependsOn = { "accept-456-the-balance-of-nature" },
            id = "objective-456-1-young-nightsaber-2",
            conditions = {
                all = {
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
            priority = 40,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Thistle Boar", offMapText = "Travel to Young Thistle Boar.", x = 0.582 },
            },
            dependsOn = { "accept-456-the-balance-of-nature" },
            id = "objective-456-2-young-thistle-boar",
            conditions = {
                all = {
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
            id = "level-before-accept-4495-a-good-friend",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 4495,
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { y = 0.4196, mapID = 1438, label = "Dirania Silvershine", offMapText = "Travel to Dirania Silvershine in Teldrassil.", x = 0.609 },
            },
            text = "Accept A Good Friend from Dirania Silvershine.",
            id = "accept-4495-a-good-friend",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4495, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.4248, mapID = 1438, label = "Melithar Staghelm", offMapText = "Travel to Melithar Staghelm in Teldrassil.", x = 0.5993 },
            },
            text = "Accept The Woodland Protector from Melithar Staghelm.",
            id = "accept-458-the-woodland-protector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 458, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
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
            priority = 90,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept The Balance of Nature from Conservator Ilthalaine.",
            id = "accept-457-the-balance-of-nature",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 457, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-456-the-balance-of-nature" },
        },
        {
            priority = 100,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept Simple Sigil from Conservator Ilthalaine.",
            id = "accept-3116-simple-sigil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3116, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept Encrypted Sigil from Conservator Ilthalaine.",
            id = "accept-3118-encrypted-sigil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3118, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept Hallowed Sigil from Conservator Ilthalaine.",
            id = "accept-3119-hallowed-sigil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3119, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept Etched Sigil from Conservator Ilthalaine.",
            id = "accept-3117-etched-sigil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3117, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            text = "Accept Verdant Sigil from Conservator Ilthalaine.",
            id = "accept-3120-verdant-sigil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3120, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Read Simple Sigil in your bags. Turn in Simple Sigil to Alyissia.",
            route = {
                { y = 0.3844, mapID = 1438, label = "Alyissia", offMapText = "Travel to Alyissia in Teldrassil.", x = 0.5964 },
            },
            dependsOn = { "accept-3116-simple-sigil" },
            id = "turnin-3116-simple-sigil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3116, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Read Encrypted Sigil in your bags. Turn in Encrypted Sigil to Frahun Shadewhisper.",
            route = {
                { y = 0.3866, mapID = 1438, label = "Frahun Shadewhisper", offMapText = "Travel to Frahun Shadewhisper in Teldrassil.", x = 0.5964 },
            },
            dependsOn = { "accept-3118-encrypted-sigil" },
            id = "turnin-3118-encrypted-sigil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3118, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Read Hallowed Sigil in your bags. Turn in Hallowed Sigil to Shanda.",
            route = {
                { y = 0.4044, mapID = 1438, label = "Shanda", offMapText = "Travel to Shanda in Teldrassil.", x = 0.5917 },
            },
            dependsOn = { "accept-3119-hallowed-sigil" },
            id = "turnin-3119-hallowed-sigil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3119, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            text = "Read Etched Sigil in your bags. Turn in Etched Sigil to Ayanna Everstride.",
            route = {
                { mapID = 1438, x = 0.5865, y = 0.4045, label = "Ayanna Everstride", offMapText = "Travel to Ayanna Everstride in Teldrassil." },
            },
            dependsOn = { "accept-3117-etched-sigil" },
            id = "turnin-3117-etched-sigil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3117, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Read Verdant Sigil in your bags. Turn in Verdant Sigil to Mardant Strongoak.",
            route = {
                { mapID = 1438, x = 0.5863, y = 0.4029, label = "Mardant Strongoak", offMapText = "Travel to Mardant Strongoak in Teldrassil." },
            },
            dependsOn = { "accept-3120-verdant-sigil" },
            id = "turnin-3120-verdant-sigil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 3120, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Turn in The Woodland Protector to Tarindrella.",
            route = {
                { y = 0.452, mapID = 1438, label = "Tarindrella", offMapText = "Travel to Tarindrella in Teldrassil.", x = 0.5783 },
            },
            dependsOn = { "accept-458-the-woodland-protector" },
            id = "turnin-458-the-woodland-protector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 458, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 205,
            route = {
                { y = 0.45, mapID = 1438, label = "Tarindrella", offMapText = "Travel to Tarindrella.", x = 0.578 },
            },
            text = "Accept Nature's Call from Tarindrella.",
            id = "woven-accept-97977-natures-call",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97977, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.452, mapID = 1438, label = "Tarindrella", offMapText = "Travel to Tarindrella in Teldrassil.", x = 0.5783 },
            },
            text = "Accept The Woodland Protector from Tarindrella.",
            id = "accept-459-the-woodland-protector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 459, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-458-the-woodland-protector" },
        },
        {
            priority = 220,
            text = "Collect 8 Fel Moss.",
            route = {
                { y = 0.4583, mapID = 1438, label = "Grell", offMapText = "Travel to Grell.", x = 0.5608 },
            },
            dependsOn = { "accept-459-the-woodland-protector" },
            id = "objective-459-1-grell",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 459, text = "Grell", index = 1, count = 8 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect a Gnarlpine Totem from the abandoned camps on the western edge of Shadowglen. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 225,
            route = {
                { y = 0.446, mapID = 1438, label = "Grell camps", offMapText = "Travel to Grell camps.", x = 0.55 },
            },
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            id = "woven-objective-97977-natures-call",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 97977, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-97977-natures-call" },
        },
        {
            id = "level-before-accept-916-webwood-venom",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 916,
            priority = 230,
        },
        {
            priority = 270,
            text = "Turn in A Good Friend to Iverron.",
            route = {
                { y = 0.3299, mapID = 1438, label = "Iverron", offMapText = "Travel to Iverron in Teldrassil.", x = 0.546 },
            },
            dependsOn = { "accept-4495-a-good-friend" },
            id = "turnin-4495-a-good-friend",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4495, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-3519-a-friend-in-need",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 2 } },
            requiredLevel = 2,
            checkpointQuest = 3519,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 275,
        },
        {
            priority = 280,
            route = {
                { y = 0.3299, mapID = 1438, label = "Iverron", offMapText = "Travel to Iverron in Teldrassil.", x = 0.546 },
            },
            text = "Accept A Friend in Need from Iverron.",
            id = "accept-3519-a-friend-in-need",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3519, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4495 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-4495-a-good-friend" },
        },
        {
            priority = 285,
            text = "Turn in A Friend in Need to Dirania Silvershine.",
            route = {
                { y = 0.4196, mapID = 1438, label = "Dirania Silvershine", offMapText = "Travel to Dirania Silvershine in Teldrassil.", x = 0.609 },
            },
            dependsOn = { "accept-3519-a-friend-in-need" },
            id = "turnin-3519-a-friend-in-need",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3519, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4495 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-3521-iverron-s-antidote",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 2 } },
            requiredLevel = 2,
            checkpointQuest = 3521,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 285.5,
        },
        {
            priority = 286,
            route = {
                { y = 0.4196, mapID = 1438, label = "Dirania Silvershine", offMapText = "Travel to Dirania Silvershine in Teldrassil.", x = 0.609 },
            },
            text = "Accept Iverron's Antidote from Dirania Silvershine.",
            id = "accept-3521-iverron-s-antidote",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3521, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-3519-a-friend-in-need" },
        },
        {
            priority = 240,
            route = {
                { y = 0.4165, mapID = 1438, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker in Teldrassil.", x = 0.5781 },
            },
            text = "Accept Webwood Venom from Gilshalan Windwalker.",
            id = "accept-916-webwood-venom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 916, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Kill 7 Mangy Nightsaber.",
            route = {
                { y = 0.376, mapID = 1438, label = "Mangy Nightsaber", offMapText = "Travel to Mangy Nightsaber.", x = 0.594 },
            },
            dependsOn = { "accept-457-the-balance-of-nature" },
            id = "objective-457-1-mangy-nightsaber",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 457, text = "Mangy Nightsaber", index = 1, count = 7 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Kill 7 Thistle Boar.",
            route = {
                { y = 0.376, mapID = 1438, label = "Thistle Boar", offMapText = "Travel to Thistle Boar.", x = 0.594 },
            },
            dependsOn = { "accept-457-the-balance-of-nature" },
            id = "objective-457-2-thistle-boar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 457, text = "Thistle Boar", index = 2, count = 7 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-916-1-webwood-venom-sac",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 10 Webwood Venom Sac.",
            complete = {
                questObjective = { id = 916, index = 1, text = "Webwood Venom Sac", count = 10 },
            },
            route = {
                { mapID = 1438, x = 0.568, y = 0.3159, label = "Webwood Venom Sac", offMapText = "Travel to Webwood Venom Sac." },
            },
            sourceStep = 28,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-916-webwood-venom" },
        },
        {
            id = "objective-3521-3-webwood-ichor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Webwood Ichor.",
            complete = {
                questObjective = { id = 3521, index = 3, text = "Webwood Ichor", count = 1 },
            },
            route = {
                { mapID = 1438, x = 0.568, y = 0.3159, label = "Webwood Ichor", offMapText = "Travel to Webwood Ichor." },
            },
            sourceStep = 44,
            priority = 295,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3521-iverron-s-antidote" },
        },
        {
            priority = 300,
            text = "Turn in Webwood Venom to Gilshalan Windwalker.",
            route = {
                { mapID = 1438, x = 0.5781000000000001, y = 0.4165, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker in Teldrassil." },
            },
            dependsOn = { "accept-916-webwood-venom", "objective-916-1-webwood-venom-sac" },
            id = "turnin-916-webwood-venom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 916, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { mapID = 1438, x = 0.5781000000000001, y = 0.4165, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker in Teldrassil." },
            },
            text = "Accept Webwood Egg from Gilshalan Windwalker.",
            id = "accept-917-webwood-egg",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 917, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 916 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-916-webwood-venom" },
        },
        {
            priority = 320,
            text = "Turn in The Balance of Nature to Conservator Ilthalaine.",
            route = {
                { y = 0.4426, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            dependsOn = { "accept-457-the-balance-of-nature", "objective-457-1-mangy-nightsaber", "objective-457-2-thistle-boar" },
            id = "turnin-457-the-balance-of-nature",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 457, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in The Woodland Protector to Tarindrella.",
            route = {
                { y = 0.452, mapID = 1438, label = "Tarindrella", offMapText = "Travel to Tarindrella in Teldrassil.", x = 0.5783 },
            },
            dependsOn = { "accept-459-the-woodland-protector", "objective-459-1-grell" },
            id = "turnin-459-the-woodland-protector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 459, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 458 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 335,
            route = {
                { y = 0.45, mapID = 1438, label = "Tarindrella", offMapText = "Travel to Tarindrella.", x = 0.578 },
            },
            text = "Turn in Nature's Call to Tarindrella.",
            id = "woven-turnin-97977-natures-call",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97977, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97977-natures-call", "woven-objective-97977-natures-call" },
        },
        {
            priority = 360,
            text = "Collect 7 Hyacinth Mushroom.",
            route = {
                { y = 0.441, mapID = 1438, label = "Hyacinth Mushroom", offMapText = "Travel to Hyacinth Mushroom.", x = 0.624 },
            },
            dependsOn = { "accept-3521-iverron-s-antidote" },
            id = "objective-3521-1-hyacinth-mushroom",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3521, text = "Hyacinth Mushroom", index = 1, count = 7 },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Collect 4 Moonpetal Lily.",
            route = {
                { y = 0.381, mapID = 1438, label = "Moonpetal Lily", offMapText = "Travel to Moonpetal Lily.", x = 0.587 },
            },
            dependsOn = { "accept-3521-iverron-s-antidote" },
            id = "objective-3521-2-moonpetal-lily",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3521, text = "Moonpetal Lily", index = 2, count = 4 },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-917-1-webwood-egg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Webwood Egg.",
            complete = {
                questObjective = { id = 917, index = 1, text = "Webwood Egg", count = 1 },
            },
            route = {
                { mapID = 1438, x = 0.568, y = 0.2643, label = "Webwood Egg", offMapText = "Travel to Webwood Egg." },
            },
            sourceStep = 43,
            priority = 380,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 916 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-917-webwood-egg" },
        },
        {
            priority = 400,
            text = "Turn in Webwood Egg to Gilshalan Windwalker.",
            route = {
                { mapID = 1438, x = 0.5781000000000001, y = 0.4165, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker in Teldrassil." },
            },
            dependsOn = { "accept-917-webwood-egg", "objective-917-1-webwood-egg" },
            id = "turnin-917-webwood-egg",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 917, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 916 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-97236-verified-pickup",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Loot Fang of Githyiss from Githyiss the Vile. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Fang of Githyiss", minCount = 1 },
                    },
                    {
                        quest = { id = 97236, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 402.5,
        },
        {
            priority = 405,
            text = "Use the Fang of Githyiss to accept Fang of Githyiss.",
            id = "accept-97236-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97236, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 407.5,
            route = {
                { y = 0.416, mapID = 1438, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker.", x = 0.578 },
            },
            text = "Turn in Fang of Githyiss to Gilshalan Windwalker if Githyiss the Vile dropped the fang.",
            id = "woven-turnin-97236-fang-of-githyiss",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97236, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-97236-verified-pickup" },
        },
        {
            priority = 410,
            route = {
                { mapID = 1438, x = 0.5781000000000001, y = 0.4165, label = "Gilshalan Windwalker", offMapText = "Travel to Gilshalan Windwalker in Teldrassil." },
            },
            text = "Accept Tenaron's Summons from Gilshalan Windwalker.",
            id = "accept-920-tenaron-s-summons",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 920, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 917 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Tenaron's Summons to Tenaron Stormgrip.",
            route = {
                { mapID = 1438, x = 0.5907, y = 0.3945, label = "Tenaron Stormgrip", offMapText = "Travel to Tenaron Stormgrip in Teldrassil." },
            },
            dependsOn = { "accept-920-tenaron-s-summons" },
            id = "turnin-920-tenaron-s-summons",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 920, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 917 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-96630-the-adventurer",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 96630,
            alternativeQuests = { 96627, 96628, 96638, 96652, 96656, 96659 },
            priority = 425,
        },
        {
            priority = 430,
            route = {
                { mapID = 1438, x = 0.5907, y = 0.3945, label = "Tenaron Stormgrip", offMapText = "Travel to Tenaron Stormgrip in Teldrassil." },
            },
            text = "Accept Crown of the Earth from Tenaron Stormgrip.",
            id = "accept-921-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 921, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 920 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Turn in Iverron's Antidote to Dirania Silvershine.",
            route = {
                { y = 0.4196, mapID = 1438, label = "Dirania Silvershine", offMapText = "Travel to Dirania Silvershine in Teldrassil.", x = 0.609 },
            },
            dependsOn = {
                "accept-3521-iverron-s-antidote",
                "objective-3521-1-hyacinth-mushroom",
                "objective-3521-2-moonpetal-lily",
                "objective-3521-3-webwood-ichor",
            },
            id = "turnin-3521-iverron-s-antidote",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3521, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-3522-iverron-s-antidote",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 2 } },
            requiredLevel = 2,
            checkpointQuest = 3522,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 445,
        },
        {
            priority = 450,
            route = {
                { y = 0.4196, mapID = 1438, label = "Dirania Silvershine", offMapText = "Travel to Dirania Silvershine in Teldrassil.", x = 0.609 },
            },
            text = "Accept Iverron's Antidote from Dirania Silvershine.",
            id = "accept-3522-iverron-s-antidote",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3522, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3521 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Collect 1 Filled Crystal Phial.",
            route = {
                { y = 0.3304, mapID = 1438, label = "Crystal Phial", offMapText = "Travel to Crystal Phial.", x = 0.5994 },
            },
            dependsOn = { "accept-921-crown-of-the-earth" },
            id = "objective-921-1-crystal-phial",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 921, text = "Crystal Phial", index = 1, count = 1 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 920 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Iverron's Antidote to Iverron.",
            route = {
                { y = 0.3299, mapID = 1438, label = "Iverron", offMapText = "Travel to Iverron in Teldrassil.", x = 0.5459 },
            },
            dependsOn = { "accept-3522-iverron-s-antidote" },
            id = "turnin-3522-iverron-s-antidote",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3522, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3521 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5622-in-favor-of-elune",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5622,
            priority = 480,
        },
        {
            priority = 490,
            route = {
                { mapID = 1438, x = 0.5917, y = 0.4044, label = "Shanda", offMapText = "Travel to Shanda in Teldrassil." },
            },
            text = "Accept In Favor of Elune from Shanda.",
            id = "accept-5622-in-favor-of-elune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5622, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Crown of the Earth to Tenaron Stormgrip.",
            route = {
                { mapID = 1438, x = 0.5907, y = 0.3945, label = "Tenaron Stormgrip", offMapText = "Travel to Tenaron Stormgrip in Teldrassil." },
            },
            dependsOn = { "accept-921-crown-of-the-earth", "objective-921-1-crystal-phial" },
            id = "turnin-921-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 921, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 920 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 505,
            route = {
                { y = 0.3939, mapID = 1438, label = "Tenaron Stormgrip", offMapText = "Travel to Tenaron Stormgrip.", x = 0.5909 },
            },
            text = "Accept The Adventurer from the book on the table behind Tenaron Stormgrip in Aldrassil.",
            id = "woven-accept-96630-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96630, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 921 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-921-crown-of-the-earth" },
        },
        {
            priority = 510,
            route = {
                { mapID = 1438, x = 0.5907, y = 0.3945, label = "Tenaron Stormgrip", offMapText = "Travel to Tenaron Stormgrip in Teldrassil." },
            },
            text = "Accept Crown of the Earth from Tenaron Stormgrip.",
            id = "accept-928-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 928, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            route = {
                { y = 0.4764, mapID = 1438, label = "Porthannius", offMapText = "Travel to Porthannius in Teldrassil.", x = 0.6116 },
            },
            text = "Accept Dolanaar Delivery from Porthannius.",
            id = "accept-2159-dolanaar-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2159, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-488-zenn-s-bidding",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 488,
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.5615, mapID = 1438, label = "Zenn Foulhoof", offMapText = "Travel to Zenn Foulhoof in Teldrassil.", x = 0.6045 },
            },
            text = "Accept Zenn's Bidding from Zenn Foulhoof.",
            id = "accept-488-zenn-s-bidding",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 488, state = "activeOrCompleted" },
            },
            sourceStep = 59,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-997-denalan-s-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 997,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 545,
        },
        {
            priority = 550,
            route = {
                { y = 0.5773, mapID = 1438, label = "Syral Bladeleaf", offMapText = "Travel to Syral Bladeleaf in Teldrassil.", x = 0.5608 },
            },
            text = "Accept Denalan's Earth from Syral Bladeleaf.",
            id = "accept-997-denalan-s-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 997, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-475-a-troubling-breeze",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 475,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 555,
        },
        {
            priority = 560,
            route = {
                { y = 0.5728, mapID = 1438, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle in Teldrassil.", x = 0.5595 },
            },
            text = "Accept A Troubling Breeze from Athridas Bearmantle.",
            id = "accept-475-a-troubling-breeze",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 475, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 565,
            route = {
                { y = 0.566, mapID = 1438, label = "Lyreena Duskblade", offMapText = "Travel to Lyreena Duskblade.", x = 0.576 },
            },
            text = "Turn in The Adventurer to Lyreena Duskblade near Dolanaar.",
            id = "woven-turnin-96630-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96630, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 921 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96630-the-adventurer" },
        },
        {
            id = "level-before-woven-accept-96101-the-great-outdoors",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 96101,
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            priority = 565.5,
        },
        {
            priority = 566,
            route = {
                { mapID = 1438, x = 0.5757, y = 0.5672999999999999, label = "Lyreena Duskblade", offMapText = "Travel to Lyreena Duskblade." },
            },
            text = "Accept The Great Outdoors from Lyreena Duskblade.",
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96606, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 567,
            text = "Type /sit beside Lyreena Duskblade's Basic Campfire and wait until you receive the Boosted Rest buff.",
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96606, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96101-the-great-outdoors" },
            route = {
                { mapID = 1438, x = 0.5757, y = 0.5672999999999999, label = "Lyreena Duskblade", offMapText = "Travel to Lyreena Duskblade." },
            },
        },
        {
            priority = 568,
            route = {
                { mapID = 1438, x = 0.5757, y = 0.5672999999999999, label = "Lyreena Duskblade", offMapText = "Travel to Lyreena Duskblade." },
            },
            text = "Turn in The Great Outdoors to Lyreena Duskblade.",
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96606, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96101-the-great-outdoors", "woven-objective-96101-the-great-outdoors" },
        },
        {
            priority = 570,
            text = "Turn in In Favor of Elune to Laurna Morninglight.",
            route = {
                { y = 0.5675, mapID = 1438, label = "Laurna Morninglight", offMapText = "Travel to Laurna Morninglight in Teldrassil.", x = 0.5556 },
            },
            dependsOn = { "accept-5622-in-favor-of-elune" },
            id = "turnin-5622-in-favor-of-elune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5622, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5621-garments-of-the-moon",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 5621,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 575,
        },
        {
            priority = 580,
            route = {
                { y = 0.5675, mapID = 1438, label = "Laurna Morninglight", offMapText = "Travel to Laurna Morninglight in Teldrassil.", x = 0.5556 },
            },
            text = "Accept Garments of the Moon from Laurna Morninglight.",
            id = "accept-5621-garments-of-the-moon",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5621, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-932-twisted-hatred",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 932,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 585,
        },
        {
            priority = 590,
            route = {
                { y = 0.5695, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil.", x = 0.5557 },
            },
            text = "Accept Twisted Hatred from Tallonkai Swiftroot.",
            id = "accept-932-twisted-hatred",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 932, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-87288-soft-saber-pelts",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 87288,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 591.111111,
        },
        {
            priority = 592.222222,
            id = "woven-accept-87288-soft-saber-pelts",
            kind = "accept",
            text = "Accept Soft Saber Pelts from Aldia.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 87288, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.5540, y = 0.5720, label = "Aldia", offMapText = "Travel to Aldia." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            priority = 593.333333,
            id = "woven-objective-87288-soft-saber-pelts",
            kind = "objective",
            text = "Collect Soft Nightsaber Pelts from Nightsabers east of Dolanaar until Soft Saber Pelts is ready.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 87288, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.6140, y = 0.5880, label = "Nightsaber", offMapText = "Travel to Nightsaber." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-87288-soft-saber-pelts" },
        },
        {
            priority = 594.444444,
            id = "woven-turnin-87288-soft-saber-pelts",
            kind = "turnin",
            text = "Turn in Soft Saber Pelts to Aldia.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 87288, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.5540, y = 0.5720, label = "Aldia", offMapText = "Travel to Aldia." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-87288-soft-saber-pelts", "woven-objective-87288-soft-saber-pelts" },
        },
        {
            id = "level-before-woven-accept-98403-twisted-hatred",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 98403,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 595.555556,
        },
        {
            priority = 596.666667,
            route = {
                { y = 0.568, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot.", x = 0.554 },
            },
            text = "Accept Twisted Hatred from Tallonkai Swiftroot. This is an elite. Bring a group.",
            id = "woven-accept-98403-twisted-hatred",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98403, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-98391-the-sisterhood-of-elune",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98391,
            priority = 597.777778,
        },
        {
            priority = 598.888889,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", offMapText = "Travel to Laurna Morninglight.", x = 0.556 },
            },
            text = "Accept The Sisterhood of Elune from Laurna Morninglight in Dolanaar.",
            id = "woven-accept-98391-the-sisterhood-of-elune",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98391, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            route = {
                { y = 0.5695, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil.", x = 0.5557 },
            },
            text = "Accept The Emerald Dreamcatcher from Tallonkai Swiftroot.",
            id = "accept-2438-the-emerald-dreamcatcher",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2438, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Dolanaar Delivery to Innkeeper Keldamyr.",
            route = {
                { y = 0.5979, mapID = 1438, label = "Innkeeper Keldamyr", offMapText = "Travel to Innkeeper Keldamyr in Teldrassil.", x = 0.5562 },
            },
            dependsOn = { "accept-2159-dolanaar-delivery" },
            id = "turnin-2159-dolanaar-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2159, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            dependsOn = { "accept-928-crown-of-the-earth" },
            id = "turnin-928-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 928, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            id = "accept-929-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 929, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 928 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "Turn in Denalan's Earth to Denalan.",
            route = {
                { y = 0.6849, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.609 },
            },
            dependsOn = { "accept-997-denalan-s-earth" },
            id = "turnin-997-denalan-s-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 997, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-918-timberling-seeds",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 918,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 645,
        },
        {
            priority = 650,
            route = {
                { y = 0.6854, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.608 },
            },
            text = "Accept Timberling Seeds from Denalan.",
            id = "accept-918-timberling-seeds",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 918, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-919-timberling-sprouts",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 919,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 655,
        },
        {
            priority = 660,
            route = {
                { y = 0.6854, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.608 },
            },
            text = "Accept Timberling Sprouts from Denalan.",
            id = "accept-919-timberling-sprouts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 919, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Collect 12 Timberling Sprout.",
            route = {
                { y = 0.684, mapID = 1438, label = "Timberling Sprout", offMapText = "Travel to Timberling Sprout.", x = 0.621 },
            },
            dependsOn = { "accept-919-timberling-sprouts" },
            id = "objective-919-1-timberling-sprout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 919, text = "Timberling Sprout", index = 1, count = 12 },
            },
            sourceStep = 77,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-918-1-timberling-seed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 8 Timberling Seed.",
            complete = {
                questObjective = { id = 918, index = 1, text = "Timberling Seed", count = 8 },
            },
            route = {
                { mapID = 1438, x = 0.604, y = 0.6659999999999999, label = "Timberling Seed", offMapText = "Travel to Timberling Seed." },
            },
            sourceStep = 78,
            priority = 680,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-918-timberling-seeds" },
        },
        {
            priority = 690,
            text = "Turn in Timberling Seeds to Denalan.",
            route = {
                { y = 0.6854, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.608 },
            },
            dependsOn = { "accept-918-timberling-seeds", "objective-918-1-timberling-seed" },
            id = "turnin-918-timberling-seeds",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 918, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-922-rellian-greenspyre",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 922,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 695,
        },
        {
            priority = 700,
            route = {
                { y = 0.6854, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.608 },
            },
            text = "Accept Rellian Greenspyre from Denalan.",
            id = "accept-922-rellian-greenspyre",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 922, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Turn in Timberling Sprouts to Denalan.",
            route = {
                { y = 0.6854, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.608 },
            },
            dependsOn = { "accept-919-timberling-sprouts", "objective-919-1-timberling-sprout" },
            id = "turnin-919-timberling-sprouts",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 919, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            text = "Collect 1 Filled Jade Phial.",
            route = {
                { y = 0.5808, mapID = 1438, label = "Jade Phial", offMapText = "Travel to Jade Phial.", x = 0.6338 },
            },
            dependsOn = { "accept-929-crown-of-the-earth" },
            id = "objective-929-1-jade-phial",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 929, text = "Jade Phial", index = 1, count = 1 },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 928 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            text = "Turn in A Troubling Breeze to Gaerolas Talvethren.",
            route = {
                { y = 0.5852, mapID = 1438, label = "Gaerolas Talvethren", offMapText = "Travel to Gaerolas Talvethren in Teldrassil.", x = 0.6626 },
            },
            dependsOn = { "accept-475-a-troubling-breeze" },
            id = "turnin-475-a-troubling-breeze",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 475, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-476-gnarlpine-corruption",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 476,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 735,
        },
        {
            priority = 740,
            route = {
                { y = 0.5852, mapID = 1438, label = "Gaerolas Talvethren", offMapText = "Travel to Gaerolas Talvethren in Teldrassil.", x = 0.6626 },
            },
            text = "Accept Gnarlpine Corruption from Gaerolas Talvethren.",
            id = "accept-476-gnarlpine-corruption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 476, state = "activeOrCompleted" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 475 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2438-1-emerald-dreamcatcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Emerald Dreamcatcher.",
            complete = {
                questObjective = { id = 2438, index = 1, text = "Emerald Dreamcatcher", count = 1 },
            },
            route = {
                { mapID = 1438, x = 0.6801, y = 0.5963, label = "Emerald Dreamcatcher", offMapText = "Travel to Emerald Dreamcatcher." },
            },
            sourceStep = 82,
            priority = 750,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2438-the-emerald-dreamcatcher" },
        },
        {
            id = "objective-488-2-strigid-owl-feather",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Strigid Owl Feather.",
            complete = {
                questObjective = { id = 488, index = 2, text = "Strigid Owl Feather", count = 3 },
            },
            route = {
                { mapID = 1438, x = 0.6459999999999999, y = 0.546, label = "Strigid Owl Feather", offMapText = "Travel to Strigid Owl Feather." },
            },
            sourceStep = 83,
            priority = 760,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-488-zenn-s-bidding" },
        },
        {
            id = "objective-488-1-nightsaber-fang",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Nightsaber Fang.",
            complete = {
                questObjective = { id = 488, index = 1, text = "Nightsaber Fang", count = 3 },
            },
            route = {
                { mapID = 1438, x = 0.62, y = 0.61, label = "Nightsaber Fang", offMapText = "Travel to Nightsaber Fang." },
            },
            sourceStep = 84,
            priority = 770,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-488-zenn-s-bidding" },
        },
        {
            id = "objective-488-3-webwood-spider-silk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Webwood Spider Silk.",
            complete = {
                questObjective = { id = 488, index = 3, text = "Webwood Spider Silk", count = 3 },
            },
            route = {
                { mapID = 1438, x = 0.594, y = 0.5920000000000001, label = "Webwood Spider Silk", offMapText = "Travel to Webwood Spider Silk." },
            },
            sourceStep = 85,
            priority = 780,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-488-zenn-s-bidding" },
        },
        {
            priority = 790,
            text = "Turn in Zenn's Bidding to Zenn Foulhoof.",
            route = {
                { y = 0.5615, mapID = 1438, label = "Zenn Foulhoof", offMapText = "Travel to Zenn Foulhoof in Teldrassil.", x = 0.6045 },
            },
            dependsOn = {
                "accept-488-zenn-s-bidding",
                "objective-488-2-strigid-owl-feather",
                "objective-488-1-nightsaber-fang",
                "objective-488-3-webwood-spider-silk",
            },
            id = "turnin-488-zenn-s-bidding",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 488, state = "completed" },
            },
            sourceStep = 87,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-489-seek-redemption",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 489,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 795,
        },
        {
            priority = 800,
            route = {
                { y = 0.594, mapID = 1438, label = "Syral Bladeleaf", offMapText = "Travel to Syral Bladeleaf in Teldrassil.", x = 0.56 },
            },
            text = "Accept Seek Redemption! from Syral Bladeleaf.",
            id = "accept-489-seek-redemption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 489, state = "activeOrCompleted" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 488 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            text = "Turn in Gnarlpine Corruption to Athridas Bearmantle.",
            route = {
                { y = 0.5728, mapID = 1438, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle in Teldrassil.", x = 0.5595 },
            },
            dependsOn = { "accept-476-gnarlpine-corruption" },
            id = "turnin-476-gnarlpine-corruption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 476, state = "completed" },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 475 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-483-the-relics-of-wakening",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 483,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 810.277778,
        },
        {
            priority = 810.555556,
            id = "woven-accept-483-the-relics-of-wakening",
            kind = "accept",
            text = "Accept The Relics of Wakening from Athridas Bearmantle.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 483, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.5595, y = 0.5728, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle." },
            },
            requiredQuests = {
                { mode = "any", quests = { 476 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-476-gnarlpine-corruption" },
        },
        {
            priority = 810.833333,
            id = "woven-objective-483-the-relics-of-wakening",
            kind = "objective",
            text = "Search the chests in Ban'ethil Barrow Den for the Raven Claw Talisman, Black Feather Quill, Sapphire of Sky, and Rune of Nesting.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 483, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Ban'ethil Barrow Den", offMapText = "Travel to Ban'ethil Barrow Den." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-483-the-relics-of-wakening" },
        },
        {
            id = "level-before-woven-accept-2541-the-sleeping-druid",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 2541,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 811.111111,
        },
        {
            priority = 811.388889,
            id = "woven-accept-2541-the-sleeping-druid",
            kind = "accept",
            text = "Accept The Sleeping Druid from Oben Rageclaw.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2541, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Oben Rageclaw", offMapText = "Travel to Oben Rageclaw." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            priority = 811.666667,
            id = "woven-objective-2541-the-sleeping-druid",
            kind = "objective",
            text = "Collect a Shaman Voodoo Charm from Gnarlpine Shamans inside Ban'ethil Barrow Den for Oben Rageclaw.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2541, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.4400, y = 0.5820, label = "Gnarlpine Shaman", offMapText = "Travel to Gnarlpine Shaman." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2541-the-sleeping-druid" },
        },
        {
            priority = 811.944444,
            id = "woven-turnin-2541-the-sleeping-druid",
            kind = "turnin",
            text = "Turn in The Sleeping Druid to Oben Rageclaw.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2541, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Oben Rageclaw", offMapText = "Travel to Oben Rageclaw." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2541-the-sleeping-druid", "woven-objective-2541-the-sleeping-druid" },
        },
        {
            id = "level-before-woven-accept-2561-druid-of-the-claw",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 2561,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 812.222222,
        },
        {
            priority = 812.5,
            id = "woven-accept-2561-druid-of-the-claw",
            kind = "accept",
            text = "Accept Druid of the Claw from Oben Rageclaw.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2561, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Oben Rageclaw", offMapText = "Travel to Oben Rageclaw." },
            },
            requiredQuests = {
                { mode = "any", quests = { 2541 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-2541-the-sleeping-druid" },
        },
        {
            priority = 812.777778,
            id = "woven-objective-2561-druid-of-the-claw",
            kind = "objective",
            text = "Kill Rageclaw, then use the supplied Voodoo Charm on his corpse to release his spirit.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2561, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Rageclaw", offMapText = "Travel to Rageclaw." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2561-druid-of-the-claw" },
        },
        {
            priority = 813.055556,
            id = "woven-turnin-2561-druid-of-the-claw",
            kind = "turnin",
            text = "Turn in Druid of the Claw to Oben Rageclaw.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 2561, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.4494, y = 0.6159, label = "Oben Rageclaw", offMapText = "Travel to Oben Rageclaw." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2561-druid-of-the-claw", "woven-objective-2561-druid-of-the-claw" },
        },
        {
            id = "level-before-woven-accept-99053-escaping-banethil",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99053,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 813.333333,
        },
        {
            priority = 813.611111,
            route = {
                { y = 0.588, mapID = 1438, label = "Sentinel Lynessa Duskblossom", offMapText = "Travel to Sentinel Lynessa Duskblossom.", x = 0.446 },
            },
            text = "Accept Escaping Ban'ethil from Sentinel Lynessa Duskblossom in the Ban'ethil Barrow Den.",
            id = "woven-accept-99053-escaping-banethil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99053, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 813.888889,
            route = {
                { y = 0.588, mapID = 1438, label = "Sentinel Lynessa Duskblossom", offMapText = "Travel to Sentinel Lynessa Duskblossom.", x = 0.446 },
            },
            text = "Escort Sentinel Lynessa Duskblossom out of the Ban'ethil Barrow Den.",
            id = "woven-objective-99053-escaping-banethil",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99053, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99053-escaping-banethil" },
        },
        {
            priority = 814.166667,
            id = "woven-turnin-483-the-relics-of-wakening",
            kind = "turnin",
            text = "Turn in The Relics of Wakening to Athridas Bearmantle.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 483, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.5595, y = 0.5728, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-483-the-relics-of-wakening", "woven-objective-483-the-relics-of-wakening" },
        },
        {
            priority = 814.444444,
            route = {
                { y = 0.594, mapID = 1438, label = "Sentinel Kyra Starsong", offMapText = "Travel to Sentinel Kyra Starsong.", x = 0.56 },
            },
            text = "Turn in Escaping Ban'ethil to Sentinel Kyra Starsong in Dolanaar.",
            id = "woven-turnin-99053-escaping-banethil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99053, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99053-escaping-banethil", "woven-objective-99053-escaping-banethil" },
        },
        {
            id = "level-before-woven-accept-486-ursal-the-mauler",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 486,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 814.722222,
        },
        {
            priority = 815,
            id = "woven-accept-486-ursal-the-mauler",
            kind = "accept",
            text = "Accept Ursal the Mauler from Athridas Bearmantle.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 486, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.5595, y = 0.5728, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle." },
            },
            requiredQuests = {
                { mode = "any", quests = { 483 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-483-the-relics-of-wakening" },
        },
        {
            priority = 815.277778,
            id = "woven-objective-486-ursal-the-mauler",
            kind = "objective",
            text = "Kill Ursal the Mauler in southwestern Teldrassil.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 486, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.3940, y = 0.8020, label = "Ursal the Mauler", offMapText = "Travel to Ursal the Mauler." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-486-ursal-the-mauler" },
        },
        {
            priority = 815.555556,
            id = "woven-turnin-486-ursal-the-mauler",
            kind = "turnin",
            text = "Turn in Ursal the Mauler to Athridas Bearmantle.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 486, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.5595, y = 0.5728, label = "Athridas Bearmantle", offMapText = "Travel to Athridas Bearmantle." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-486-ursal-the-mauler", "woven-objective-486-ursal-the-mauler" },
        },
        {
            id = "level-before-woven-accept-99046-the-lost-runner",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99046,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 815.833333,
        },
        {
            priority = 816.111111,
            route = {
                { y = 0.594, mapID = 1438, label = "Sentinel Kyra Starsong", offMapText = "Travel to Sentinel Kyra Starsong.", x = 0.56 },
            },
            text = "Accept The Lost Runner from Sentinel Kyra Starsong in Dolanaar.",
            id = "woven-accept-99046-the-lost-runner",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99046, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 816.388889,
            route = {
                { y = 0.368, mapID = 1438, label = "Sentinel Eralya Leafshadow", offMapText = "Travel to Sentinel Eralya Leafshadow.", x = 0.376 },
            },
            text = "Turn in The Lost Runner to Sentinel Eralya Leafshadow on the road to the Oracle Glade.",
            id = "woven-turnin-99046-the-lost-runner",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99046, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99046-the-lost-runner" },
        },
        {
            id = "level-before-woven-accept-99047-not-dead-yet",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99047,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 816.666667,
        },
        {
            priority = 816.944444,
            route = {
                { y = 0.368, mapID = 1438, label = "Sentinel Eralya Leafshadow", offMapText = "Travel to Sentinel Eralya Leafshadow.", x = 0.376 },
            },
            text = "Accept Not Dead Yet from Sentinel Eralya Leafshadow.",
            id = "woven-accept-99047-not-dead-yet",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99047, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 817.222222,
            route = {
                { y = 0.568, mapID = 1438, label = "Byancie", offMapText = "Travel to Byancie.", x = 0.552 },
            },
            text = "Tell Byancie in Dolanaar.",
            id = "woven-turnin-99047-not-dead-yet",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99047, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99047-not-dead-yet" },
        },
        {
            id = "level-before-woven-accept-99050-the-great-tree-provides",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99050,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 817.5,
        },
        {
            priority = 817.777778,
            route = {
                { y = 0.568, mapID = 1438, label = "Byancie", offMapText = "Travel to Byancie.", x = 0.552 },
            },
            text = "Accept The Great Tree Provides from Byancie in Dolanaar.",
            id = "woven-accept-99050-the-great-tree-provides",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99050, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Buy an Empty Vial in Dolanaar. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 818.055556,
            route = {
                { y = 0.568, mapID = 1438, label = "Dolanaar vendor", offMapText = "Travel to Dolanaar vendor.", x = 0.552 },
            },
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            id = "woven-objective-99050-the-great-tree-provides-2",
            kind = "objective",
            useClientPin = false,
            complete = {
                questObjective = { id = 99050, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-99050-the-great-tree-provides" },
        },
        {
            text = "Buy a Refreshing Spring Water in Dolanaar. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 818.333333,
            route = {
                { y = 0.568, mapID = 1438, label = "Dolanaar vendor", offMapText = "Travel to Dolanaar vendor.", x = 0.552 },
            },
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            id = "woven-objective-99050-the-great-tree-provides-3",
            kind = "objective",
            useClientPin = false,
            complete = {
                questObjective = { id = 99050, index = 3 },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-99050-the-great-tree-provides" },
        },
        {
            priority = 818.611111,
            route = {
                { y = 0.64, mapID = 1438, label = "Lasher Sproutling", offMapText = "Travel to Lasher Sproutling.", x = 0.59 },
            },
            text = "Collect 6 Dewy Lasher Fronds from lashers around Lake Al'Ameth.",
            id = "woven-objective-99050-the-great-tree-provides-1",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 99050, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99050-the-great-tree-provides" },
        },
        {
            priority = 818.888889,
            route = {
                { y = 0.568, mapID = 1438, label = "Byancie", offMapText = "Travel to Byancie.", x = 0.552 },
            },
            text = "Turn in The Great Tree Provides to Byancie in Dolanaar.",
            id = "woven-turnin-99050-the-great-tree-provides",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99050, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-99050-the-great-tree-provides",
                "woven-objective-99050-the-great-tree-provides-2",
                "woven-objective-99050-the-great-tree-provides-3",
                "woven-objective-99050-the-great-tree-provides-1",
            },
        },
        {
            id = "level-before-woven-accept-99073-easing-suffering",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99073,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 819.166667,
        },
        {
            priority = 819.444444,
            route = {
                { y = 0.568, mapID = 1438, label = "Byancie", offMapText = "Travel to Byancie.", x = 0.552 },
            },
            text = "Accept Easing Suffering from Byancie.",
            id = "woven-accept-99073-easing-suffering",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99073, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 819.722222,
            route = {
                { y = 0.368, mapID = 1438, label = "Sentinel Eralya Leafshadow", offMapText = "Travel to Sentinel Eralya Leafshadow.", x = 0.376 },
            },
            text = "Take the salve to Sentinel Eralya Leafshadow.",
            id = "woven-turnin-99073-easing-suffering",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99073, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99073-easing-suffering" },
        },
        {
            priority = 820,
            id = "objective-5621-quest-work",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            sourceStep = 90,
            useClientPin = true,
            dependsOn = { "accept-5621-garments-of-the-moon" },
            classAction = "objective-5621-quest-work",
        },
        {
            priority = 830,
            text = "Turn in Garments of the Moon to Laurna Morninglight.",
            route = {
                { y = 0.5675, mapID = 1438, label = "Laurna Morninglight", offMapText = "Travel to Laurna Morninglight in Teldrassil.", x = 0.5556 },
            },
            dependsOn = { "accept-5621-garments-of-the-moon", "objective-5621-quest-work" },
            id = "turnin-5621-garments-of-the-moon",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5621, state = "completed" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 840,
            text = "Turn in The Emerald Dreamcatcher to Tallonkai Swiftroot.",
            route = {
                { y = 0.5695, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil.", x = 0.5557 },
            },
            dependsOn = { "accept-2438-the-emerald-dreamcatcher", "objective-2438-1-emerald-dreamcatcher" },
            id = "turnin-2438-the-emerald-dreamcatcher",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2438, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            route = {
                { y = 0.5695, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil.", x = 0.5557 },
            },
            text = "Accept Ferocitas the Dream Eater from Tallonkai Swiftroot.",
            id = "accept-2459-ferocitas-the-dream-eater",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2459, state = "activeOrCompleted" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 860,
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            dependsOn = { "accept-929-crown-of-the-earth", "objective-929-1-jade-phial" },
            id = "turnin-929-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 929, state = "completed" },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 928 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            id = "accept-933-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 933, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 929 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 880,
            route = {
                { y = 0.613, mapID = 1438, label = "Zarrin", offMapText = "Travel to Zarrin in Teldrassil.", x = 0.5712 },
            },
            text = "Accept Recipe of the Kaldorei from Zarrin.",
            id = "accept-4161-recipe-of-the-kaldorei",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4161, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            text = "For Recipe of the Kaldorei: Collect 7 Small Spider Legs for Zarrin in Dolanaar.",
            id = "objective-4161-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4161, state = "complete" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4161-recipe-of-the-kaldorei" },
        },
        {
            priority = 900,
            text = "Turn in Recipe of the Kaldorei to Zarrin.",
            route = {
                { y = 0.613, mapID = 1438, label = "Zarrin", offMapText = "Travel to Zarrin in Teldrassil.", x = 0.5712 },
            },
            dependsOn = { "accept-4161-recipe-of-the-kaldorei", "objective-4161-quest-work" },
            id = "turnin-4161-recipe-of-the-kaldorei",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4161, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            id = "objective-2459-2-gnarlpine-necklace",
            text = "Kill Ferocitas the Dream Eater and loot his Gnarlpine Necklace.",
            useClientPin = false,
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Gnarlpine Necklace", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 2459, state = "complete" },
                    },
                },
            },
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 910,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2438 },
                    conditions = {},
                },
            },
            useClientText = false,
            sourceInstructionStep = 102,
            sourceInstructionIndex = 2,
            checkpointQuest = 2459,
            instructionOnly = true,
            rememberPreparation = 2459,
            route = {
                { mapID = 1438, x = 0.6937000000000001, y = 0.534, label = "Ferocitas the Dream Eater", offMapText = "Travel to Ferocitas the Dream Eater." },
            },
        },
        {
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            id = "objective-2459-prepared-result",
            text = "Open the Gnarlpine Necklace to obtain Tallonkai's Jewel.",
            useClientPin = false,
            complete = {
                questObjective = { id = 2459, index = 2, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 920,
            sourceStep = 102,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2438 },
                    conditions = {},
                },
            },
            useClientText = false,
            route = {
                { mapID = 1438, x = 0.6937000000000001, y = 0.534, label = "Ferocitas camp", offMapText = "Travel to Ferocitas camp." },
            },
        },
        {
            priority = 930,
            text = "Kill 7 Gnarlpine Mystic.",
            route = {
                { y = 0.534, mapID = 1438, label = "Ferocitas the Dream Eater", offMapText = "Travel to Ferocitas the Dream Eater.", x = 0.6937 },
            },
            dependsOn = { "accept-2459-ferocitas-the-dream-eater" },
            id = "objective-2459-1-ferocitas-the-dream-eater",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2459, text = "Ferocitas the Dream Eater", index = 1, count = 7 },
            },
            sourceStep = 103,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-489-1-fel-cone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Fel Cone.",
            complete = {
                questObjective = { id = 489, index = 1, text = "Fel Cone", count = 3 },
            },
            route = {
                { mapID = 1438, x = 0.667, y = 0.534, label = "Fel Cone", offMapText = "Travel to Fel Cone." },
            },
            sourceStep = 104,
            priority = 940,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 488 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-489-seek-redemption" },
        },
        {
            priority = 950,
            text = "Turn in Seek Redemption! to Zenn Foulhoof.",
            route = {
                { y = 0.5615, mapID = 1438, label = "Zenn Foulhoof", offMapText = "Travel to Zenn Foulhoof in Teldrassil.", x = 0.6045 },
            },
            dependsOn = { "accept-489-seek-redemption", "objective-489-1-fel-cone" },
            id = "turnin-489-seek-redemption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 489, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 488 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            text = "Collect 1 Melenas' Head.",
            route = {
                { mapID = 1438, x = 0.5122, y = 0.5081, label = "Melenas' Head", offMapText = "Travel to Melenas' Head." },
            },
            dependsOn = { "accept-932-twisted-hatred" },
            id = "objective-932-1-lord-melenas",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 932, text = "Lord Melenas", index = 1, count = 1 },
            },
            sourceStep = 106,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 965,
            route = {
                { y = 0.442, mapID = 1438, label = "Xethorr the Wicked", offMapText = "Travel to Xethorr the Wicked.", x = 0.514 },
            },
            text = "Kill Xethorr the Wicked in the Cleft northwest of Dolanaar and collect Mature Fel Moss. This is an elite. Bring a group.",
            id = "woven-objective-98403-twisted-hatred",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98403, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98403-twisted-hatred" },
        },
        {
            priority = 970,
            text = "Turn in Twisted Hatred to Tallonkai Swiftroot.",
            route = {
                { mapID = 1438, x = 0.5557, y = 0.5695, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil." },
            },
            dependsOn = { "accept-932-twisted-hatred", "objective-932-1-lord-melenas" },
            id = "turnin-932-twisted-hatred",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 932, state = "completed" },
            },
            sourceStep = 108,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 975,
            route = {
                { y = 0.568, mapID = 1438, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot.", x = 0.554 },
            },
            text = "Turn in Twisted Hatred to Tallonkai Swiftroot.",
            id = "woven-turnin-98403-twisted-hatred",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98403, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98403-twisted-hatred", "woven-objective-98403-twisted-hatred" },
        },
        {
            priority = 980,
            text = "Turn in Ferocitas the Dream Eater to Tallonkai Swiftroot.",
            route = {
                { mapID = 1438, x = 0.5557, y = 0.5695, label = "Tallonkai Swiftroot", offMapText = "Travel to Tallonkai Swiftroot in Teldrassil." },
            },
            dependsOn = {
                "accept-2459-ferocitas-the-dream-eater",
                "objective-2459-2-gnarlpine-necklace",
                "objective-2459-1-ferocitas-the-dream-eater",
                "objective-2459-prepared-result",
            },
            id = "turnin-2459-ferocitas-the-dream-eater",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2459, state = "completed" },
            },
            sourceStep = 108,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2438 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-930-the-glowing-fruit",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 930,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 985,
        },
        {
            priority = 990,
            route = {
                { y = 0.761, mapID = 1438, label = "The Glowing Fruit", offMapText = "Travel to The Glowing Fruit.", x = 0.4263 },
            },
            text = "Accept The Glowing Fruit.",
            id = "accept-930-the-glowing-fruit",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 930, state = "activeOrCompleted" },
            },
            sourceStep = 109,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Collect 1 Filled Tourmaline Phial.",
            route = {
                { y = 0.6707, mapID = 1438, label = "Tourmaline Phial", offMapText = "Travel to Tourmaline Phial.", x = 0.4242 },
            },
            dependsOn = { "accept-933-crown-of-the-earth" },
            id = "objective-933-1-tourmaline-phial",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 933, text = "Tourmaline Phial", index = 1, count = 1 },
            },
            sourceStep = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 929 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            dependsOn = { "accept-933-crown-of-the-earth", "objective-933-1-tourmaline-phial" },
            id = "turnin-933-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 933, state = "completed" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 929 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            id = "accept-7383-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7383, state = "activeOrCompleted" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-487-the-road-to-darnassus",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 487,
            priority = 1030,
        },
        {
            priority = 1040,
            text = "Accept The Road to Darnassus from Moon Priestess Amara.",
            id = "accept-487-the-road-to-darnassus",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 487, state = "activeOrCompleted" },
            },
            sourceStep = 115,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 1050,
            text = "Kill 6 Gnarlpine Ambusher.",
            route = {
                { y = 0.534, mapID = 1438, label = "Gnarlpine Ambusher", offMapText = "Travel to Gnarlpine Ambusher.", x = 0.486 },
            },
            dependsOn = { "accept-487-the-road-to-darnassus" },
            id = "objective-487-1-gnarlpine-ambusher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 487, text = "Gnarlpine Ambusher", index = 1, count = 6 },
            },
            sourceStep = 116,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-937-the-enchanted-glade",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 937,
            priority = 1060,
        },
        {
            priority = 1070,
            route = {
                { y = 0.3436, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak in Teldrassil.", x = 0.3831 },
            },
            text = "Accept The Enchanted Glade from Sentinel Arynia Cloudsbreak.",
            id = "accept-937-the-enchanted-glade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 937, state = "activeOrCompleted" },
            },
            sourceStep = 117,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "Collect 1 Filled Amethyst Phial.",
            route = {
                { y = 0.3404, mapID = 1438, label = "Amethyst Phial", offMapText = "Travel to Amethyst Phial.", x = 0.3843 },
            },
            dependsOn = { "accept-7383-crown-of-the-earth" },
            id = "objective-7383-1-amethyst-phial",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7383, text = "Amethyst Phial", index = 1, count = 1 },
            },
            sourceStep = 118,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-931-the-shimmering-frond",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 931,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1085,
        },
        {
            priority = 1090,
            route = {
                { y = 0.2885, mapID = 1438, label = "The Shimmering Frond", offMapText = "Travel to The Shimmering Frond.", x = 0.346 },
            },
            text = "Accept The Shimmering Frond.",
            id = "accept-931-the-shimmering-frond",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 931, state = "activeOrCompleted" },
            },
            sourceStep = 119,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-938-mist",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 938,
            priority = 1100,
        },
        {
            priority = 1110,
            route = {
                { y = 0.3161, mapID = 1438, label = "Mist", offMapText = "Travel to Mist in Teldrassil.", x = 0.3154 },
            },
            text = "Accept Mist from Mist.",
            id = "accept-938-mist",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 938, state = "activeOrCompleted" },
            },
            sourceStep = 120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1120,
            text = "Turn in Mist to Sentinel Arynia Cloudsbreak.",
            route = {
                { y = 0.3436, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak in Teldrassil.", x = 0.3831 },
            },
            dependsOn = { "accept-938-mist" },
            id = "turnin-938-mist",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 938, state = "completed" },
            },
            sourceStep = 122,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-937-1-bloodfeather-belt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 6 Bloodfeather Belt.",
            complete = {
                questObjective = { id = 937, index = 1, text = "Bloodfeather Belt", count = 6 },
            },
            route = {
                { mapID = 1438, x = 0.354, y = 0.364, label = "Bloodfeather Belt", offMapText = "Travel to Bloodfeather Belt." },
            },
            sourceStep = 123,
            priority = 1130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-937-the-enchanted-glade" },
        },
        {
            priority = 1140,
            text = "Turn in The Enchanted Glade to Sentinel Arynia Cloudsbreak.",
            route = {
                { y = 0.3436, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak in Teldrassil.", x = 0.3831 },
            },
            dependsOn = { "accept-937-the-enchanted-glade", "objective-937-1-bloodfeather-belt" },
            id = "turnin-937-the-enchanted-glade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 937, state = "completed" },
            },
            sourceStep = 124,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-98392-darkness-in-the-glade",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98392,
            priority = 1140.909091,
        },
        {
            priority = 1141.818182,
            route = {
                { y = 0.344, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak.", x = 0.382 },
            },
            text = "Accept Darkness in the Glade from Sentinel Arynia Cloudsbreak.",
            id = "woven-accept-98392-darkness-in-the-glade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98392, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1142.727273,
            route = {
                { y = 0.392, mapID = 1438, label = "Hatescreech", offMapText = "Travel to Hatescreech.", x = 0.35 },
            },
            text = "Darkness in the Glade: take Hatescreech's Amulet.",
            id = "woven-objective-98392-darkness-in-the-glade-1",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 98392, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98392-darkness-in-the-glade" },
        },
        {
            priority = 1143.636364,
            route = {
                { y = 0.36, mapID = 1438, label = "Windmistress Gaedress", offMapText = "Travel to Windmistress Gaedress.", x = 0.332 },
            },
            text = "Darkness in the Glade: take Windmistress Gaedress' Amulet.",
            id = "woven-objective-98392-darkness-in-the-glade-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 98392, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98392-darkness-in-the-glade" },
        },
        {
            priority = 1144.545455,
            route = {
                { y = 0.28, mapID = 1438, label = "Witchmother Arysa", offMapText = "Travel to Witchmother Arysa.", x = 0.342 },
            },
            text = "Darkness in the Glade: take Witchmother Arysa's Amulet.",
            id = "woven-objective-98392-darkness-in-the-glade-3",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 98392, index = 3 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98392-darkness-in-the-glade" },
        },
        {
            priority = 1145.454545,
            route = {
                { y = 0.344, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak.", x = 0.382 },
            },
            text = "Turn in Darkness in the Glade to Sentinel Arynia Cloudsbreak.",
            id = "woven-turnin-98392-darkness-in-the-glade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98392, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-98392-darkness-in-the-glade",
                "woven-objective-98392-darkness-in-the-glade-1",
                "woven-objective-98392-darkness-in-the-glade-2",
                "woven-objective-98392-darkness-in-the-glade-3",
            },
        },
        {
            id = "level-before-woven-accept-98398-the-oracle-tree",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 6 } },
            requiredLevel = 6,
            checkpointQuest = 98398,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1146.363636,
        },
        {
            priority = 1147.272727,
            route = {
                { y = 0.344, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak.", x = 0.383 },
            },
            text = "Accept The Oracle Tree from Sentinel Arynia Cloudsbreak.",
            id = "woven-accept-98398-the-oracle-tree",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98398, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Speak with the Oracle Tree. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 1148.181818,
            route = {
                { y = 0.344, mapID = 1438, label = "Oracle Tree", offMapText = "Travel to Oracle Tree.", x = 0.382 },
            },
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            id = "woven-turnin-98398-the-oracle-tree",
            kind = "turnin",
            useClientPin = false,
            complete = {
                quest = { id = 98398, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98398-the-oracle-tree" },
        },
        {
            id = "level-before-accept-940-teldrassil",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 6 } },
            requiredLevel = 6,
            checkpointQuest = 940,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1149.090909,
        },
        {
            priority = 1150,
            route = {
                { y = 0.3436, mapID = 1438, label = "Sentinel Arynia Cloudsbreak", offMapText = "Travel to Sentinel Arynia Cloudsbreak in Teldrassil.", x = 0.3831 },
            },
            text = "Accept Teldrassil from Sentinel Arynia Cloudsbreak.",
            id = "accept-940-teldrassil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 940, state = "activeOrCompleted" },
            },
            sourceStep = 124,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 937 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1160,
            text = "Turn in Rellian Greenspyre to Rellian Greenspyre.",
            route = {
                { y = 0.2163, mapID = 1457, label = "Rellian Greenspyre", offMapText = "Travel to Rellian Greenspyre in Darnassus.", x = 0.3819 },
            },
            dependsOn = { "accept-922-rellian-greenspyre" },
            id = "turnin-922-rellian-greenspyre",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 922, state = "completed" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1163.333333,
            route = {
                { y = 0.454, mapID = 1457, label = "Sister Aquinne", offMapText = "Travel to Sister Aquinne.", x = 0.29 },
            },
            text = "Turn in The Sisterhood of Elune to Sister Aquinne in the Temple Garden.",
            id = "woven-turnin-98391-the-sisterhood-of-elune",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98391, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98391-the-sisterhood-of-elune" },
        },
        {
            id = "level-before-accept-923-tumors",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 923,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1166.666667,
        },
        {
            priority = 1170,
            route = {
                { y = 0.2163, mapID = 1457, label = "Rellian Greenspyre", offMapText = "Travel to Rellian Greenspyre in Darnassus.", x = 0.3819 },
            },
            text = "Accept Tumors from Rellian Greenspyre.",
            id = "accept-923-tumors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 923, state = "activeOrCompleted" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 922 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6071-the-hunter-s-path",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
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
            checkpointQuest = 6071,
            alternativeQuests = { 6072, 6073, 6721, 6722 },
            priority = 1180,
        },
        {
            priority = 1190,
            route = {
                { y = 0.0854, mapID = 1457, label = "Jocaste", offMapText = "Travel to Jocaste in Darnassus.", x = 0.4038 },
            },
            text = "Accept The Hunter's Path from Jocaste.",
            id = "accept-6071-the-hunter-s-path",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6071, state = "activeOrCompleted" },
            },
            sourceStep = 132,
            requiredQuests = {},
            alternativeQuests = { 6072, 6073, 6721, 6722 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5921-moonglade",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
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
            checkpointQuest = 5921,
            priority = 1200,
        },
        {
            priority = 1210,
            route = {
                { y = 0.084, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3537 },
            },
            text = "Accept Moonglade from Mathrengyl Bearwalker.",
            id = "accept-5921-moonglade",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5921, state = "activeOrCompleted" },
            },
            sourceStep = 135,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1220,
            text = "Turn in Teldrassil to Arch Druid Fandral Staghelm.",
            route = {
                { y = 0.0924, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.348 },
            },
            dependsOn = { "accept-940-teldrassil" },
            id = "turnin-940-teldrassil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 940, state = "completed" },
            },
            sourceStep = 136,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 937 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-952-grove-of-the-ancients",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 6 } },
            requiredLevel = 6,
            checkpointQuest = 952,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1225,
        },
        {
            priority = 1230,
            route = {
                { y = 0.0924, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.348 },
            },
            text = "Accept Grove of the Ancients from Arch Druid Fandral Staghelm.",
            id = "accept-952-grove-of-the-ancients",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 952, state = "activeOrCompleted" },
            },
            sourceStep = 136,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 940 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2518-tears-of-the-moon",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 2518,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1235,
        },
        {
            priority = 1240,
            route = {
                { y = 0.8593, mapID = 1457, label = "Priestess A'moora", offMapText = "Travel to Priestess A'moora in Darnassus.", x = 0.3664 },
            },
            text = "Accept Tears of the Moon from Priestess A'moora.",
            id = "accept-2518-tears-of-the-moon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2518, state = "activeOrCompleted" },
            },
            sourceStep = 138,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1250,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-5921-moonglade" },
            id = "turnin-5921-moonglade",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            sourceStep = 139,
            useClientPin = false,
            classAction = "turnin-5921-moonglade",
        },
        {
            id = "level-before-accept-5929-great-bear-spirit",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5929,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1255,
        },
        {
            priority = 1260,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Great Bear Spirit from Dendrite Starblaze.",
            id = "accept-5929-great-bear-spirit",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5929, state = "activeOrCompleted" },
            },
            sourceStep = 139,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1270,
            id = "objective-5929-quest-work",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            sourceStep = 141,
            useClientPin = true,
            dependsOn = { "accept-5929-great-bear-spirit" },
            classAction = "objective-5929-quest-work",
        },
        {
            priority = 1280,
            text = "Turn in Great Bear Spirit to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-5929-great-bear-spirit", "objective-5929-quest-work" },
            id = "turnin-5929-great-bear-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5929, state = "completed" },
            },
            sourceStep = 141,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5921 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5931-back-to-darnassus",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5931,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1285,
        },
        {
            priority = 1290,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Back to Darnassus from Dendrite Starblaze.",
            id = "accept-5931-back-to-darnassus",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5931, state = "activeOrCompleted" },
            },
            sourceStep = 141,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5929 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1684-elanaria",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1684,
            alternativeQuests = { 1639, 1678, 1683 },
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.592, mapID = 1438, label = "Kyra Windblade", offMapText = "Travel to Kyra Windblade in Teldrassil.", x = 0.5622 },
            },
            text = "Accept Elanaria from Kyra Windblade.",
            id = "accept-1684-elanaria",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1684, state = "activeOrCompleted" },
            },
            sourceStep = 143,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678, 1683 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            text = "Turn in The Hunter's Path to Dazalar.",
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            dependsOn = { "accept-6071-the-hunter-s-path" },
            id = "turnin-6071-the-hunter-s-path",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6071, state = "completed" },
            },
            sourceStep = 144,
            requiredQuests = {},
            alternativeQuests = { 6072, 6073, 6721, 6722 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6063-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6063,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1325,
        },
        {
            priority = 1330,
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            text = "Accept Taming the Beast from Dazalar.",
            id = "accept-6063-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6063, state = "activeOrCompleted" },
            },
            sourceStep = 144,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-6063-1-taming-rod",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            checkpointQuest = 6063,
            priority = 1340,
        },
        {
            priority = 1350,
            text = "Use Taming Rod.",
            route = {
                { y = 0.592, mapID = 1438, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.594 },
            },
            dependsOn = { "accept-6063-taming-the-beast" },
            id = "objective-6063-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            complete = {
                questObjective = { id = 6063, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Turn in Taming the Beast to Dazalar.",
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            dependsOn = { "accept-6063-taming-the-beast", "objective-6063-1-taming-rod" },
            id = "turnin-6063-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6063, state = "completed" },
            },
            sourceStep = 146,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6101-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1365,
        },
        {
            priority = 1370,
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            text = "Accept Taming the Beast from Dazalar.",
            id = "accept-6101-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6101, state = "activeOrCompleted" },
            },
            sourceStep = 146,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6063 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1380,
            text = "Turn in Crown of the Earth to Corithras Moonrage.",
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            dependsOn = { "accept-7383-crown-of-the-earth", "objective-7383-1-amethyst-phial" },
            id = "turnin-7383-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 7383, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1390,
            route = {
                { y = 0.6171, mapID = 1438, label = "Corithras Moonrage", offMapText = "Travel to Corithras Moonrage in Teldrassil.", x = 0.5614 },
            },
            text = "Accept Crown of the Earth from Corithras Moonrage.",
            id = "accept-935-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 935, state = "activeOrCompleted" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1400,
            text = "Turn in The Shimmering Frond to Denalan.",
            route = {
                { y = 0.6849, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.609 },
            },
            dependsOn = { "accept-931-the-shimmering-frond" },
            id = "turnin-931-the-shimmering-frond",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 931, state = "completed" },
            },
            sourceStep = 148,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-2399-the-sprouted-fronds",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 2399,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1402.5,
        },
        {
            priority = 1405,
            id = "woven-accept-2399-the-sprouted-fronds",
            kind = "accept",
            text = "Accept The Sprouted Fronds from Sprouted Frond.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2399, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.6075, y = 0.6856, label = "Sprouted Frond", offMapText = "Travel to Sprouted Frond." },
            },
            requiredQuests = {
                { mode = "any", quests = { 931 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-931-the-shimmering-frond" },
        },
        {
            priority = 1407.5,
            id = "woven-turnin-2399-the-sprouted-fronds",
            kind = "turnin",
            text = "Turn in The Sprouted Fronds to Sprouted Frond.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2399, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.6075, y = 0.6856, label = "Sprouted Frond", offMapText = "Travel to Sprouted Frond." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2399-the-sprouted-fronds" },
        },
        {
            priority = 1410,
            text = "Turn in The Glowing Fruit to Denalan.",
            route = {
                { y = 0.6849, mapID = 1438, label = "Denalan", offMapText = "Travel to Denalan in Teldrassil.", x = 0.609 },
            },
            dependsOn = { "accept-930-the-glowing-fruit" },
            id = "turnin-930-the-glowing-fruit",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 930, state = "completed" },
            },
            sourceStep = 148,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 918 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1420,
            text = "Use Taming Rod.",
            route = {
                { y = 0.73, mapID = 1438, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.618 },
            },
            dependsOn = { "accept-6101-taming-the-beast" },
            id = "objective-6101-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            complete = {
                questObjective = { id = 6101, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6063 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1430,
            text = "Turn in Taming the Beast to Dazalar.",
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            dependsOn = { "accept-6101-taming-the-beast", "objective-6101-1-taming-rod" },
            id = "turnin-6101-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6101, state = "completed" },
            },
            sourceStep = 152,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6063 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6102-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6102,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1435,
        },
        {
            priority = 1440,
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            text = "Accept Taming the Beast from Dazalar.",
            id = "accept-6102-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6102, state = "activeOrCompleted" },
            },
            sourceStep = 152,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6101 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1450,
            text = "Use Taming Rod.",
            route = {
                { y = 0.662, mapID = 1438, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.64 },
            },
            dependsOn = { "accept-6102-taming-the-beast" },
            id = "objective-6102-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            complete = {
                questObjective = { id = 6102, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6101 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1460,
            text = "Turn in Taming the Beast to Dazalar.",
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            dependsOn = { "accept-6102-taming-the-beast", "objective-6102-1-taming-rod" },
            id = "turnin-6102-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6102, state = "completed" },
            },
            sourceStep = 156,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6101 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6103-training-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6103,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1465,
        },
        {
            priority = 1470,
            route = {
                { y = 0.5949, mapID = 1438, label = "Dazalar", offMapText = "Travel to Dazalar in Teldrassil.", x = 0.5668 },
            },
            text = "Accept Training the Beast from Dazalar.",
            id = "accept-6103-training-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6103, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6102 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5629-returning-home",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
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
            checkpointQuest = 5629,
            alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
            priority = 1480,
        },
        {
            priority = 1490,
            route = {
                { y = 0.5675, mapID = 1438, label = "Laurna Morninglight", offMapText = "Travel to Laurna Morninglight in Teldrassil.", x = 0.5557 },
            },
            text = "Accept Returning Home from Laurna Morninglight.",
            id = "accept-5629-returning-home",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5629, state = "activeOrCompleted" },
            },
            sourceStep = 157,
            requiredQuests = {},
            alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2241-the-apple-falls",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
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
            checkpointQuest = 2241,
            priority = 1500,
        },
        {
            priority = 1510,
            route = {
                { y = 0.6014, mapID = 1438, label = "Jannok Breezesong", offMapText = "Travel to Jannok Breezesong in Teldrassil.", x = 0.5638 },
            },
            text = "Accept The Apple Falls from Jannok Breezesong.",
            id = "accept-2241-the-apple-falls",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 2241, state = "activeOrCompleted" },
            },
            sourceStep = 158,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-487-the-road-to-darnassus", "objective-487-1-gnarlpine-ambusher" },
            id = "turnin-487-the-road-to-darnassus",
            text = "Turn in The Road to Darnassus to Moon Priestess Amara.",
            useClientPin = true,
            complete = {
                quest = { id = 487, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 1520,
            sourceStep = 159,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 1530,
            text = "Turn in The Apple Falls to Syurna.",
            route = {
                { mapID = 1457, x = 0.3699, y = 0.2191, label = "Syurna", offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "accept-2241-the-apple-falls" },
            id = "turnin-2241-the-apple-falls",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 2241, state = "completed" },
            },
            sourceStep = 162,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2242-destiny-calls",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 2242,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1535,
        },
        {
            priority = 1540,
            route = {
                { mapID = 1457, x = 0.3699, y = 0.2191, label = "Syurna", offMapText = "Travel to Syurna in Darnassus." },
            },
            text = "Accept Destiny Calls from Syurna.",
            id = "accept-2242-destiny-calls",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 2242, state = "activeOrCompleted" },
            },
            sourceStep = 162,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2241 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1550,
            text = "Collect 1 Silvery Spinnerets.",
            route = {
                { y = 0.252, mapID = 1438, label = "Lady Sathrah", offMapText = "Travel to Lady Sathrah.", x = 0.48 },
            },
            dependsOn = { "accept-2518-tears-of-the-moon" },
            id = "objective-2518-1-lady-sathrah",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2518, text = "Lady Sathrah", index = 1, count = 1 },
            },
            sourceStep = 164,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2242-1-sethir-s-journal",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            text = "Collect 1 Sethir's Journal.",
            complete = {
                questObjective = { id = 2242, index = 1, text = "Sethir's Journal", count = 1 },
            },
            route = {
                { mapID = 1438, x = 0.37520000000000003, y = 0.2429, label = "Sethir's Journal", offMapText = "Travel to Sethir's Journal." },
            },
            sourceStep = 165,
            priority = 1560,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2241 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2242-destiny-calls" },
        },
        {
            id = "objective-923-1-mossy-tumor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Mossy Tumor.",
            complete = {
                questObjective = { id = 923, index = 1, text = "Mossy Tumor", count = 5 },
            },
            route = {
                { mapID = 1438, x = 0.42, y = 0.436, label = "Mossy Tumor", offMapText = "Travel to Mossy Tumor." },
            },
            sourceStep = 166,
            priority = 1570,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 922 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-923-tumors" },
        },
        {
            id = "level-before-woven-accept-927-the-moss-twined-heart",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 927,
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Moss-twined Heart", minCount = 1 } } },
                { ["not"] = { quest = { id = 927, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            priority = 1573.333333,
        },
        {
            priority = 1576.666667,
            id = "woven-accept-927-the-moss-twined-heart",
            kind = "accept",
            text = "Use the Moss-twined Heart to accept The Moss-twined Heart if you found it during this outing.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 927, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.4397, y = 0.3022, label = "Blackmoss the Fetid", offMapText = "Travel to Blackmoss the Fetid." },
            },
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Moss-twined Heart", minCount = 1 } } },
                { ["not"] = { quest = { id = 927, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            id = "level-before-accept-6344-nessa-shadowsong",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            checkpointQuest = 6344,
            priority = 1580,
        },
        {
            priority = 1590,
            route = {
                { y = 0.4538, mapID = 1457, label = "Mydrannul", offMapText = "Travel to Mydrannul in Darnassus.", x = 0.7068 },
            },
            text = "Accept Nessa Shadowsong from Mydrannul.",
            id = "accept-6344-nessa-shadowsong",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6344, state = "activeOrCompleted" },
            },
            sourceStep = 171,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1600,
            text = "Turn in Elanaria to Elanaria.",
            route = {
                { y = 0.3461, mapID = 1457, label = "Elanaria", offMapText = "Travel to Elanaria in Darnassus.", x = 0.573 },
            },
            dependsOn = { "accept-1684-elanaria" },
            id = "turnin-1684-elanaria",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1684, state = "completed" },
            },
            sourceStep = 172,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678, 1683 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1683-vorlus-vilehoof",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1683,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678 },
            useClientText = false,
            useClientPin = false,
            priority = 1605,
        },
        {
            priority = 1610,
            route = {
                { y = 0.3461, mapID = 1457, label = "Elanaria", offMapText = "Travel to Elanaria in Darnassus.", x = 0.573 },
            },
            text = "Accept Vorlus Vilehoof from Elanaria.",
            id = "accept-1683-vorlus-vilehoof",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1683, state = "activeOrCompleted" },
            },
            sourceStep = 172,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            text = "Collect 1 Horn of Vorlus.",
            route = {
                { mapID = 1438, x = 0.4725, y = 0.636, label = "Horn of Vorlus", offMapText = "Travel to Horn of Vorlus." },
            },
            dependsOn = { "accept-1683-vorlus-vilehoof" },
            id = "objective-1683-1-vorlus-vilehoof",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1683, text = "Vorlus Vilehoof", index = 1, count = 1 },
            },
            sourceStep = 173,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1630,
            text = "Turn in Vorlus Vilehoof to Elanaria.",
            route = {
                { y = 0.3461, mapID = 1457, label = "Elanaria", offMapText = "Travel to Elanaria in Darnassus.", x = 0.573 },
            },
            dependsOn = { "accept-1683-vorlus-vilehoof", "objective-1683-1-vorlus-vilehoof" },
            id = "turnin-1683-vorlus-vilehoof",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1683, state = "completed" },
            },
            sourceStep = 176,
            requiredQuests = {},
            alternativeQuests = { 1639, 1678 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1640,
            text = "Turn in Tumors to Rellian Greenspyre.",
            route = {
                { y = 0.2164, mapID = 1457, label = "Rellian Greenspyre", offMapText = "Travel to Rellian Greenspyre in Darnassus.", x = 0.3819 },
            },
            dependsOn = { "accept-923-tumors", "objective-923-1-mossy-tumor" },
            id = "turnin-923-tumors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 923, state = "completed" },
            },
            sourceStep = 178,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 922 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-2498-return-to-denalan",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 2498,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1640.833333,
        },
        {
            priority = 1641.666667,
            id = "woven-accept-2498-return-to-denalan",
            kind = "accept",
            text = "Accept Return to Denalan from Rellian Greenspyre.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2498, state = "activeOrCompleted" } },
            route = {
                { mapID = 1457, x = 0.3819, y = 0.2163, label = "Rellian Greenspyre", offMapText = "Travel to Rellian Greenspyre." },
            },
            requiredQuests = {
                { mode = "any", quests = { 923 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-923-tumors" },
        },
        {
            priority = 1642.5,
            id = "woven-turnin-2498-return-to-denalan",
            kind = "turnin",
            text = "Turn in Return to Denalan to Denalan.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2498, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.6090, y = 0.6849, label = "Denalan", offMapText = "Travel to Denalan." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2498-return-to-denalan" },
        },
        {
            priority = 1643.333333,
            id = "woven-turnin-927-the-moss-twined-heart",
            kind = "turnin",
            text = "Turn in The Moss-twined Heart to Denalan.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 927, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.6090, y = 0.6849, label = "Denalan", offMapText = "Travel to Denalan." },
            },
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Moss-twined Heart", minCount = 1 } } },
                { ["not"] = { quest = { id = 927, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-927-the-moss-twined-heart" },
        },
        {
            id = "level-before-woven-accept-941-planting-the-heart",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 9 } },
            requiredLevel = 9,
            checkpointQuest = 941,
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { quest = { id = 927, state = "completed" } } },
                { ["not"] = { quest = { id = 941, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            priority = 1644.166667,
        },
        {
            priority = 1645,
            id = "woven-accept-941-planting-the-heart",
            kind = "accept",
            text = "Accept Planting the Heart from Denalan.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 9 } },
                },
            },
            complete = { quest = { id = 941, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.6090, y = 0.6849, label = "Denalan", offMapText = "Travel to Denalan." },
            },
            requiredQuests = {
                { mode = "any", quests = { 927 } },
            },
            excludeWhen = { all = {
                { ["not"] = { quest = { id = 927, state = "completed" } } },
                { ["not"] = { quest = { id = 941, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-927-the-moss-twined-heart" },
        },
        {
            priority = 1645.833333,
            id = "woven-turnin-941-planting-the-heart",
            kind = "turnin",
            text = "Turn in Planting the Heart to Denalan's Planter.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 9 } },
                },
            },
            complete = { quest = { id = 941, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.6077, y = 0.6863, label = "Denalan's Planter", offMapText = "Travel to Denalan's Planter." },
            },
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { quest = { id = 927, state = "completed" } } },
                { ["not"] = { quest = { id = 941, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-941-planting-the-heart" },
        },
        {
            id = "level-before-woven-accept-2499-oakenscowl",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 2499,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1646.666667,
        },
        {
            priority = 1647.5,
            id = "woven-accept-2499-oakenscowl",
            kind = "accept",
            text = "Accept Oakenscowl from Denalan.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2499, state = "activeOrCompleted" } },
            route = {
                { mapID = 1438, x = 0.6090, y = 0.6849, label = "Denalan", offMapText = "Travel to Denalan." },
            },
            requiredQuests = {
                { mode = "any", quests = { 2498 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-2498-return-to-denalan" },
        },
        {
            priority = 1648.333333,
            id = "woven-objective-2499-oakenscowl",
            kind = "objective",
            text = "Kill Oakenscowl southwest of Lake Al'Ameth and loot his Gargantuan Tumor. This is an elite; bring a group.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2499, state = "complete" } },
            route = {
                { mapID = 1438, x = 0.5360, y = 0.7500, label = "Oakenscowl", offMapText = "Travel to Oakenscowl." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2499-oakenscowl" },
        },
        {
            priority = 1649.166667,
            id = "woven-turnin-2499-oakenscowl",
            kind = "turnin",
            text = "Turn in Oakenscowl to Denalan.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = { 4 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 2499, state = "completed" } },
            route = {
                { mapID = 1438, x = 0.6090, y = 0.6849, label = "Denalan", offMapText = "Travel to Denalan." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-2499-oakenscowl", "woven-objective-2499-oakenscowl" },
        },
        {
            id = "level-before-turnin-2242-destiny-calls",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 2242,
            priority = 1650,
        },
        {
            priority = 1660,
            text = "Turn in Destiny Calls to Syurna.",
            route = {
                { mapID = 1457, x = 0.3699, y = 0.2191, label = "Syurna", offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "accept-2242-destiny-calls", "objective-2242-1-sethir-s-journal" },
            id = "turnin-2242-destiny-calls",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2242, state = "completed" },
            },
            sourceStep = 179,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2241 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1670,
            text = "Turn in Training the Beast to Jocaste.",
            route = {
                { y = 0.0855, mapID = 1457, label = "Jocaste", offMapText = "Travel to Jocaste in Darnassus.", x = 0.4038 },
            },
            dependsOn = { "accept-6103-training-the-beast" },
            id = "turnin-6103-training-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6103, state = "completed" },
            },
            sourceStep = 180,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6102 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1680,
            text = "Turn in Back to Darnassus to Mathrengyl Bearwalker.",
            route = {
                { y = 0.0841, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3538 },
            },
            dependsOn = { "accept-5931-back-to-darnassus" },
            id = "turnin-5931-back-to-darnassus",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5931, state = "completed" },
            },
            sourceStep = 183,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5929 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6001-body-and-heart",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6001,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1685,
        },
        {
            priority = 1690,
            route = {
                { y = 0.0841, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3538 },
            },
            text = "Accept Body and Heart from Mathrengyl Bearwalker.",
            id = "accept-6001-body-and-heart",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6001, state = "activeOrCompleted" },
            },
            sourceStep = 183,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5931 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1700,
            text = "Turn in Crown of the Earth to Arch Druid Fandral Staghelm.",
            route = {
                { y = 0.0924, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.348 },
            },
            dependsOn = { "accept-935-crown-of-the-earth" },
            id = "turnin-935-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 935, state = "completed" },
            },
            sourceStep = 184,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7383 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1701.25,
            route = {
                { y = 0.0897, mapID = 1457, label = "Archdruid Fandral Staghelm", offMapText = "Travel to Archdruid Fandral Staghelm.", x = 0.3486 },
            },
            text = "Accept Crown of the Earth from Arch Druid Fandral Staghelm.",
            id = "woven-accept-98046-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98046, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1702.5,
            route = {
                { y = 0.874, mapID = 1457, label = "Priestess Lariia", offMapText = "Travel to Priestess Lariia.", x = 0.4 },
            },
            text = "Bring the drained vessel to Priestess Lariia in the Temple of the Moon.",
            id = "woven-turnin-98046-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98046, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98046-crown-of-the-earth" },
        },
        {
            priority = 1703.75,
            route = {
                { y = 0.874, mapID = 1457, label = "Priestess Lariia", offMapText = "Travel to Priestess Lariia.", x = 0.4 },
            },
            text = "Accept Crown of the Earth from Priestess Lariia.",
            id = "woven-accept-98065-crown-of-the-earth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98065, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1705,
            route = {
                { y = 0.812, mapID = 1457, label = "Tyrande Whisperwind", offMapText = "Travel to Tyrande Whisperwind.", x = 0.39 },
            },
            text = "Bring the moonwell remnants to Tyrande Whisperwind.",
            id = "woven-turnin-98065-crown-of-the-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98065, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98065-crown-of-the-earth" },
        },
        {
            priority = 1706.25,
            route = {
                { y = 0.892, mapID = 1457, label = "Sentinel Dalia Sunblade", offMapText = "Travel to Sentinel Dalia Sunblade.", x = 0.398 },
            },
            text = "Accept Eyes of the Sentinels from Sentinel Dalia Sunblade in the Temple of the Moon.",
            id = "woven-accept-98067-eyes-of-the-sentinels",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98067, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1707.5,
            route = {
                { y = 0.158, mapID = 1457, label = "Cenarion Hold depths", offMapText = "Travel to Cenarion Hold depths.", x = 0.338 },
                { y = 0.432, mapID = 1457, label = "Darnassus Bank", offMapText = "Travel to Darnassus Bank.", x = 0.414 },
                { y = 0.154, mapID = 1457, label = "Craftsmen's Terrace", offMapText = "Travel to Craftsmen's Terrace.", x = 0.664 },
            },
            text = "Place Sentinel Owls at the Cenarion Hold depths entrance, the Darnassus Bank, the Craftsmen's Terrace Inn, and the City Gate.",
            id = "woven-objective-98067-eyes-of-the-sentinels",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98067, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98067-eyes-of-the-sentinels" },
        },
        {
            priority = 1708.75,
            route = {
                { y = 0.892, mapID = 1457, label = "Sentinel Dalia Sunblade", offMapText = "Travel to Sentinel Dalia Sunblade.", x = 0.398 },
            },
            text = "Turn in Eyes of the Sentinels to Sentinel Dalia Sunblade.",
            id = "woven-turnin-98067-eyes-of-the-sentinels",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98067, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98067-eyes-of-the-sentinels", "woven-objective-98067-eyes-of-the-sentinels" },
        },
        {
            priority = 1710,
            text = "Turn in Tears of the Moon to Priestess A'moora.",
            route = {
                { y = 0.8593, mapID = 1457, label = "Priestess A'moora", offMapText = "Travel to Priestess A'moora in Darnassus.", x = 0.3664 },
            },
            dependsOn = { "accept-2518-tears-of-the-moon", "objective-2518-1-lady-sathrah" },
            id = "turnin-2518-tears-of-the-moon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2518, state = "completed" },
            },
            sourceStep = 185,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2520-sathrah-s-sacrifice",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 2520,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1715,
        },
        {
            priority = 1720,
            route = {
                { y = 0.8593, mapID = 1457, label = "Priestess A'moora", offMapText = "Travel to Priestess A'moora in Darnassus.", x = 0.3664 },
            },
            text = "Accept Sathrah's Sacrifice from Priestess A'moora.",
            id = "accept-2520-sathrah-s-sacrifice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2520, state = "activeOrCompleted" },
            },
            sourceStep = 185,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2518 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1730,
            text = "Turn in Returning Home to Priestess Alathea.",
            route = {
                { y = 0.8118, mapID = 1457, label = "Priestess Alathea", offMapText = "Travel to Priestess Alathea in Darnassus.", x = 0.3953 },
            },
            dependsOn = { "accept-5629-returning-home" },
            id = "turnin-5629-returning-home",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5629, state = "completed" },
            },
            sourceStep = 186,
            requiredQuests = {},
            alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5627-stars-of-elune",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5627,
            requiredQuests = {},
            alternativeQuests = { 5628, 5629, 5630, 5631, 5632, 5633 },
            useClientText = false,
            useClientPin = false,
            priority = 1735,
        },
        {
            priority = 1740,
            route = {
                { y = 0.8118, mapID = 1457, label = "Priestess Alathea", offMapText = "Travel to Priestess Alathea in Darnassus.", x = 0.3953 },
            },
            text = "Accept Stars of Elune from Priestess Alathea.",
            id = "accept-5627-stars-of-elune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 5627, state = "activeOrCompleted" },
            },
            sourceStep = 186,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5628, 5629, 5630, 5631, 5632, 5633 },
                    conditions = {},
                },
            },
            alternativeQuests = { 5628, 5629, 5630, 5631, 5632, 5633 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            text = "Use Sathrah's Sacrifice.",
            route = {
                { y = 0.8457, mapID = 1457, label = "Sathrah's Sacrifice", offMapText = "Travel to Sathrah's Sacrifice.", x = 0.3921 },
            },
            dependsOn = { "accept-2520-sathrah-s-sacrifice" },
            id = "objective-2520-1-sathrah-s-sacrifice",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2520, text = "Sathrah's Sacrifice", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2518 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1760,
            text = "Turn in Sathrah's Sacrifice to Priestess A'moora.",
            route = {
                { y = 0.8593, mapID = 1457, label = "Priestess A'moora", offMapText = "Travel to Priestess A'moora in Darnassus.", x = 0.3664 },
            },
            dependsOn = { "accept-2520-sathrah-s-sacrifice", "objective-2520-1-sathrah-s-sacrifice" },
            id = "turnin-2520-sathrah-s-sacrifice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2520, state = "completed" },
            },
            sourceStep = 188,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2518 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1770,
            text = "Turn in Nessa Shadowsong to Nessa Shadowsong.",
            route = {
                { y = 0.9243, mapID = 1438, label = "Nessa Shadowsong", offMapText = "Travel to Nessa Shadowsong in Teldrassil.", x = 0.5625 },
            },
            dependsOn = { "accept-6344-nessa-shadowsong" },
            id = "turnin-6344-nessa-shadowsong",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6344, state = "completed" },
            },
            sourceStep = 189,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6341-the-bounty-of-teldrassil",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6341,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1775,
        },
        {
            priority = 1780,
            route = {
                { y = 0.9243, mapID = 1438, label = "Nessa Shadowsong", offMapText = "Travel to Nessa Shadowsong in Teldrassil.", x = 0.5625 },
            },
            text = "Accept The Bounty of Teldrassil from Nessa Shadowsong.",
            id = "accept-6341-the-bounty-of-teldrassil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6341, state = "activeOrCompleted" },
            },
            sourceStep = 189,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1790,
            text = "Turn in The Bounty of Teldrassil to Vesprystus.",
            route = {
                { y = 0.9401, mapID = 1438, label = "Vesprystus", offMapText = "Travel to Vesprystus in Teldrassil.", x = 0.584 },
            },
            dependsOn = { "accept-6341-the-bounty-of-teldrassil" },
            id = "turnin-6341-the-bounty-of-teldrassil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6341, state = "completed" },
            },
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6342-flight-to-auberdine",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6342,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1795,
        },
        {
            priority = 1800,
            route = {
                { y = 0.9401, mapID = 1438, label = "Vesprystus", offMapText = "Travel to Vesprystus in Teldrassil.", x = 0.584 },
            },
            text = "Accept Flight to Auberdine from Vesprystus.",
            id = "accept-6342-flight-to-auberdine",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6342, state = "activeOrCompleted" },
            },
            sourceStep = 190,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6341 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3524-washed-ashore",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 3524,
            priority = 1810,
        },
        {
            priority = 1820,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Accept Washed Ashore from Gwennyth Bly'Leggonde.",
            id = "accept-3524-washed-ashore",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3524, state = "activeOrCompleted" },
            },
            sourceStep = 192,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1830,
            text = "Turn in Flight to Auberdine to Laird.",
            route = {
                { y = 0.4429, mapID = 1439, label = "Laird", offMapText = "Travel to Laird in Darkshore.", x = 0.3677 },
            },
            dependsOn = { "accept-6342-flight-to-auberdine" },
            id = "turnin-6342-flight-to-auberdine",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6342, state = "completed" },
            },
            sourceStep = 193,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6341 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-983-buzzbox-827",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 7 } },
            requiredLevel = 7,
            checkpointQuest = 983,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1835,
        },
        {
            priority = 1840,
            route = {
                { y = 0.4414, mapID = 1439, label = "Wizbang Cranktoggle", offMapText = "Travel to Wizbang Cranktoggle in Darkshore.", x = 0.3698 },
            },
            text = "Accept Buzzbox 827 from Wizbang Cranktoggle.",
            id = "accept-983-buzzbox-827",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 983, state = "activeOrCompleted" },
            },
            sourceStep = 195,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2118-plagued-lands",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 2118,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1845,
        },
        {
            priority = 1850,
            route = {
                { y = 0.4342, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            text = "Accept Plagued Lands from Tharnariun Treetender.",
            id = "accept-2118-plagued-lands",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2118, state = "activeOrCompleted" },
            },
            sourceStep = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-984-how-big-a-threat",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 984,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1855,
        },
        {
            priority = 1860,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Accept How Big a Threat? from Terenthis.",
            id = "accept-984-how-big-a-threat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 984, state = "activeOrCompleted" },
            },
            sourceStep = 201,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-3524-1-sea-creature-bones",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Sea Creature Bones.",
            complete = {
                questObjective = { id = 3524, index = 1, text = "Sea Creature Bones", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.3639, y = 0.5088, label = "Sea Creature Bones", offMapText = "Travel to Sea Creature Bones." },
            },
            sourceStep = 203,
            priority = 1870,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3524-washed-ashore" },
        },
        {
            priority = 1880,
            text = "Find a living Rabid Thistle Bear in southern Darkshore. Do not attack it. Use Tharnariun's Hope to capture it. If the trap is lost, ask Tharnariun Treetender for another.",
            route = {
                { mapID = 1439, x = 0.38, y = 0.524, label = "Rabid Thistle Bears", offMapText = "Travel to Rabid Thistle Bears." },
            },
            dependsOn = { "accept-2118-plagued-lands" },
            id = "objective-2118-1-tharnariun-s-hope",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2118, index = 1, text = "Capture a Rabid Thistle Bear" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-983-1-crawler-leg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 6 Crawler Leg.",
            complete = {
                questObjective = { id = 983, index = 1, text = "Crawler Leg", count = 6 },
            },
            route = {
                { mapID = 1439, x = 0.376, y = 0.534, label = "Crawler Leg", offMapText = "Travel to Crawler Leg." },
            },
            sourceStep = 204,
            priority = 1890,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-983-buzzbox-827" },
        },
        {
            priority = 1900,
            text = "Turn in Buzzbox 827.",
            route = {
                { y = 0.4626, mapID = 1439, label = "Buzzbox 827", offMapText = "Travel to Buzzbox 827.", x = 0.3666 },
            },
            dependsOn = { "accept-983-buzzbox-827", "objective-983-1-crawler-leg" },
            id = "turnin-983-buzzbox-827",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 983, state = "completed" },
            },
            sourceStep = 209,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1910,
            text = "Turn in Washed Ashore to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-3524-washed-ashore", "objective-3524-1-sea-creature-bones" },
            id = "turnin-3524-washed-ashore",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3524, state = "completed" },
            },
            sourceStep = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4681-washed-ashore",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 11 } },
            requiredLevel = 11,
            checkpointQuest = 4681,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1915,
        },
        {
            priority = 1920,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Accept Washed Ashore from Gwennyth Bly'Leggonde.",
            id = "accept-4681-washed-ashore",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4681, state = "activeOrCompleted" },
            },
            sourceStep = 210,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4681-1-sea-turtle-remains",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Sea Turtle Remains.",
            complete = {
                questObjective = { id = 4681, index = 1, text = "Sea Turtle Remains", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.3187, y = 0.4632, label = "Sea Turtle Remains", offMapText = "Travel to Sea Turtle Remains." },
            },
            sourceStep = 211,
            priority = 1930,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4681-washed-ashore" },
        },
        {
            priority = 1940,
            text = "Turn in Washed Ashore to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4681-washed-ashore", "objective-4681-1-sea-turtle-remains" },
            id = "turnin-4681-washed-ashore",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4681, state = "completed" },
            },
            sourceStep = 212,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-6001-1-cenarion-moondust",
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
            checkpointQuest = 6001,
            priority = 1950,
        },
        {
            priority = 1960,
            route = {
                { y = 0.4596, mapID = 1439, label = "Cenarion Moondust", offMapText = "Travel to Cenarion Moondust.", x = 0.4348 },
            },
            dependsOn = { "accept-6001-body-and-heart" },
            id = "objective-6001-1-cenarion-moondust",
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
            classAction = "objective-6001-quest-work",
        },
        {
            id = "level-before-accept-6343-return-to-nessa",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6343,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 1965,
        },
        {
            priority = 1970,
            route = {
                { y = 0.4428, mapID = 1439, label = "Laird", offMapText = "Travel to Laird in Darkshore.", x = 0.3677 },
            },
            text = "Accept Return to Nessa from Laird.",
            id = "accept-6343-return-to-nessa",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6343, state = "activeOrCompleted" },
            },
            sourceStep = 216,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6342 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1980,
            text = "Turn in Return to Nessa to Nessa Shadowsong.",
            route = {
                { y = 0.9244, mapID = 1438, label = "Nessa Shadowsong", offMapText = "Travel to Nessa Shadowsong in Teldrassil.", x = 0.5625 },
            },
            dependsOn = { "accept-6343-return-to-nessa" },
            id = "turnin-6343-return-to-nessa",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6343, state = "completed" },
            },
            sourceStep = 217,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6342 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1990,
            text = "Turn in Body and Heart to Mathrengyl Bearwalker.",
            route = {
                { y = 0.0841, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3538 },
            },
            dependsOn = { "accept-6001-body-and-heart", "objective-6001-1-cenarion-moondust" },
            id = "turnin-6001-body-and-heart",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 6001, state = "completed" },
            },
            sourceStep = 219,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5931 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2000,
            text = "Turn in Plagued Lands to Tharnariun Treetender.",
            route = {
                { y = 0.4342, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            dependsOn = { "accept-2118-plagued-lands", "objective-2118-1-tharnariun-s-hope" },
            id = "turnin-2118-plagued-lands",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2118, state = "completed" },
            },
            sourceStep = 226,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2010,
            text = "Turn in How Big a Threat? to Terenthis.",
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            dependsOn = { "accept-984-how-big-a-threat" },
            id = "turnin-984-how-big-a-threat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 984, state = "completed" },
            },
            sourceStep = 227,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4761-thundris-windweaver",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 11 } },
            requiredLevel = 11,
            checkpointQuest = 4761,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2015,
        },
        {
            priority = 2020,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Accept Thundris Windweaver from Terenthis.",
            id = "accept-4761-thundris-windweaver",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4761, state = "activeOrCompleted" },
            },
            sourceStep = 227,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 984 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2030,
            text = "Turn in Thundris Windweaver to Thundris Windweaver.",
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            dependsOn = { "accept-4761-thundris-windweaver" },
            id = "turnin-4761-thundris-windweaver",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4761, state = "completed" },
            },
            sourceStep = 228,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 984 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-954-bashal-aran",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 7 } },
            requiredLevel = 7,
            checkpointQuest = 954,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2035,
        },
        {
            priority = 2040,
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            text = "Accept Bashal'Aran from Thundris Windweaver.",
            id = "accept-954-bashal-aran",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 954, state = "activeOrCompleted" },
            },
            sourceStep = 228,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2050,
            text = "Turn in Bashal'Aran to Asterion.",
            route = {
                { y = 0.3629, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            dependsOn = { "accept-954-bashal-aran" },
            id = "turnin-954-bashal-aran",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 954, state = "completed" },
            },
            sourceStep = 229,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-955-bashal-aran",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 7 } },
            requiredLevel = 7,
            checkpointQuest = 955,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2055,
        },
        {
            priority = 2060,
            route = {
                { y = 0.3629, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            text = "Accept Bashal'Aran from Asterion.",
            id = "accept-955-bashal-aran",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 955, state = "activeOrCompleted" },
            },
            sourceStep = 229,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 954 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2070,
            text = "Collect 8 Grell Earring.",
            route = {
                { y = 0.368, mapID = 1439, label = "Wild Grell", offMapText = "Travel to Wild Grell.", x = 0.458 },
            },
            dependsOn = { "accept-955-bashal-aran" },
            id = "objective-955-1-wild-grell",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 955, text = "Wild Grell", index = 1, count = 8 },
            },
            sourceStep = 230,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 954 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2080,
            text = "Turn in Bashal'Aran to Asterion.",
            route = {
                { y = 0.3629, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            dependsOn = { "accept-955-bashal-aran", "objective-955-1-wild-grell" },
            id = "turnin-955-bashal-aran",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 955, state = "completed" },
            },
            sourceStep = 231,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 954 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-956-bashal-aran",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 7 } },
            requiredLevel = 7,
            checkpointQuest = 956,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2085,
        },
        {
            priority = 2090,
            route = {
                { y = 0.3629, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            text = "Accept Bashal'Aran from Asterion.",
            id = "accept-956-bashal-aran",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 956, state = "activeOrCompleted" },
            },
            sourceStep = 231,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 955 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2100,
            text = "Collect 1 Ancient Moonstone Seal.",
            route = {
                { y = 0.378, mapID = 1439, label = "Deth'ryll Satyr", offMapText = "Travel to Deth'ryll Satyr.", x = 0.458 },
            },
            dependsOn = { "accept-956-bashal-aran" },
            id = "objective-956-1-deth-ryll-satyr",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 956, text = "Deth'ryll Satyr", index = 1, count = 1 },
            },
            sourceStep = 232,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 955 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2110,
            text = "Turn in Bashal'Aran to Asterion.",
            route = {
                { y = 0.363, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            dependsOn = { "accept-956-bashal-aran", "objective-956-1-deth-ryll-satyr" },
            id = "turnin-956-bashal-aran",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 956, state = "completed" },
            },
            sourceStep = 233,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 955 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-957-bashal-aran",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 7 } },
            requiredLevel = 7,
            checkpointQuest = 957,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2115,
        },
        {
            priority = 2120,
            route = {
                { y = 0.363, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            text = "Accept Bashal'Aran from Asterion.",
            id = "accept-957-bashal-aran",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 957, state = "activeOrCompleted" },
            },
            sourceStep = 233,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 956 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2130,
            route = {
                { y = 0.472, mapID = 1439, label = "Moonkin", offMapText = "Travel to Moonkin.", x = 0.444 },
            },
            text = "Kill Moonkin. Keep the required materials for the quest.",
            id = "objective-2178-1-moonkin",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2178, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2178-easy-strider-living",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 9 } },
            requiredLevel = 9,
            checkpointQuest = 2178,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2135,
        },
        {
            priority = 2140,
            route = {
                { y = 0.4066, mapID = 1439, label = "Alanndarian Nightsong", offMapText = "Travel to Alanndarian Nightsong in Darkshore.", x = 0.3769 },
            },
            text = "Accept Easy Strider Living from Alanndarian Nightsong.",
            id = "accept-2178-easy-strider-living",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2178, state = "activeOrCompleted" },
            },
            sourceStep = 239,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2150,
            text = "Turn in Easy Strider Living to Alanndarian Nightsong.",
            route = {
                { y = 0.4066, mapID = 1439, label = "Alanndarian Nightsong", offMapText = "Travel to Alanndarian Nightsong in Darkshore.", x = 0.3769 },
            },
            dependsOn = { "accept-2178-easy-strider-living" },
            id = "turnin-2178-easy-strider-living",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2178, state = "completed" },
            },
            sourceStep = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1638-a-warrior-s-training",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1638,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2365,
        },
        {
            priority = 2370,
            route = {
                { y = 0.598, mapID = 1453, label = "Ilsa Corbin", offMapText = "Travel to Ilsa Corbin in Stormwind City.", x = 0.804 },
            },
            id = "accept-1638-a-warrior-s-training",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 267,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1638-a-warriors-training",
        },
        {
            priority = 2380,
            text = "Turn in A Warrior's Training to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1638-a-warrior-s-training" },
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1638, state = "completed" },
            },
            sourceStep = 268,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683, 1639 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1639-bartleby-the-drunk",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1639,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
            priority = 2385,
        },
        {
            priority = 2390,
            route = {
                { y = 0.533, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.771 },
            },
            text = "Accept Bartleby the Drunk from Harry Burlguard.",
            id = "accept-1639-bartleby-the-drunk",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "activeOrCompleted" },
            },
            sourceStep = 268,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2400,
            text = "Turn in Bartleby the Drunk to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            id = "turnin-1639-bartleby-the-drunk",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "completed" },
            },
            sourceStep = 269,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1640-beat-bartleby",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1640,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2405,
        },
        {
            priority = 2410,
            route = {
                { y = 0.525, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.768 },
            },
            text = "Accept Beat Bartleby from Bartleby.",
            id = "accept-1640-beat-bartleby",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "activeOrCompleted" },
            },
            sourceStep = 269,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1640-1-bartleby",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1640,
            priority = 2420,
        },
        {
            priority = 2430,
            text = "Kill Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby" },
            id = "objective-1640-1-bartleby",
            kind = "objective",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1640, text = "Bartleby", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2440,
            text = "Turn in Beat Bartleby to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby", "objective-1640-1-bartleby" },
            id = "turnin-1640-beat-bartleby",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "completed" },
            },
            sourceStep = 271,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1665-bartleby-s-mug",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1665,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 2445,
        },
        {
            priority = 2450,
            route = {
                { y = 0.525, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.768 },
            },
            text = "Accept Bartleby's Mug from Bartleby.",
            id = "accept-1665-bartleby-s-mug",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "activeOrCompleted" },
            },
            sourceStep = 271,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2460,
            text = "Turn in Bartleby's Mug to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1665-bartleby-s-mug" },
            id = "turnin-1665-bartleby-s-mug",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "completed" },
            },
            sourceStep = 272,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Alliance = "leveling-casual-alliance" },
})
