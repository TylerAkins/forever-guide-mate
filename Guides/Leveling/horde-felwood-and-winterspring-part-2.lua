local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Felwood & Winterspring",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-felwood-and-winterspring-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 54 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-4506-corrupted-sabers",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 49 },
            },
            requiredLevel = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4506,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5234, mapID = 1448, label = "Winna Hazzard", offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421 },
            },
            text = "Accept Corrupted Sabers from Winna Hazzard.",
            id = "accept-4506-corrupted-sabers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4506, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { mapID = 1448, x = 0.32409999999999994, y = 0.6658, label = "Corrupted Sabers", offMapText = "Travel to Corrupted Sabers." },
            },
            text = "Use Winna's Kitten Carrier at the corrupt moonwell. Wait for the Corrupted Saber to follow you, then escort it back to Winna Hazzard without losing it.",
            id = "objective-4506-authored-escort",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4506, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4506-corrupted-sabers" },
        },
        {
            id = "level-before-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5159,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Turn in Cleansed Water Returns to Felwood to Greta Mosshoof.",
            id = "turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5159, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5158 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Dousing the Flames of Protection from Greta Mosshoof.",
            id = "accept-5165-dousing-the-flames-of-protection",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5165, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Warrior", offMapText = "Travel to Deadwood Warrior.", x = 0.484 },
            },
            text = "Kill Deadwood Warrior. Loot the starter item here, then use it to accept the quest.",
            id = "objective-5887-1-deadwood-warrior",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5887, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4102 },
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
                { y = 0.8307, mapID = 1448, label = "Maybess Riverbreeze", offMapText = "Travel to Maybess Riverbreeze in Felwood.", x = 0.4672 },
            },
            text = "Accept Salve via Hunting from Maybess Riverbreeze.",
            id = "accept-5887-salve-via-hunting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5887, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4102 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-5202-a-strange-red-key",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Blood Red Key from Jaedenar Darkweaver, Jaedenar Legionnaire, Ulathek. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Blood Red Key", minCount = 1 },
                    },
                    {
                        quest = { id = 5202, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 90,
        },
        {
            id = "level-before-accept-5202-a-strange-red-key",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 49 },
            },
            requiredLevel = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5202,
            priority = 100,
        },
        {
            priority = 110,
            text = "Use the Blood Red Key to accept A Strange Red Key.",
            id = "accept-5202-a-strange-red-key",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 5202, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in A Strange Red Key to Captured Arko'narin.",
            route = {
                { y = 0.555, mapID = 1448, label = "Captured Arko'narin", offMapText = "Travel to Captured Arko'narin in Felwood.", x = 0.3621 },
            },
            dependsOn = { "accept-5202-a-strange-red-key" },
            id = "turnin-5202-a-strange-red-key",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 5202, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Turn in Corrupted Sabers to Winna Hazzard.",
            route = {
                { y = 0.5234, mapID = 1448, label = "Winna Hazzard", offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421 },
            },
            dependsOn = { "accept-4506-corrupted-sabers", "objective-4506-authored-escort" },
            id = "turnin-4506-corrupted-sabers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4506, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4521-wild-guardians",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4521,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            text = "Accept Wild Guardians from Trull Failbane.",
            id = "accept-4521-wild-guardians",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4521, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Deadwood of the North from Nafien.",
            id = "accept-8461-deadwood-of-the-north",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8461, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            text = "Kill 6 Deadwood Den Watcher.",
            route = {
                { y = 0.096, mapID = 1448, label = "Deadwood Den Watcher", offMapText = "Travel to Deadwood Den Watcher.", x = 0.636 },
            },
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            id = "objective-8461-1-deadwood-den-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8461, text = "Deadwood Den Watcher", index = 1, count = 6 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            text = "Kill 6 Deadwood Avenger.",
            route = {
                { y = 0.096, mapID = 1448, label = "Deadwood Avenger", offMapText = "Travel to Deadwood Avenger.", x = 0.636 },
            },
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            id = "objective-8461-2-deadwood-avenger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8461, text = "Deadwood Avenger", index = 2, count = 6 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Kill 6 Deadwood Shaman.",
            route = {
                { y = 0.096, mapID = 1448, label = "Deadwood Shaman", offMapText = "Travel to Deadwood Shaman.", x = 0.636 },
            },
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            id = "objective-8461-3-deadwood-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8461, text = "Deadwood Shaman", index = 3, count = 6 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-5084-falling-to-corruption",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5084,
            priority = 200,
        },
        {
            priority = 210,
            route = {
                { y = 0.0587, mapID = 1448, label = "Falling to Corruption", offMapText = "Travel to Falling to Corruption.", x = 0.602 },
            },
            text = "Turn in Falling to Corruption.",
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5084, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5083 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.0587, mapID = 1448, label = "Mystery Goo", offMapText = "Travel to Mystery Goo.", x = 0.602 },
            },
            text = "Accept Mystery Goo.",
            id = "accept-5085-mystery-goo",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5085, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Turn in Deadwood of the North to Nafien.",
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            dependsOn = {
                "accept-8461-deadwood-of-the-north",
                "objective-8461-1-deadwood-den-watcher",
                "objective-8461-2-deadwood-avenger",
                "objective-8461-3-deadwood-shaman",
            },
            id = "turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8461, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Speak to Salfa from Nafien.",
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8465, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Feathers for Nafien from Nafien.",
            id = "accept-8467-feathers-for-nafien",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8467, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in Speak to Salfa to Salfa.",
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            dependsOn = { "accept-8465-speak-to-salfa" },
            id = "turnin-8465-speak-to-salfa",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8465, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Turn in The New Springs to Donova Snowden.",
            id = "turnin-980-the-new-springs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 980, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 974 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Strange Sources from Donova Snowden.",
            id = "accept-4842-strange-sources",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4842, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 980 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            route = {
                { mapID = 1444, x = 0.4512, y = 0.2557, label = "Videre Elixir", offMapText = "Travel to Videre Elixir." },
            },
            text = "For The Videre Elixir: Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir.",
            id = "objective-3909-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3909, state = "complete" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3908 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Turn in The Videre Elixir to Donova Snowden.",
            id = "turnin-3909-the-videre-elixir",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3909, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3908 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3909-quest-work" },
        },
        {
            priority = 310,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Meet at the Grave from Donova Snowden.",
            id = "accept-3912-meet-at-the-grave",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3912, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3909 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Turn in Mystery Goo to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5085-mystery-goo" },
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5085, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Toxic Horrors from Donova Snowden.",
            id = "accept-5086-toxic-horrors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5086, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Kill 15 Ragged Owlbeast.",
            route = {
                { y = 0.444, mapID = 1452, label = "Ragged Owlbeast", offMapText = "Travel to Ragged Owlbeast.", x = 0.29 },
            },
            dependsOn = { "accept-4521-wild-guardians" },
            id = "objective-4521-2-ragged-owlbeast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4521, text = "Ragged Owlbeast", index = 2, count = 15 },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 3783, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Kill 15 Raging Owlbeast.",
            route = {
                { y = 0.314, mapID = 1452, label = "Raging Owlbeast", offMapText = "Travel to Raging Owlbeast.", x = 0.594 },
            },
            dependsOn = { "accept-4521-wild-guardians" },
            id = "objective-4521-1-raging-owlbeast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4521, text = "Raging Owlbeast", index = 1, count = 15 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3783-1-thick-yeti-fur",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Collect 10 Thick Yeti Fur.",
            complete = {
                questObjective = { id = 3783, index = 1, text = "Thick Yeti Fur", count = 10 },
            },
            route = {
                { mapID = 1452, x = 0.6765000000000001, y = 0.4175, label = "Thick Yeti Fur", offMapText = "Travel to Thick Yeti Fur." },
            },
            sourceStep = 33,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3783-are-we-there-yeti" },
        },
        {
            priority = 380,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker.",
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            dependsOn = { "accept-3783-are-we-there-yeti", "objective-3783-1-thick-yeti-fur" },
            id = "turnin-3783-are-we-there-yeti",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 3783, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            text = "Accept Chillwind Horns from Felnok Steelspring.",
            id = "connector-accept-4809-chillwind-horns",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4809, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
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
                { mapID = 1452, x = 0.64, y = 0.302, label = "Uncracked Chillwind Horn", offMapText = "Travel to Uncracked Chillwind Horn." },
            },
            text = "For Chillwind Horns: Bring 8 Uncracked Chillwind Horns to Felnok Steelspring.",
            id = "objective-4809-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4809, state = "complete" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "connector-accept-4809-chillwind-horns" },
        },
        {
            priority = 410,
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            text = "Turn in Chillwind Horns to Felnok Steelspring.",
            id = "turnin-4809-chillwind-horns",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4809, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4809-quest-work", "connector-accept-4809-chillwind-horns" },
        },
        {
            priority = 420,
            text = "Turn in Wild Guardians to Trull Failbane.",
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            dependsOn = { "accept-4521-wild-guardians", "objective-4521-2-ragged-owlbeast", "objective-4521-1-raging-owlbeast" },
            id = "turnin-4521-wild-guardians",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4521, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            text = "Accept Wild Guardians from Trull Failbane.",
            id = "accept-4741-wild-guardians",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4741, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4521 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Use Videre Elixir.",
            route = {
                { y = 0.2873, mapID = 1446, label = "Videre Elixir", offMapText = "Travel to Videre Elixir.", x = 0.5403 },
            },
            dependsOn = { "accept-3912-meet-at-the-grave" },
            id = "objective-3912-1-videre-elixir",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3912, text = "Videre Elixir", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3909 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Meet at the Grave to Gaeriyan.",
            route = {
                { y = 0.2339, mapID = 1446, label = "Gaeriyan", offMapText = "Travel to Gaeriyan in Tanaris.", x = 0.5398 },
            },
            dependsOn = { "accept-3912-meet-at-the-grave", "objective-3912-1-videre-elixir" },
            id = "turnin-3912-meet-at-the-grave",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3912, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3909 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.2339, mapID = 1446, label = "Gaeriyan", offMapText = "Travel to Gaeriyan in Tanaris.", x = 0.5398 },
            },
            text = "Accept A Grave Situation from Gaeriyan.",
            id = "accept-3913-a-grave-situation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3913, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3912 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in A Grave Situation.",
            route = {
                { y = 0.2906, mapID = 1446, label = "A Grave Situation", offMapText = "Travel to A Grave Situation.", x = 0.5382 },
            },
            dependsOn = { "accept-3913-a-grave-situation" },
            id = "turnin-3913-a-grave-situation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3913, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3912 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.2906, mapID = 1446, label = "Linken's Sword", offMapText = "Travel to Linken's Sword.", x = 0.5382 },
            },
            text = "Accept Linken's Sword.",
            id = "accept-3914-linken-s-sword",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3914, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3913 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            text = "Accept Super Sticky from Tran'rek.",
            id = "accept-4504-super-sticky",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4504, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Linken's Sword to Linken.",
            route = {
                { y = 0.081, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            dependsOn = { "accept-3914-linken-s-sword" },
            id = "turnin-3914-linken-s-sword",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3914, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3913 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.081, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            text = "Accept A Gnome's Assistance from Linken.",
            id = "accept-3941-a-gnome-s-assistance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3941, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3914 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in A Gnome's Assistance to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-3941-a-gnome-s-assistance" },
            id = "turnin-3941-a-gnome-s-assistance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3941, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3914 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            text = "Accept Linken's Memory from J.D. Collie.",
            id = "accept-3942-linken-s-memory",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3942, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3941 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Collect 12 Super Sticky Tar.",
            route = {
                { mapID = 1449, x = 0.45399999999999996, y = 0.154, label = "Super Sticky Tar", offMapText = "Travel to Super Sticky Tar." },
            },
            dependsOn = { "accept-4504-super-sticky" },
            id = "objective-4504-1-tar-beast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4504, text = "Tar Beast", index = 1, count = 12 },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in Super Sticky to Tran'rek.",
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            dependsOn = { "accept-4504-super-sticky", "objective-4504-1-tar-beast" },
            id = "turnin-4504-super-sticky",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4504, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.3897, mapID = 1452, label = "Gregor Greystone", offMapText = "Travel to Gregor Greystone in Winterspring.", x = 0.6135 },
            },
            text = "Accept The Everlook Report from Gregor Greystone.",
            id = "accept-6029-the-everlook-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6029, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            route = {
                { y = 0.3897, mapID = 1452, label = "Gregor Greystone", offMapText = "Travel to Gregor Greystone in Winterspring.", x = 0.6135 },
            },
            text = "Accept Duke Nicholas Zverenhoff from Gregor Greystone.",
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6030, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            route = {
                { y = 0.3898, mapID = 1452, label = "Jessica Redpath", offMapText = "Travel to Jessica Redpath in Winterspring.", x = 0.6128 },
            },
            text = "Accept Sister Pamela from Jessica Redpath.",
            id = "accept-5601-sister-pamela",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5601, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {},
            alternativeQuests = { 5142 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Enter Shadow Hold through the cave at Felwood 35.41,58.69. Douse the Brazier of Pain on the upper level with the Purified Moon Well Water.",
            id = "objective-5165-1-authored-Brazier-of-Pain",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5165, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                { mapID = 1448, x = 0.3627, y = 0.5629, label = "Brazier-of-Pain", offMapText = "Travel to Brazier-of-Pain." },
            },
        },
        {
            priority = 600,
            text = "Douse the Brazier of Hatred on the upper level with the Purified Moon Well Water.",
            id = "objective-5165-4-authored-Brazier-of-Hatred",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5165, index = 4, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                { mapID = 1448, x = 0.36479999999999996, y = 0.5518, label = "Brazier-of-Hatred", offMapText = "Travel to Brazier-of-Hatred." },
            },
        },
        {
            priority = 610,
            text = "Go around the floor opening at Felwood 38.25,54.06 and follow the passage down. Douse the Brazier of Suffering on the lower level.",
            id = "objective-5165-3-authored-Brazier-of-Suffering",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5165, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                { mapID = 1448, x = 0.36729999999999996, y = 0.5326, label = "Brazier-of-Suffering", offMapText = "Travel to Brazier-of-Suffering." },
            },
        },
        {
            priority = 620,
            text = "Douse the Brazier of Malice on the lower level with the Purified Moon Well Water.",
            id = "objective-5165-2-authored-Brazier-of-Malice",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5165, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5165-dousing-the-flames-of-protection" },
            route = {
                { mapID = 1448, x = 0.3768, y = 0.5268999999999999, label = "Brazier-of-Malice", offMapText = "Travel to Brazier-of-Malice." },
            },
        },
        {
            priority = 630,
            text = "Turn in Dousing the Flames of Protection to Greta Mosshoof.",
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            dependsOn = {
                "accept-5165-dousing-the-flames-of-protection",
                "objective-5165-1-authored-Brazier-of-Pain",
                "objective-5165-4-authored-Brazier-of-Hatred",
                "objective-5165-3-authored-Brazier-of-Suffering",
                "objective-5165-2-authored-Brazier-of-Malice",
            },
            id = "turnin-5165-dousing-the-flames-of-protection",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5165, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Turn in Linken's Memory to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "accept-3942-linken-s-memory" },
            id = "turnin-3942-linken-s-memory",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3942, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3941 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Silver Heart from Eridan Bluewind.",
            id = "accept-4084-silver-heart",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4084, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Collect 1 Irontree Heart.",
            route = {
                { y = 0.234, mapID = 1448, label = "Irontree Stomper", offMapText = "Travel to Irontree Stomper.", x = 0.452 },
            },
            dependsOn = { "accept-4084-silver-heart" },
            id = "objective-4084-2-irontree-stomper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4084, text = "Irontree Stomper", index = 2, count = 1 },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5086-1-toxic-horror-droplet",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Collect 3 Toxic Horror Droplet.",
            complete = {
                questObjective = { id = 5086, index = 1, text = "Toxic Horror Droplet", count = 3 },
            },
            route = {
                { mapID = 1448, x = 0.474, y = 0.23399999999999999, label = "Toxic Horror Droplet", offMapText = "Travel to Toxic Horror Droplet." },
            },
            sourceStep = 57,
            priority = 670,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5086-toxic-horrors" },
        },
        {
            id = "objective-4084-1-silvery-claws",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 11 Silvery Claws.",
            complete = {
                questObjective = { id = 4084, index = 1, text = "Silvery Claws", count = 11 },
            },
            route = {
                { mapID = 1448, x = 0.524, y = 0.272, label = "Silvery Claws", offMapText = "Travel to Silvery Claws." },
            },
            sourceStep = 58,
            priority = 680,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4084-silver-heart" },
        },
        {
            id = "loot-starter-before-accept-8470-deadwood-ritual-totem",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Deadwood Ritual Totem from Deadwood Den Watcher, Deadwood Avenger, Deadwood Shaman. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Deadwood Ritual Totem", minCount = 1 },
                    },
                    {
                        quest = { id = 8470, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 690,
        },
        {
            priority = 700,
            text = "Use the Deadwood Ritual Totem to accept Deadwood Ritual Totem.",
            id = "accept-8470-deadwood-ritual-totem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Reach Neutral reputation with Timbermaw Hold before speaking with the furbolgs inside the hold.",
            id = "objective-8470-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "complete" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-8470-deadwood-ritual-totem" },
        },
        {
            priority = 720,
            text = "Turn in Deadwood Ritual Totem to Kernda.",
            route = {
                { y = 0.0348, mapID = 1448, label = "Kernda", offMapText = "Travel to Kernda in Felwood.", x = 0.6549 },
            },
            dependsOn = { "accept-8470-deadwood-ritual-totem", "objective-8470-quest-work" },
            id = "turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            text = "Turn in Strange Sources to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-4842-strange-sources" },
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4842, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 980 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            text = "Turn in Toxic Horrors to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5086-toxic-horrors", "objective-5086-1-toxic-horror-droplet" },
            id = "turnin-5086-toxic-horrors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5086, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Winterfall Runners from Donova Snowden.",
            id = "accept-5087-winterfall-runners",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5087, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5086 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-5087-winterfall-runners" },
            id = "objective-5087-1-winterfall-runner",
            text = "Collect 1 Winterfall Crate.",
            useClientPin = true,
            complete = {
                questObjective = { id = 5087, text = "Winterfall Runner", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            priority = 760,
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5086 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 770,
            text = "Turn in Winterfall Runners to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5087-winterfall-runners", "objective-5087-1-winterfall-runner" },
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5087, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5086 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            text = "Accept Winterfall Activity from Salfa.",
            id = "accept-8464-winterfall-activity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8464, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Turn in Silver Heart to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "accept-4084-silver-heart", "objective-4084-2-irontree-stomper", "objective-4084-1-silvery-claws" },
            id = "turnin-4084-silver-heart",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4084, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Aquementas from Eridan Bluewind.",
            id = "accept-4005-aquementas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4005, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            route = {
                { y = 0.3423, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            text = "Turn in Betrayed to Belgrom Rockmaul.",
            id = "turnin-3507-betrayed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3507, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3506 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            route = {
                { y = 0.7633, mapID = 1458, label = "Andron Gant", offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482 },
            },
            text = "Turn in Delivery to Andron Gant to Andron Gant.",
            id = "turnin-3542-delivery-to-andron-gant",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3542, state = "completed" },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
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
                { y = 0.7633, mapID = 1458, label = "Andron Gant", offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482 },
            },
            text = "Accept Andron's Payment to Jediga from Andron Gant.",
            id = "accept-3564-andron-s-payment-to-jediga",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3564, state = "activeOrCompleted" },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3542 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            route = {
                { mapID = 1447, x = 0.47700000000000004, y = 0.6104999999999999, label = "Filled Vial Labeled #1", offMapText = "Travel to Filled Vial Labeled #1." },
            },
            text = "For Seeping Corruption: Fill all 4 Empty Vials at the tide pools along the coast of the Ruins of Eldarath in Azshara before returning to Chemist Cuely.",
            id = "objective-3568-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3568, state = "complete" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            route = {
                { mapID = 1458, x = 0.48710000000000003, y = 0.7142000000000001, label = "Chemist Cuely", offMapText = "Travel to Chemist Cuely in Undercity." },
            },
            text = "Turn in Seeping Corruption to Chemist Cuely.",
            id = "turnin-3568-seeping-corruption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3568, state = "completed" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3568-quest-work" },
        },
        {
            priority = 860,
            route = {
                { y = 0.7141, mapID = 1458, label = "Chemist Cuely", offMapText = "Travel to Chemist Cuely in Undercity.", x = 0.4869 },
            },
            text = "Accept Seeping Corruption from Chemist Cuely.",
            id = "accept-3569-seeping-corruption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3569, state = "activeOrCompleted" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            text = "Turn in Seeping Corruption to Thersa Windsong.",
            route = {
                { y = 0.7083, mapID = 1458, label = "Thersa Windsong", offMapText = "Travel to Thersa Windsong in Undercity.", x = 0.4903 },
            },
            dependsOn = { "accept-3569-seeping-corruption" },
            id = "turnin-3569-seeping-corruption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3569, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            route = {
                { y = 0.714, mapID = 1458, label = "Chemist Cuely", offMapText = "Travel to Chemist Cuely in Undercity.", x = 0.4871 },
            },
            text = "Accept Seeping Corruption from Chemist Cuely.",
            id = "accept-3570-seeping-corruption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3570, state = "activeOrCompleted" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3569 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            route = {
                { y = 0.8153, mapID = 1425, label = "Katoom the Angler", offMapText = "Travel to Katoom the Angler in The Hinterlands.", x = 0.8033 },
            },
            text = "Accept Gammerita, Mon! from Katoom the Angler.",
            id = "accept-7816-gammerita-mon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7816, state = "activeOrCompleted" },
            },
            sourceStep = 95,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            route = {
                { y = 0.4681, mapID = 1425, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle.", x = 0.8081 },
            },
            text = "Turn in Cortello's Riddle.",
            id = "turnin-626-cortello-s-riddle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 626, state = "completed" },
            },
            sourceStep = 96,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 625 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7816-1-katoom-s-best-lure",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Katoom's Best Lure.",
            complete = {
                questObjective = { id = 7816, index = 1, text = "Katoom's Best Lure", count = 1 },
            },
            route = {
                { mapID = 1425, x = 0.8140000000000001, y = 0.47200000000000003, label = "Katoom's Best Lure", offMapText = "Travel to Katoom's Best Lure." },
            },
            sourceStep = 97,
            priority = 910,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7816-gammerita-mon" },
        },
        {
            priority = 920,
            text = "Turn in Gammerita, Mon! to Katoom the Angler.",
            route = {
                { y = 0.8153, mapID = 1425, label = "Katoom the Angler", offMapText = "Travel to Katoom the Angler in The Hinterlands.", x = 0.8033 },
            },
            dependsOn = { "accept-7816-gammerita-mon", "objective-7816-1-katoom-s-best-lure" },
            id = "turnin-7816-gammerita-mon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7816, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
