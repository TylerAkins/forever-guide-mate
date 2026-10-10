local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Winterspring & Felwood",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-winterspring-and-felwood",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 54 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-5882-1-deadwood-den-watcher",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5882,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.126, mapID = 1448, label = "Deadwood Den Watcher", offMapText = "Travel to Deadwood Den Watcher.", x = 0.624 },
            },
            text = "Kill Deadwood Den Watcher. Keep the required materials for the quest.",
            id = "objective-5882-1-deadwood-den-watcher",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5882, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4101 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5159,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Turn in Cleansed Water Returns to Felwood to Greta Mosshoof.",
            id = "turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 50,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Dousing the Flames of Protection from Greta Mosshoof.",
            id = "accept-5165-dousing-the-flames-of-protection",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            id = "level-before-objective-4441-quest-work",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 4441,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { mapID = 1457, x = 0.3951, y = 0.8392000000000001, label = "Vial of Blessed Water", offMapText = "Travel to Vial of Blessed Water." },
            },
            text = "For Felbound Ancients: Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon.",
            id = "objective-4441-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4441, state = "complete" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 939 },
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
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Turn in Felbound Ancients to Eridan Bluewind.",
            id = "turnin-4441-felbound-ancients",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4441, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 939 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4441-quest-work" },
        },
        {
            priority = 90,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Purified! from Eridan Bluewind.",
            id = "accept-4442-purified",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4442, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in Purified! to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "accept-4442-purified" },
            id = "turnin-4442-purified",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4442, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.8683, mapID = 1448, label = "Arathandris Silversky", offMapText = "Travel to Arathandris Silversky in Felwood.", x = 0.5415 },
            },
            text = "Accept Salve via Hunting from Arathandris Silversky.",
            id = "accept-5882-salve-via-hunting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5882, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4101 },
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
            conditions = { faction = "Alliance" },
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
            priority = 120,
        },
        {
            id = "level-before-accept-5202-a-strange-red-key",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 49 },
            },
            requiredLevel = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5202,
            priority = 130,
        },
        {
            priority = 140,
            text = "Use the Blood Red Key to accept A Strange Red Key.",
            id = "accept-5202-a-strange-red-key",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 5202, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Turn in A Strange Red Key to Captured Arko'narin.",
            route = {
                { y = 0.555, mapID = 1448, label = "Captured Arko'narin", offMapText = "Travel to Captured Arko'narin in Felwood.", x = 0.3621 },
            },
            dependsOn = { "accept-5202-a-strange-red-key" },
            id = "turnin-5202-a-strange-red-key",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 5202, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8461, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8461-1-deadwood-den-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 6 Deadwood Den Watcher.",
            complete = {
                questObjective = { id = 8461, index = 1, text = "Deadwood Den Watcher", count = 6 },
            },
            route = {
                { mapID = 1448, x = 0.636, y = 0.096, label = "Deadwood Den Watcher", offMapText = "Travel to Deadwood Den Watcher." },
            },
            sourceStep = 17,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8461-deadwood-of-the-north" },
        },
        {
            id = "objective-8461-2-deadwood-avenger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 6 Deadwood Avenger.",
            complete = {
                questObjective = { id = 8461, index = 2, text = "Deadwood Avenger", count = 6 },
            },
            route = {
                { mapID = 1448, x = 0.636, y = 0.096, label = "Deadwood Avenger", offMapText = "Travel to Deadwood Avenger." },
            },
            sourceStep = 17,
            priority = 180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8461-deadwood-of-the-north" },
        },
        {
            id = "objective-8461-3-deadwood-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 6 Deadwood Shaman.",
            complete = {
                questObjective = { id = 8461, index = 3, text = "Deadwood Shaman", count = 6 },
            },
            route = {
                { mapID = 1448, x = 0.636, y = 0.096, label = "Deadwood Shaman", offMapText = "Travel to Deadwood Shaman." },
            },
            sourceStep = 17,
            priority = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8461-deadwood-of-the-north" },
        },
        {
            priority = 200,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8461, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Speak to Salfa from Nafien.",
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8465, state = "activeOrCompleted" },
            },
            sourceStep = 18,
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
            priority = 220,
            text = "Turn in Speak to Salfa to Salfa.",
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            dependsOn = { "accept-8465-speak-to-salfa" },
            id = "turnin-8465-speak-to-salfa",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8465, state = "completed" },
            },
            sourceStep = 19,
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
            priority = 230,
            route = {
                { mapID = 1444, x = 0.4512, y = 0.2557, label = "Videre Elixir", offMapText = "Travel to Videre Elixir." },
            },
            text = "For The Videre Elixir: Seek out Gregan Brewspewer in northern Feralas. From him, learn how you may acquire the Videre Elixir.",
            id = "objective-3909-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3909, state = "complete" },
            },
            sourceStep = 20,
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
            priority = 240,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Turn in The Videre Elixir to Donova Snowden.",
            id = "turnin-3909-the-videre-elixir",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3909, state = "completed" },
            },
            sourceStep = 20,
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
            priority = 250,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Meet at the Grave from Donova Snowden.",
            id = "accept-3912-meet-at-the-grave",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3912, state = "activeOrCompleted" },
            },
            sourceStep = 20,
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
            id = "level-before-turnin-980-the-new-springs",
            kind = "note",
            text = "Reach level 51 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 51 },
            },
            requiredLevel = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 980,
            priority = 260,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 980, state = "completed" },
            },
            sourceStep = 20,
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
            id = "level-before-accept-5082-threat-of-the-winterfall",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5082,
            priority = 280,
        },
        {
            priority = 290,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Threat of the Winterfall from Donova Snowden.",
            id = "accept-5082-threat-of-the-winterfall",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5082, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-5083-winterfall-firewater",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot Empty Firewater Flask from Winterfall Ursa, Winterfall Shaman, Winterfall Den Watcher, Winterfall Totemic, Winterfall Pathfinder, Winterfall Runner. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Empty Firewater Flask", minCount = 1 },
                    },
                    {
                        quest = { id = 5083, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 300,
        },
        {
            priority = 310,
            text = "Use the Empty Firewater Flask to accept Winterfall Firewater.",
            id = "accept-5083-winterfall-firewater",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5083, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5082-3-winterfall-totemic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 8 Winterfall Totemic.",
            complete = {
                questObjective = { id = 5082, index = 3, text = "Winterfall Totemic", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.3, y = 0.354, label = "Winterfall Totemic", offMapText = "Travel to Winterfall Totemic." },
            },
            sourceStep = 22,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
        },
        {
            id = "objective-5082-1-winterfall-pathfinder",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 8 Winterfall Pathfinder.",
            complete = {
                questObjective = { id = 5082, index = 1, text = "Winterfall Pathfinder", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.3, y = 0.354, label = "Winterfall Pathfinder", offMapText = "Travel to Winterfall Pathfinder." },
            },
            sourceStep = 22,
            priority = 330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
        },
        {
            id = "objective-5082-2-winterfall-den-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 8 Winterfall Den Watcher.",
            complete = {
                questObjective = { id = 5082, index = 2, text = "Winterfall Den Watcher", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.3, y = 0.354, label = "Winterfall Den Watcher", offMapText = "Travel to Winterfall Den Watcher." },
            },
            sourceStep = 22,
            priority = 340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
        },
        {
            priority = 350,
            text = "Turn in Threat of the Winterfall to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = {
                "accept-5082-threat-of-the-winterfall",
                "objective-5082-3-winterfall-totemic",
                "objective-5082-1-winterfall-pathfinder",
                "objective-5082-2-winterfall-den-watcher",
            },
            id = "turnin-5082-threat-of-the-winterfall",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5082, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Winterfall Firewater to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5083-winterfall-firewater" },
            id = "turnin-5083-winterfall-firewater",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5083, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Falling to Corruption from Donova Snowden.",
            id = "accept-5084-falling-to-corruption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5084, state = "activeOrCompleted" },
            },
            sourceStep = 24,
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
            priority = 380,
            text = "Turn in Falling to Corruption.",
            route = {
                { y = 0.0587, mapID = 1448, label = "Falling to Corruption", offMapText = "Travel to Falling to Corruption.", x = 0.602 },
            },
            dependsOn = { "accept-5084-falling-to-corruption" },
            id = "turnin-5084-falling-to-corruption",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5084, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5083 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.0587, mapID = 1448, label = "Mystery Goo", offMapText = "Travel to Mystery Goo.", x = 0.602 },
            },
            text = "Accept Mystery Goo.",
            id = "accept-5085-mystery-goo",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5085, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
            priority = 400,
            text = "Turn in Mystery Goo to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5085-mystery-goo" },
            id = "turnin-5085-mystery-goo",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5085, state = "completed" },
            },
            sourceStep = 26,
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
            priority = 410,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Toxic Horrors from Donova Snowden.",
            id = "accept-5086-toxic-horrors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5086, state = "activeOrCompleted" },
            },
            sourceStep = 26,
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
            priority = 420,
            text = "Drink the Videre Elixir in the graveyard outside Gadgetzan. It kills you. Release your spirit and remain a ghost while you seek Gaeriyan; do not resurrect until you have spoken with him.",
            route = {
                { y = 0.2873, mapID = 1446, label = "Videre Elixir", offMapText = "Travel to Videre Elixir.", x = 0.5403 },
            },
            dependsOn = { "accept-3912-meet-at-the-grave" },
            id = "objective-3912-1-videre-elixir",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 430,
            text = "Turn in Meet at the Grave to Gaeriyan.",
            route = {
                { y = 0.2339, mapID = 1446, label = "Gaeriyan", offMapText = "Travel to Gaeriyan in Tanaris.", x = 0.5398 },
            },
            dependsOn = { "accept-3912-meet-at-the-grave", "objective-3912-1-videre-elixir" },
            id = "turnin-3912-meet-at-the-grave",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3912, state = "completed" },
            },
            sourceStep = 29,
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
            priority = 440,
            route = {
                { y = 0.2339, mapID = 1446, label = "Gaeriyan", offMapText = "Travel to Gaeriyan in Tanaris.", x = 0.5398 },
            },
            text = "Accept A Grave Situation from Gaeriyan.",
            id = "accept-3913-a-grave-situation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3913, state = "activeOrCompleted" },
            },
            sourceStep = 29,
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
            priority = 450,
            text = "Turn in A Grave Situation.",
            route = {
                { y = 0.2906, mapID = 1446, label = "A Grave Situation", offMapText = "Travel to A Grave Situation.", x = 0.5382 },
            },
            dependsOn = { "accept-3913-a-grave-situation" },
            id = "turnin-3913-a-grave-situation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3913, state = "completed" },
            },
            sourceStep = 31,
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
            priority = 460,
            route = {
                { y = 0.2906, mapID = 1446, label = "Linken's Sword", offMapText = "Travel to Linken's Sword.", x = 0.5382 },
            },
            text = "Accept Linken's Sword.",
            id = "accept-3914-linken-s-sword",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3914, state = "activeOrCompleted" },
            },
            sourceStep = 31,
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
            priority = 470,
            text = "Turn in Linken's Sword to Linken.",
            route = {
                { y = 0.081, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            dependsOn = { "accept-3914-linken-s-sword" },
            id = "turnin-3914-linken-s-sword",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3914, state = "completed" },
            },
            sourceStep = 33,
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
            priority = 480,
            route = {
                { y = 0.081, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            text = "Accept A Gnome's Assistance from Linken.",
            id = "accept-3941-a-gnome-s-assistance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3941, state = "activeOrCompleted" },
            },
            sourceStep = 33,
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
            priority = 490,
            text = "Turn in A Gnome's Assistance to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-3941-a-gnome-s-assistance" },
            id = "turnin-3941-a-gnome-s-assistance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3941, state = "completed" },
            },
            sourceStep = 34,
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
            priority = 500,
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            text = "Accept Linken's Memory from J.D. Collie.",
            id = "accept-3942-linken-s-memory",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3942, state = "activeOrCompleted" },
            },
            sourceStep = 35,
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
            priority = 510,
            text = "Enter Shadow Hold through the cave at Felwood 35.41,58.69. Douse the Brazier of Pain on the upper level with the Purified Moon Well Water.",
            id = "objective-5165-1-authored-Brazier-of-Pain",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 520,
            text = "Douse the Brazier of Hatred on the upper level with the Purified Moon Well Water.",
            id = "objective-5165-4-authored-Brazier-of-Hatred",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 530,
            text = "Go around the floor opening at Felwood 38.25,54.06 and follow the passage down. Douse the Brazier of Suffering on the lower level.",
            id = "objective-5165-3-authored-Brazier-of-Suffering",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 540,
            text = "Douse the Brazier of Malice on the lower level with the Purified Moon Well Water.",
            id = "objective-5165-2-authored-Brazier-of-Malice",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 550,
            text = "Turn in Dousing the Flames of Protection to Greta Mosshoof.",
            route = {
                { mapID = 1448, x = 0.5121, y = 0.8210999999999999, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood." },
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
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5165, state = "completed" },
            },
            sourceStep = 36,
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
            priority = 560,
            text = "Turn in Linken's Memory to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "accept-3942-linken-s-memory" },
            id = "turnin-3942-linken-s-memory",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3942, state = "completed" },
            },
            sourceStep = 37,
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
            priority = 570,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Silver Heart from Eridan Bluewind.",
            id = "accept-4084-silver-heart",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4084, state = "activeOrCompleted" },
            },
            sourceStep = 37,
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
            priority = 580,
            text = "Collect 1 Irontree Heart.",
            route = {
                { y = 0.234, mapID = 1448, label = "Irontree Stomper", offMapText = "Travel to Irontree Stomper.", x = 0.452 },
            },
            dependsOn = { "accept-4084-silver-heart" },
            id = "objective-4084-2-irontree-stomper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4084, text = "Irontree Stomper", index = 2, count = 1 },
            },
            sourceStep = 38,
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
                    { faction = "Alliance" },
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
            sourceStep = 39,
            priority = 590,
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
                    { faction = "Alliance" },
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
            sourceStep = 40,
            priority = 600,
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
            priority = 610,
            text = "Turn in Toxic Horrors to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5086-toxic-horrors", "objective-5086-1-toxic-horror-droplet" },
            id = "turnin-5086-toxic-horrors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5086, state = "completed" },
            },
            sourceStep = 41,
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
            priority = 620,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Winterfall Runners from Donova Snowden.",
            id = "accept-5087-winterfall-runners",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5087, state = "activeOrCompleted" },
            },
            sourceStep = 41,
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
            priority = 630,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Strange Sources from Donova Snowden.",
            id = "accept-4842-strange-sources",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4842, state = "activeOrCompleted" },
            },
            sourceStep = 41,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            priority = 640,
            sourceStep = 42,
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
            id = "level-before-turnin-5250-starfall",
            kind = "note",
            text = "Reach level 53 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 53 },
            },
            requiredLevel = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5250,
            alternativeQuests = { 5249 },
            priority = 650,
        },
        {
            priority = 660,
            route = {
                { y = 0.3039, mapID = 1452, label = "Wynd Nightchaser", offMapText = "Travel to Wynd Nightchaser in Winterspring.", x = 0.5197 },
            },
            text = "Turn in Starfall to Wynd Nightchaser.",
            id = "turnin-5250-starfall",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5250, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            alternativeQuests = { 5249 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            route = {
                { y = 0.3039, mapID = 1452, label = "Wynd Nightchaser", offMapText = "Travel to Wynd Nightchaser in Winterspring.", x = 0.5197 },
            },
            text = "Accept The Ruins of Kel'Theril from Wynd Nightchaser.",
            id = "accept-5244-the-ruins-of-kel-theril",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5244, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in The Ruins of Kel'Theril to Jaron Stoneshaper.",
            route = {
                { y = 0.3043, mapID = 1452, label = "Jaron Stoneshaper", offMapText = "Travel to Jaron Stoneshaper in Winterspring.", x = 0.5214 },
            },
            dependsOn = { "accept-5244-the-ruins-of-kel-theril" },
            id = "turnin-5244-the-ruins-of-kel-theril",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5244, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.3043, mapID = 1452, label = "Jaron Stoneshaper", offMapText = "Travel to Jaron Stoneshaper in Winterspring.", x = 0.5214 },
            },
            text = "Accept Troubled Spirits of Kel'Theril from Jaron Stoneshaper.",
            id = "accept-5245-troubled-spirits-of-kel-theril",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5245, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            route = {
                { y = 0.3043, mapID = 1452, label = "Jaron Stoneshaper", offMapText = "Travel to Jaron Stoneshaper in Winterspring.", x = 0.5214 },
            },
            text = "Accept Enraged Wildkin from Jaron Stoneshaper.",
            id = "accept-4861-enraged-wildkin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4861, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5245-2-second-relic-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Second Relic Fragment.",
            complete = {
                questObjective = { id = 5245, index = 2, text = "Second Relic Fragment", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.5088, y = 0.4171, label = "Second Relic Fragment", offMapText = "Travel to Second Relic Fragment." },
            },
            sourceStep = 45,
            priority = 710,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
        },
        {
            id = "objective-5245-4-fourth-relic-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Fourth Relic Fragment.",
            complete = {
                questObjective = { id = 5245, index = 4, text = "Fourth Relic Fragment", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.5242, y = 0.415, label = "Fourth Relic Fragment", offMapText = "Travel to Fourth Relic Fragment." },
            },
            sourceStep = 46,
            priority = 720,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
        },
        {
            id = "objective-5245-3-third-relic-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Third Relic Fragment.",
            complete = {
                questObjective = { id = 5245, index = 3, text = "Third Relic Fragment", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.5331, y = 0.4343, label = "Third Relic Fragment", offMapText = "Travel to Third Relic Fragment." },
            },
            sourceStep = 47,
            priority = 730,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
        },
        {
            id = "objective-5245-1-first-relic-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 First Relic Fragment.",
            complete = {
                questObjective = { id = 5245, index = 1, text = "First Relic Fragment", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.5514, y = 0.42979999999999996, label = "First Relic Fragment", offMapText = "Travel to First Relic Fragment." },
            },
            sourceStep = 48,
            priority = 740,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5245-troubled-spirits-of-kel-theril" },
        },
        {
            priority = 750,
            route = {
                { y = 0.3897, mapID = 1452, label = "Gregor Greystone", offMapText = "Travel to Gregor Greystone in Winterspring.", x = 0.6135 },
            },
            text = "Accept The Everlook Report from Gregor Greystone.",
            id = "accept-6028-the-everlook-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6028, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            route = {
                { y = 0.3897, mapID = 1452, label = "Gregor Greystone", offMapText = "Travel to Gregor Greystone in Winterspring.", x = 0.6135 },
            },
            text = "Accept Duke Nicholas Zverenhoff from Gregor Greystone.",
            id = "accept-6030-duke-nicholas-zverenhoff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 770,
            text = "Turn in Enraged Wildkin.",
            route = {
                { y = 0.5978, mapID = 1452, label = "Enraged Wildkin", offMapText = "Travel to Enraged Wildkin.", x = 0.59 },
            },
            dependsOn = { "accept-4861-enraged-wildkin" },
            id = "turnin-4861-enraged-wildkin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4861, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            route = {
                { y = 0.5978, mapID = 1452, label = "Enraged Wildkin", offMapText = "Travel to Enraged Wildkin.", x = 0.59 },
            },
            text = "Accept Enraged Wildkin.",
            id = "accept-4863-enraged-wildkin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4863, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4861 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Turn in Enraged Wildkin.",
            route = {
                { y = 0.6068, mapID = 1452, label = "Enraged Wildkin", offMapText = "Travel to Enraged Wildkin.", x = 0.6141 },
            },
            dependsOn = { "accept-4863-enraged-wildkin" },
            id = "turnin-4863-enraged-wildkin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4863, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4861 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.6068, mapID = 1452, label = "Enraged Wildkin", offMapText = "Travel to Enraged Wildkin.", x = 0.6141 },
            },
            text = "Accept Enraged Wildkin.",
            id = "accept-4864-enraged-wildkin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4864, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4864-1-jaron-s-supplies",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Jaron's Supplies.",
            complete = {
                questObjective = { id = 4864, index = 1, text = "Jaron's Supplies", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.6139, y = 0.6073, label = "Jaron's Supplies", offMapText = "Travel to Jaron's Supplies." },
            },
            sourceStep = 54,
            priority = 810,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4864-enraged-wildkin" },
        },
        {
            priority = 820,
            route = {
                { y = 0.5947, mapID = 1452, label = "Ranshalla", offMapText = "Travel to Ranshalla in Winterspring.", x = 0.6307 },
            },
            text = "Turn in Find Ranshalla to Ranshalla.",
            id = "turnin-979-find-ranshalla",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 979, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 978 },
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
                { y = 0.5947, mapID = 1452, label = "Ranshalla", offMapText = "Travel to Ranshalla in Winterspring.", x = 0.6307 },
            },
            text = "Accept Guardians of the Altar from Ranshalla.",
            id = "accept-4901-guardians-of-the-altar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4901, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4901-reviewed-escort",
            kind = "objective",
            text = "Escort Ranshalla through Owl Wing Thicket. When she stops at each cave, light the Fire of Elune. Light the Altar of Elune when she reaches it, then wait for the ceremony to finish.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 979 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 4901, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1452, x = 0.6486, y = 0.6369, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 56,
            dependsOn = { "accept-4901-guardians-of-the-altar" },
            priority = 840,
        },
        {
            id = "objective-4864-2-blue-feathered-amulet",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Blue-feathered Amulet.",
            complete = {
                questObjective = { id = 4864, index = 2, text = "Blue-feathered Amulet", count = 1 },
            },
            route = {
                { mapID = 1452, x = 0.634, y = 0.5920000000000001, label = "Blue-feathered Amulet", offMapText = "Travel to Blue-feathered Amulet." },
            },
            sourceStep = 57,
            priority = 850,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4864-enraged-wildkin" },
        },
        {
            priority = 860,
            text = "Turn in Enraged Wildkin to Jaron Stoneshaper.",
            route = {
                { y = 0.3043, mapID = 1452, label = "Jaron Stoneshaper", offMapText = "Travel to Jaron Stoneshaper in Winterspring.", x = 0.5214 },
            },
            dependsOn = { "accept-4864-enraged-wildkin", "objective-4864-1-jaron-s-supplies", "objective-4864-2-blue-feathered-amulet" },
            id = "turnin-4864-enraged-wildkin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4864, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "Turn in Strange Sources to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-4842-strange-sources" },
            id = "turnin-4842-strange-sources",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4842, state = "completed" },
            },
            sourceStep = 61,
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
            priority = 880,
            text = "Turn in Winterfall Runners to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5087-winterfall-runners", "objective-5087-1-winterfall-runner" },
            id = "turnin-5087-winterfall-runners",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5087, state = "completed" },
            },
            sourceStep = 61,
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
            priority = 890,
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            text = "Accept Winterfall Activity from Salfa.",
            id = "accept-8464-winterfall-activity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8464, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-8470-deadwood-ritual-totem",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
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
            priority = 900,
        },
        {
            priority = 910,
            text = "Use the Deadwood Ritual Totem to accept Deadwood Ritual Totem.",
            id = "accept-8470-deadwood-ritual-totem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Feathers for Nafien from Nafien.",
            id = "accept-8467-feathers-for-nafien",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8467, state = "activeOrCompleted" },
            },
            sourceStep = 66,
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
            id = "loot-starter-before-accept-8471-winterfall-ritual-totem",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot Winterfall Ritual Totem from Winterfall Ursa, Winterfall Shaman, Winterfall Den Watcher, Winterfall Totemic, Winterfall Pathfinder, Winterfall Runner. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Winterfall Ritual Totem", minCount = 1 },
                    },
                    {
                        quest = { id = 8471, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 930,
        },
        {
            priority = 940,
            text = "Use the Winterfall Ritual Totem to accept Winterfall Ritual Totem.",
            id = "accept-8471-winterfall-ritual-totem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 8471, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 950,
            text = "Reach Neutral reputation with Timbermaw Hold before speaking with the furbolgs inside the hold.",
            id = "objective-8470-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "complete" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-8470-deadwood-ritual-totem" },
        },
        {
            priority = 960,
            text = "Turn in Deadwood Ritual Totem to Kernda.",
            route = {
                { y = 0.0348, mapID = 1448, label = "Kernda", offMapText = "Travel to Kernda in Felwood.", x = 0.6549 },
            },
            dependsOn = { "accept-8470-deadwood-ritual-totem", "objective-8470-quest-work" },
            id = "turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8470, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 970,
            text = "Turn in Winterfall Ritual Totem to Kernda.",
            route = {
                { y = 0.0348, mapID = 1448, label = "Kernda", offMapText = "Travel to Kernda in Felwood.", x = 0.6549 },
            },
            dependsOn = { "accept-8471-winterfall-ritual-totem" },
            id = "turnin-8471-winterfall-ritual-totem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 8471, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 980,
            text = "Turn in Guardians of the Altar to Erelas Ambersky.",
            route = {
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            dependsOn = { "accept-4901-guardians-of-the-altar", "objective-4901-reviewed-escort" },
            id = "turnin-4901-guardians-of-the-altar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4901, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            text = "Accept Wildkin of Elune from Erelas Ambersky.",
            id = "accept-4902-wildkin-of-elune",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4902, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4901 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            route = {
                { y = 0.4199, mapID = 1457, label = "Filled Cursed Ooze Jar", offMapText = "Travel to Filled Cursed Ooze Jar.", x = 0.396 },
            },
            text = "Collect 6 Filled Cursed Ooze Jar.",
            id = "objective-4512-1-filled-cursed-ooze-jar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4512, text = "Filled Cursed Ooze Jar", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1010,
            text = "Turn in Wildkin of Elune to Arch Druid Fandral Staghelm.",
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            dependsOn = { "accept-4902-wildkin-of-elune" },
            id = "turnin-4902-wildkin-of-elune",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4902, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4901 },
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
