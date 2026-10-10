local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Feralas & Tanaris",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-feralas-and-tanaris",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 44 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-3022-handle-with-care",
            kind = "note",
            text = "Reach level 42 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 42 },
            },
            requiredLevel = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3022,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2691, mapID = 1446, label = "Curgle Cranklehop", offMapText = "Travel to Curgle Cranklehop in Tanaris.", x = 0.5235 },
            },
            text = "Accept Handle With Care from Curgle Cranklehop.",
            id = "accept-3022-handle-with-care",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3022, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.4271, mapID = 1444, label = "Pratt McGrubben", offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063 },
            },
            text = "Accept The Mark of Quality from Pratt McGrubben.",
            id = "accept-2821-the-mark-of-quality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2821, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            text = "Accept The Missing Courier from Latronicus Moonspear.",
            id = "accept-4124-the-missing-courier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4124, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.4617, mapID = 1444, label = "Shandris Feathermoon", offMapText = "Travel to Shandris Feathermoon in Feralas.", x = 0.3028 },
            },
            text = "Accept The Ruins of Solarsal from Shandris Feathermoon.",
            id = "accept-2866-the-ruins-of-solarsal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2866, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.455, mapID = 1444, label = "Troyas Moonbreeze", offMapText = "Travel to Troyas Moonbreeze in Feralas.", x = 0.3178 },
            },
            text = "Accept In Search of Knowledge from Troyas Moonbreeze.",
            id = "accept-2939-in-search-of-knowledge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2939, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.4561, mapID = 1444, label = "Angelas Moonbreeze", offMapText = "Travel to Angelas Moonbreeze in Feralas.", x = 0.3183 },
            },
            text = "Accept The High Wilderness from Angelas Moonbreeze.",
            id = "accept-2982-the-high-wilderness",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2982, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in The Missing Courier to Ginro Hearthkindle.",
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            dependsOn = { "accept-4124-the-missing-courier" },
            id = "turnin-4124-the-missing-courier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4124, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            text = "Accept The Missing Courier from Ginro Hearthkindle.",
            id = "accept-4125-the-missing-courier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4125, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in The Ruins of Solarsal.",
            route = {
                { y = 0.5234, mapID = 1444, label = "The Ruins of Solarsal", offMapText = "Travel to The Ruins of Solarsal.", x = 0.2632 },
            },
            dependsOn = { "accept-2866-the-ruins-of-solarsal" },
            id = "turnin-2866-the-ruins-of-solarsal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2866, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.5234, mapID = 1444, label = "Return to Feathermoon Stronghold", offMapText = "Travel to Feathermoon Stronghold.", x = 0.2632 },
            },
            text = "Accept Return to Feathermoon Stronghold.",
            id = "accept-2867-return-to-feathermoon-stronghold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2867, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2866 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in Return to Feathermoon Stronghold to Shandris Feathermoon.",
            route = {
                { y = 0.4617, mapID = 1444, label = "Shandris Feathermoon", offMapText = "Travel to Shandris Feathermoon in Feralas.", x = 0.3028 },
            },
            dependsOn = { "accept-2867-return-to-feathermoon-stronghold" },
            id = "turnin-2867-return-to-feathermoon-stronghold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2867, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2866 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.4617, mapID = 1444, label = "Shandris Feathermoon", offMapText = "Travel to Shandris Feathermoon in Feralas.", x = 0.3028 },
            },
            text = "Accept Against the Hatecrest from Shandris Feathermoon.",
            id = "accept-3130-against-the-hatecrest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3130, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2867 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in Against the Hatecrest to Latronicus Moonspear.",
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            dependsOn = { "accept-3130-against-the-hatecrest" },
            id = "turnin-3130-against-the-hatecrest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3130, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2867 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            text = "Accept Against the Hatecrest from Latronicus Moonspear.",
            id = "accept-2869-against-the-hatecrest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2869, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Collect 10 Hatecrest Naga Scale.",
            route = {
                { y = 0.536, mapID = 1444, label = "Hatecrest Screamer", offMapText = "Travel to Hatecrest Screamer.", x = 0.29 },
            },
            dependsOn = { "accept-2869-against-the-hatecrest" },
            id = "objective-2869-1-hatecrest-screamer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2869, text = "Hatecrest Screamer", index = 1, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Against the Hatecrest to Latronicus Moonspear.",
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            dependsOn = { "accept-2869-against-the-hatecrest", "objective-2869-1-hatecrest-screamer" },
            id = "turnin-2869-against-the-hatecrest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2869, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            text = "Accept Against Lord Shalzaru from Latronicus Moonspear.",
            id = "accept-2870-against-lord-shalzaru",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2870, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            text = "Collect 1 Mysterious Relic.",
            route = {
                { mapID = 1444, x = 0.2849, y = 0.7045, label = "Mysterious Relic", offMapText = "Travel to Mysterious Relic." },
            },
            dependsOn = { "accept-2870-against-lord-shalzaru" },
            id = "objective-2870-1-lord-shalzaru",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2870, text = "Lord Shalzaru", index = 1, count = 1 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-2766-find-oox-22-fe",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot OOX-22/FE Distress Beacon from Gordunni Ogre, Gordunni Brute, Gordunni Mauler, Gordunni Shaman, Gordunni Ogre Mage, Gordunni Mage-Lord, Gordunni Warlock, Zukk'ash Wasp, Zukk'ash Worker, Woodpaw Mongrel, Woodpaw Alpha, Groddoc Ape, Grizzled Ironfur Bear, Sprite Darter, Feral Scar Yeti, Ferocious Rage Scar, Frayfeather Hippogryph, Frayfeather Patriarch, Vale Screecher, Hatecrest Myrmidon, Hatecrest Screamer, Book: The Powers Below, Cliff Giant, Northspring Harpy, Northspring Roguefeather, Northspring Slayer, Northspring Windcaller, Dartol's Rod of Transformation, Wandering Forest Walker, Grimtotem Raider, Grimtotem Naturalist, Grimtotem Shaman, Edana Hatetalon, Lord Shalzaru, Zapped Wave Strider, Stinglasher. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "OOX-22/FE Distress Beacon", minCount = 1 },
                    },
                    {
                        quest = { id = 2766, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 200,
        },
        {
            id = "level-before-accept-2766-find-oox-22-fe",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2766,
            priority = 210,
        },
        {
            priority = 220,
            text = "Use the OOX-22/FE Distress Beacon to accept Find OOX-22/FE!.",
            id = "accept-2766-find-oox-22-fe",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2766, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Turn in The Missing Courier.",
            route = {
                { mapID = 1444, x = 0.4545, y = 0.6496999999999999, label = "The Missing Courier", offMapText = "Travel to The Missing Courier." },
            },
            dependsOn = { "accept-4125-the-missing-courier" },
            id = "turnin-4125-the-missing-courier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4125, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { mapID = 1444, x = 0.4545, y = 0.6496999999999999, label = "Boat Wreckage", offMapText = "Travel to Boat Wreckage." },
            },
            text = "Accept Boat Wreckage.",
            id = "accept-4127-boat-wreckage",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4127, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Boat Wreckage to Ginro Hearthkindle.",
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            dependsOn = { "accept-4127-boat-wreckage" },
            id = "turnin-4127-boat-wreckage",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4127, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            text = "Accept The Knife Revealed from Ginro Hearthkindle.",
            id = "accept-4129-the-knife-revealed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4129, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4127 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Turn in The Knife Revealed to Quintis Jonespyre.",
            route = {
                { y = 0.4379, mapID = 1444, label = "Quintis Jonespyre", offMapText = "Travel to Quintis Jonespyre in Feralas.", x = 0.3245 },
            },
            dependsOn = { "accept-4129-the-knife-revealed" },
            id = "turnin-4129-the-knife-revealed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4129, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4127 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.4379, mapID = 1444, label = "Quintis Jonespyre", offMapText = "Travel to Quintis Jonespyre in Feralas.", x = 0.3245 },
            },
            text = "Accept Psychometric Reading from Quintis Jonespyre.",
            id = "accept-4130-psychometric-reading",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4130, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4129 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in Psychometric Reading to Ginro Hearthkindle.",
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            dependsOn = { "accept-4130-psychometric-reading" },
            id = "turnin-4130-psychometric-reading",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4130, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4129 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            text = "Accept The Woodpaw Gnolls from Ginro Hearthkindle.",
            id = "accept-4131-the-woodpaw-gnolls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4131, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Turn in Against Lord Shalzaru to Latronicus Moonspear.",
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            dependsOn = { "accept-2870-against-lord-shalzaru", "objective-2870-1-lord-shalzaru" },
            id = "turnin-2870-against-lord-shalzaru",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2870, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2869 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { y = 0.4617, mapID = 1444, label = "Latronicus Moonspear", offMapText = "Travel to Latronicus Moonspear in Feralas.", x = 0.3038 },
            },
            text = "Accept Delivering the Relic from Latronicus Moonspear.",
            id = "accept-2871-delivering-the-relic",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2871, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Turn in Delivering the Relic to Vestia Moonspear.",
            route = {
                { y = 0.4506, mapID = 1444, label = "Vestia Moonspear", offMapText = "Travel to Vestia Moonspear in Feralas.", x = 0.3008 },
            },
            dependsOn = { "accept-2871-delivering-the-relic" },
            id = "turnin-2871-delivering-the-relic",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2871, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2870 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.37, mapID = 1444, label = "Vale Screecher", offMapText = "Travel to Vale Screecher.", x = 0.432 },
            },
            text = "Kill a Vale Screecher in Feralas, then use Yeh'kinya's Bramble on its corpse. Speak with the spirit that appears. Repeat until you have 3 Screecher Spirits.",
            id = "objective-3520-1-vale-screecher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3520, text = "Vale Screecher", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            text = "Turn in Screecher Spirits to Yeh'kinya.",
            route = {
                { y = 0.2236, mapID = 1446, label = "Yeh'kinya", offMapText = "Travel to Yeh'kinya in Tanaris.", x = 0.6699 },
            },
            dependsOn = { "objective-3520-1-vale-screecher" },
            id = "turnin-3520-screecher-spirits",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Find OOX-22/FE! to Homing Robot OOX-22/FE.",
            route = {
                { mapID = 1444, x = 0.5335, y = 0.557, label = "Homing Robot OOX-22/FE", offMapText = "Travel to Homing Robot OOX-22/FE in Feralas." },
            },
            dependsOn = { "accept-2766-find-oox-22-fe" },
            id = "turnin-2766-find-oox-22-fe",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2766, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2821-1-thick-yeti-hide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 10 Thick Yeti Hide.",
            complete = {
                questObjective = { id = 2821, index = 1, text = "Thick Yeti Hide", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.5539999999999999, y = 0.574, label = "Thick Yeti Hide", offMapText = "Travel to Thick Yeti Hide." },
            },
            sourceStep = 50,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2821-the-mark-of-quality" },
        },
        {
            priority = 380,
            text = "Kill 8 Gordunni Shaman.",
            route = {
                { y = 0.68, mapID = 1444, label = "Gordunni Shaman", offMapText = "Travel to Gordunni Shaman.", x = 0.604 },
            },
            dependsOn = { "accept-2982-the-high-wilderness" },
            id = "objective-2982-2-gordunni-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2982, text = "Gordunni Shaman", index = 2, count = 8 },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Kill 8 Gordunni Brute.",
            route = {
                { y = 0.588, mapID = 1444, label = "Gordunni Brute", offMapText = "Travel to Gordunni Brute.", x = 0.604 },
            },
            dependsOn = { "accept-2982-the-high-wilderness" },
            id = "objective-2982-3-gordunni-brute",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2982, text = "Gordunni Brute", index = 3, count = 8 },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2982-1-gordunni-warlock",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Gordunni Warlock.",
            complete = {
                questObjective = { id = 2982, index = 1, text = "Gordunni Warlock", count = 8 },
            },
            route = {
                { mapID = 1444, x = 0.604, y = 0.57, label = "Gordunni Warlock", offMapText = "Travel to Gordunni Warlock." },
            },
            sourceStep = 54,
            priority = 400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2982-the-high-wilderness" },
        },
        {
            id = "objective-1452-3-groddoc-liver",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Groddoc Liver.",
            complete = {
                questObjective = { id = 1452, index = 3, text = "Groddoc Liver", count = 3 },
            },
            route = {
                { mapID = 1444, x = 0.59, y = 0.618, label = "Groddoc Liver", offMapText = "Travel to Groddoc Liver." },
            },
            sourceStep = 55,
            priority = 410,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1452-2-ironfur-liver",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 3 Ironfur Liver.",
            complete = {
                questObjective = { id = 1452, index = 2, text = "Ironfur Liver", count = 3 },
            },
            route = {
                { mapID = 1444, x = 0.59, y = 0.618, label = "Ironfur Liver", offMapText = "Travel to Ironfur Liver." },
            },
            sourceStep = 56,
            priority = 420,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { mapID = 1444, x = 0.6594, y = 0.45649999999999996, label = "Kindal Moonweaver", offMapText = "Travel to Kindal Moonweaver in Feralas." },
            },
            text = "Accept Freedom for All Creatures from Kindal Moonweaver.",
            id = "accept-2969-freedom-for-all-creatures",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2969, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2969-reviewed-escort",
            kind = "objective",
            text = "Open the Cage Door to release the Captured Sprite Darters. Protect them so at least 6 survive. The quest is timed.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                quest = { id = 2969, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1444, x = 0.6667000000000001, y = 0.4675, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 59,
            dependsOn = { "accept-2969-freedom-for-all-creatures" },
            priority = 440,
        },
        {
            priority = 450,
            text = "Turn in Freedom for All Creatures to Kindal Moonweaver.",
            route = {
                { mapID = 1444, x = 0.6594, y = 0.45649999999999996, label = "Kindal Moonweaver", offMapText = "Travel to Kindal Moonweaver in Feralas." },
            },
            dependsOn = { "accept-2969-freedom-for-all-creatures", "objective-2969-reviewed-escort" },
            id = "turnin-2969-freedom-for-all-creatures",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2969, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.4561, mapID = 1444, label = "Jer'kai Moonweaver", offMapText = "Travel to Jer'kai Moonweaver in Feralas.", x = 0.6595 },
            },
            text = "Accept Doling Justice from Jer'kai Moonweaver.",
            id = "accept-2970-doling-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2970, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2969 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Kill 6 Grimtotem Shaman.",
            route = {
                { y = 0.464, mapID = 1444, label = "Grimtotem Shaman", offMapText = "Travel to Grimtotem Shaman.", x = 0.674 },
            },
            dependsOn = { "accept-2970-doling-justice" },
            id = "objective-2970-3-grimtotem-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2970, text = "Grimtotem Shaman", index = 3, count = 6 },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2969 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Kill 10 Grimtotem Raider.",
            route = {
                { y = 0.464, mapID = 1444, label = "Grimtotem Raider", offMapText = "Travel to Grimtotem Raider.", x = 0.674 },
            },
            dependsOn = { "accept-2970-doling-justice" },
            id = "objective-2970-2-grimtotem-raider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2970, text = "Grimtotem Raider", index = 2, count = 10 },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2969 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Kill 12 Grimtotem Naturalist.",
            route = {
                { y = 0.464, mapID = 1444, label = "Grimtotem Naturalist", offMapText = "Travel to Grimtotem Naturalist.", x = 0.674 },
            },
            dependsOn = { "accept-2970-doling-justice" },
            id = "objective-2970-1-grimtotem-naturalist",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2970, text = "Grimtotem Naturalist", index = 1, count = 12 },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2969 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Doling Justice to Jer'kai Moonweaver.",
            route = {
                { mapID = 1444, x = 0.6595, y = 0.4561, label = "Jer'kai Moonweaver", offMapText = "Travel to Jer'kai Moonweaver in Feralas." },
            },
            dependsOn = {
                "accept-2970-doling-justice",
                "objective-2970-3-grimtotem-shaman",
                "objective-2970-2-grimtotem-raider",
                "objective-2970-1-grimtotem-naturalist",
            },
            id = "turnin-2970-doling-justice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2970, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2969 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { mapID = 1444, x = 0.6595, y = 0.4561, label = "Jer'kai Moonweaver", offMapText = "Travel to Jer'kai Moonweaver in Feralas." },
            },
            text = "Accept Doling Justice from Jer'kai Moonweaver.",
            id = "accept-2972-doling-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2972, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2970 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in The Woodpaw Gnolls.",
            route = {
                { y = 0.5631, mapID = 1444, label = "The Woodpaw Gnolls", offMapText = "Travel to The Woodpaw Gnolls.", x = 0.7331 },
            },
            dependsOn = { "accept-4131-the-woodpaw-gnolls" },
            id = "turnin-4131-the-woodpaw-gnolls",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4131, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.5631, mapID = 1444, label = "The Writhing Deep", offMapText = "Travel to The Writhing Deep.", x = 0.7331 },
            },
            text = "Accept The Writhing Deep.",
            id = "accept-4135-the-writhing-deep",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4135, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-4281-thalanaar-delivery",
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
            text = "Loot Undelivered Parcel from Large Leather Backpacks. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Undelivered Parcel", minCount = 1 },
                    },
                    {
                        quest = { id = 4281, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 540,
        },
        {
            priority = 550,
            text = "Use the Undelivered Parcel to accept Thalanaar Delivery.",
            id = "accept-4281-thalanaar-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4281, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in The Writhing Deep.",
            route = {
                { mapID = 1444, x = 0.7208, y = 0.6375, label = "The Writhing Deep", offMapText = "Travel to The Writhing Deep." },
            },
            dependsOn = { "accept-4135-the-writhing-deep" },
            id = "turnin-4135-the-writhing-deep",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4135, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { mapID = 1444, x = 0.7208, y = 0.6375, label = "Freed from the Hive", offMapText = "Travel to Freed from the Hive." },
            },
            text = "Accept Freed from the Hive.",
            id = "accept-4265-freed-from-the-hive",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4265, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            text = "Turn in The Mark of Quality to Pratt McGrubben.",
            route = {
                { y = 0.4271, mapID = 1444, label = "Pratt McGrubben", offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063 },
            },
            dependsOn = { "accept-2821-the-mark-of-quality", "objective-2821-1-thick-yeti-hide" },
            id = "turnin-2821-the-mark-of-quality",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2821, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Turn in The High Wilderness to Angelas Moonbreeze.",
            route = {
                { y = 0.4561, mapID = 1444, label = "Angelas Moonbreeze", offMapText = "Travel to Angelas Moonbreeze in Feralas.", x = 0.3183 },
            },
            dependsOn = {
                "accept-2982-the-high-wilderness",
                "objective-2982-2-gordunni-shaman",
                "objective-2982-3-gordunni-brute",
                "objective-2982-1-gordunni-warlock",
            },
            id = "turnin-2982-the-high-wilderness",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2982, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-3445-the-sunken-temple",
            kind = "note",
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 46 },
            },
            requiredLevel = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3445,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.4561, mapID = 1444, label = "Angelas Moonbreeze", offMapText = "Travel to Angelas Moonbreeze in Feralas.", x = 0.3183 },
            },
            text = "Accept The Sunken Temple from Angelas Moonbreeze.",
            id = "accept-3445-the-sunken-temple",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3445, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in Freed from the Hive to Ginro Hearthkindle.",
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            dependsOn = { "accept-4265-freed-from-the-hive" },
            id = "turnin-4265-freed-from-the-hive",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4265, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.4513, mapID = 1444, label = "Ginro Hearthkindle", offMapText = "Travel to Ginro Hearthkindle in Feralas.", x = 0.3186 },
            },
            text = "Accept A Hero's Welcome from Ginro Hearthkindle.",
            id = "accept-4266-a-hero-s-welcome",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4266, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "Turn in A Hero's Welcome to Shandris Feathermoon.",
            route = {
                { y = 0.4617, mapID = 1444, label = "Shandris Feathermoon", offMapText = "Travel to Shandris Feathermoon in Feralas.", x = 0.3028 },
            },
            dependsOn = { "accept-4266-a-hero-s-welcome" },
            id = "turnin-4266-a-hero-s-welcome",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4266, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.4617, mapID = 1444, label = "Shandris Feathermoon", offMapText = "Travel to Shandris Feathermoon in Feralas.", x = 0.3028 },
            },
            text = "Accept Rise of the Silithid from Shandris Feathermoon.",
            id = "accept-4267-rise-of-the-silithid",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4267, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Turn in Handle With Care to Erelas Ambersky.",
            route = {
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            dependsOn = { "accept-3022-handle-with-care" },
            id = "turnin-3022-handle-with-care",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3022, state = "completed" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            text = "Accept Favored of Elune? from Erelas Ambersky.",
            id = "accept-3661-favored-of-elune",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3661, state = "activeOrCompleted" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in In Search of Knowledge to Daryn Lightwind.",
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            dependsOn = { "accept-2939-in-search-of-knowledge" },
            id = "turnin-2939-in-search-of-knowledge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2939, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.9146, mapID = 1438, label = "Feralas: A History", offMapText = "Travel to Feralas: A History.", x = 0.5522 },
            },
            text = "Accept Feralas: A History.",
            id = "accept-2940-feralas-a-history",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2940, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2939 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Turn in Feralas: A History to Daryn Lightwind.",
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            dependsOn = { "accept-2940-feralas-a-history" },
            id = "turnin-2940-feralas-a-history",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2940, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2939 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            text = "Accept The Borrower from Daryn Lightwind.",
            id = "accept-2941-the-borrower",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2941, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2940 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            route = {
                { y = 0.5405, mapID = 1457, label = "Red Power Crystal", offMapText = "Travel to Red Power Crystal.", x = 0.5624 },
            },
            text = "Collect 7 Red Power Crystal.",
            id = "collect-before-pickup-objective-4284-1-red-power-crystal",
            kind = "note",
            conditions = { faction = "Alliance" },
            complete = {
                item = { name = "Red Power Crystal", minCount = 7 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 4284,
        },
        {
            priority = 730,
            text = "Turn in Rise of the Silithid to Gracina Spiritmight.",
            route = {
                { y = 0.8562, mapID = 1457, label = "Gracina Spiritmight", offMapText = "Travel to Gracina Spiritmight in Darnassus.", x = 0.4185 },
            },
            dependsOn = { "accept-4267-rise-of-the-silithid" },
            id = "turnin-4267-rise-of-the-silithid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4267, state = "completed" },
            },
            sourceStep = 84,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            text = "Turn in Doling Justice to Tyrande Whisperwind.",
            route = {
                { y = 0.8159, mapID = 1457, label = "Tyrande Whisperwind", offMapText = "Travel to Tyrande Whisperwind in Darnassus.", x = 0.391 },
            },
            dependsOn = { "accept-2972-doling-justice" },
            id = "turnin-2972-doling-justice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2972, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2970 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Turn in Thalanaar Delivery to Falfindel Waywarder.",
            route = {
                { y = 0.4657, mapID = 1444, label = "Falfindel Waywarder", offMapText = "Travel to Falfindel Waywarder in Feralas.", x = 0.8964 },
            },
            dependsOn = { "accept-4281-thalanaar-delivery" },
            id = "turnin-4281-thalanaar-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4281, state = "completed" },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            text = "Turn in The Borrower to Curgle Cranklehop.",
            route = {
                { y = 0.269, mapID = 1446, label = "Curgle Cranklehop", offMapText = "Travel to Curgle Cranklehop in Tanaris.", x = 0.5236 },
            },
            dependsOn = { "accept-2941-the-borrower" },
            id = "turnin-2941-the-borrower",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2941, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2940 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.269, mapID = 1446, label = "Curgle Cranklehop", offMapText = "Travel to Curgle Cranklehop in Tanaris.", x = 0.5236 },
            },
            text = "Accept The Super Snapper FX from Curgle Cranklehop.",
            id = "accept-2944-the-super-snapper-fx",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2944, state = "activeOrCompleted" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2941 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "activeOrCompleted" },
            },
            sourceStep = 103,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            route = {
                { y = 0.2917, mapID = 1446, label = "Untapped Dowsing Widget", offMapText = "Travel to Untapped Dowsing Widget.", x = 0.3909 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                questObjective = { id = 992, text = "Untapped Dowsing Widget", index = 1, count = 1 },
            },
            sourceStep = 104,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Noxious Lair Investigation from Senior Surveyor Fizzledowser.",
            id = "accept-82-noxious-lair-investigation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 82, state = "activeOrCompleted" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            text = "Collect 5 Centipaar Insect Parts.",
            route = {
                { y = 0.4, mapID = 1446, label = "Centipaar Wasp", offMapText = "Travel to Centipaar Wasp.", x = 0.36 },
            },
            dependsOn = { "accept-82-noxious-lair-investigation" },
            id = "objective-82-1-centipaar-wasp",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                questObjective = { id = 82, text = "Centipaar Wasp", index = 1, count = 5 },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 830,
            text = "Turn in Noxious Lair Investigation to Alchemist Pestlezugg.",
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            dependsOn = { "accept-82-noxious-lair-investigation", "objective-82-1-centipaar-wasp" },
            id = "turnin-82-noxious-lair-investigation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                },
            },
            complete = {
                quest = { id = 82, state = "completed" },
            },
            sourceStep = 107,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 992 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 840,
            route = {
                { y = 0.2891, mapID = 1446, label = "Roc Gizzard", offMapText = "Travel to Roc Gizzard.", x = 0.523 },
            },
            text = "Collect 3 Roc Gizzard.",
            id = "objective-1452-1-roc-gizzard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1452, text = "Roc Gizzard", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
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
