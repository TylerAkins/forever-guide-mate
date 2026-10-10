local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Felwood & Winterspring",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-felwood-and-winterspring",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 52 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-5155-forces-of-jaedenar",
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
            checkpointQuest = 5155,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Forces of Jaedenar from Greta Mosshoof.",
            id = "accept-5155-forces-of-jaedenar",
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
                quest = { id = 5155, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.8162, mapID = 1448, label = "Taronn Redfeather", offMapText = "Travel to Taronn Redfeather in Felwood.", x = 0.5089 },
            },
            text = "Accept Verifying the Corruption from Taronn Redfeather.",
            id = "accept-5156-verifying-the-corruption",
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
                quest = { id = 5156, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.8501, mapID = 1448, label = "Grazle", offMapText = "Travel to Grazle in Felwood.", x = 0.5093 },
            },
            text = "Accept Timbermaw Ally from Grazle.",
            id = "accept-8460-timbermaw-ally",
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
                quest = { id = 8460, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "Kill 6 Deadwood Warrior.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Warrior", offMapText = "Travel to Deadwood Warrior.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-1-deadwood-warrior",
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
                questObjective = { id = 8460, text = "Deadwood Warrior", index = 1, count = 6 },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 60,
            text = "Kill 6 Deadwood Pathfinder.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Pathfinder", offMapText = "Travel to Deadwood Pathfinder.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-2-deadwood-pathfinder",
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
                questObjective = { id = 8460, text = "Deadwood Pathfinder", index = 2, count = 6 },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            text = "Kill 6 Deadwood Gardener.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Gardener", offMapText = "Travel to Deadwood Gardener.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-3-deadwood-gardener",
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
                questObjective = { id = 8460, text = "Deadwood Gardener", index = 3, count = 6 },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            text = "Turn in Timbermaw Ally to Grazle.",
            route = {
                { y = 0.8502, mapID = 1448, label = "Grazle", offMapText = "Travel to Grazle in Felwood.", x = 0.5093 },
            },
            dependsOn = {
                "accept-8460-timbermaw-ally",
                "objective-8460-1-deadwood-warrior",
                "objective-8460-2-deadwood-pathfinder",
                "objective-8460-3-deadwood-gardener",
            },
            id = "turnin-8460-timbermaw-ally",
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
                quest = { id = 8460, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.8502, mapID = 1448, label = "Grazle", offMapText = "Travel to Grazle in Felwood.", x = 0.5093 },
            },
            text = "Accept Speak to Nafien from Grazle.",
            id = "accept-8462-speak-to-nafien",
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
                quest = { id = 8462, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4102-cleansing-felwood",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 4102,
            priority = 100,
        },
        {
            priority = 110,
            route = {
                { y = 0.8298, mapID = 1448, label = "Maybess Riverbreeze", offMapText = "Travel to Maybess Riverbreeze in Felwood.", x = 0.4668 },
            },
            text = "Accept Cleansing Felwood from Maybess Riverbreeze.",
            id = "accept-4102-cleansing-felwood",
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
                quest = { id = 4102, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Kill 4 Jaedenar Hound.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Hound", offMapText = "Travel to Jaedenar Hound.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-1-jaedenar-hound",
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
                questObjective = { id = 5155, text = "Jaedenar Hound", index = 1, count = 4 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Kill 4 Jaedenar Guardian.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Guardian", offMapText = "Travel to Jaedenar Guardian.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-2-jaedenar-guardian",
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
                questObjective = { id = 5155, text = "Jaedenar Guardian", index = 2, count = 4 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            text = "Kill 6 Jaedenar Adept.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Adept", offMapText = "Travel to Jaedenar Adept.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-3-jaedenar-adept",
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
                questObjective = { id = 5155, text = "Jaedenar Adept", index = 3, count = 6 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Kill 6 Jaedenar Cultist.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Cultist", offMapText = "Travel to Jaedenar Cultist.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-4-jaedenar-cultist",
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
                questObjective = { id = 5155, text = "Jaedenar Cultist", index = 4, count = 6 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4505-well-of-corruption",
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
            checkpointQuest = 4505,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { mapID = 1448, x = 0.3421, y = 0.5234000000000001, label = "Winna Hazzard", offMapText = "Travel to Winna Hazzard in Felwood." },
            },
            text = "Accept Well of Corruption from Winna Hazzard.",
            id = "accept-4505-well-of-corruption",
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
                quest = { id = 4505, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.5273, mapID = 1448, label = "Dreka'Sur", offMapText = "Travel to Dreka'Sur in Felwood.", x = 0.348 },
            },
            text = "Accept A Husband's Last Battle from Dreka'Sur.",
            id = "accept-6162-a-husband-s-last-battle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6162, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            text = "Use the Hardened Flasket at the corrupt moonwell to obtain a Filled Flasket. Watch for stealthed enemies.",
            route = {
                { mapID = 1448, x = 0.32409999999999994, y = 0.6658, label = "Well of Corruption", offMapText = "Travel to Well of Corruption." },
            },
            dependsOn = { "accept-4505-well-of-corruption" },
            id = "objective-4505-1-hardened-flasket",
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
                questObjective = { id = 4505, index = 1, count = 1 },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Collect 1 Overlord Ror's Claw.",
            route = {
                { y = 0.9427, mapID = 1448, label = "Overlord Ror", offMapText = "Travel to Overlord Ror.", x = 0.4823 },
            },
            dependsOn = { "accept-6162-a-husband-s-last-battle" },
            id = "objective-6162-1-overlord-ror",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6162, text = "Overlord Ror", index = 1, count = 1 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Forces of Jaedenar to Greta Mosshoof.",
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            dependsOn = {
                "accept-5155-forces-of-jaedenar",
                "objective-5155-1-jaedenar-hound",
                "objective-5155-2-jaedenar-guardian",
                "objective-5155-3-jaedenar-adept",
                "objective-5155-4-jaedenar-cultist",
            },
            id = "turnin-5155-forces-of-jaedenar",
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
                quest = { id = 5155, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof.",
            id = "accept-5157-collection-of-the-corrupt-water",
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
                quest = { id = 5157, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5155 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5156-1-entropic-beast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Kill 2 Entropic Beast.",
            complete = {
                questObjective = { id = 5156, index = 1, text = "Entropic Beast", count = 2 },
            },
            route = {
                { mapID = 1448, x = 0.426, y = 0.414, label = "Entropic Beast", offMapText = "Travel to Entropic Beast." },
            },
            sourceStep = 20,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5156-verifying-the-corruption" },
        },
        {
            id = "objective-5156-2-entropic-horror",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Kill 2 Entropic Horror.",
            complete = {
                questObjective = { id = 5156, index = 2, text = "Entropic Horror", count = 2 },
            },
            route = {
                { mapID = 1448, x = 0.426, y = 0.414, label = "Entropic Horror", offMapText = "Travel to Entropic Horror." },
            },
            sourceStep = 20,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5156-verifying-the-corruption" },
        },
        {
            priority = 250,
            text = "Collect 15 Blood Amber.",
            route = {
                { y = 0.1685, mapID = 1448, label = "Warpwood Moss Flayer", offMapText = "Travel to Warpwood Moss Flayer.", x = 0.5578 },
            },
            dependsOn = { "accept-4102-cleansing-felwood" },
            id = "objective-4102-1-warpwood-moss-flayer",
            kind = "objective",
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
                questObjective = { id = 4102, text = "Warpwood Moss Flayer", index = 1, count = 15 },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { mapID = 1448, x = 0.52, y = 0.16, label = "Angerclaw Grizzly", offMapText = "Travel to Angerclaw Grizzly." },
            },
            text = "Kill 12 Angerclaw Grizzly.",
            id = "objective-4120-1-angerclaw-grizzly",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4120, text = "Angerclaw Grizzly", index = 1, count = 12 },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            route = {
                { mapID = 1448, x = 0.52, y = 0.16, label = "Felpaw Ravager", offMapText = "Travel to Felpaw Ravager." },
            },
            text = "Kill 12 Felpaw Ravager.",
            id = "objective-4120-2-felpaw-ravager",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4120, text = "Felpaw Ravager", index = 2, count = 12 },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Turn in Speak to Nafien to Nafien.",
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            dependsOn = { "accept-8462-speak-to-nafien" },
            id = "turnin-8462-speak-to-nafien",
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
                quest = { id = 8462, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5082-threat-of-the-winterfall",
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
            checkpointQuest = 5082,
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Threat of the Winterfall from Donova Snowden.",
            id = "accept-5082-threat-of-the-winterfall",
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
                quest = { id = 5082, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Turn in It's a Secret to Everybody to Donova Snowden.",
            id = "turnin-3908-it-s-a-secret-to-everybody",
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
                quest = { id = 3908, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3845 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-5083-winterfall-firewater",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
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
            priority = 320,
        },
        {
            priority = 330,
            text = "Use the Empty Firewater Flask to accept Winterfall Firewater.",
            id = "accept-5083-winterfall-firewater",
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
                quest = { id = 5083, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
                    { faction = "Horde" },
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
            sourceStep = 26,
            priority = 340,
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
                    { faction = "Horde" },
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
            sourceStep = 26,
            priority = 350,
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
                    { faction = "Horde" },
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
            sourceStep = 26,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
        },
        {
            priority = 370,
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
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5082, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Winterfall Firewater to Donova Snowden.",
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            dependsOn = { "accept-5083-winterfall-firewater" },
            id = "turnin-5083-winterfall-firewater",
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
                quest = { id = 5083, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept Falling to Corruption from Donova Snowden.",
            id = "accept-5084-falling-to-corruption",
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
                quest = { id = 5084, state = "activeOrCompleted" },
            },
            sourceStep = 27,
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
            priority = 400,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept The Videre Elixir from Donova Snowden.",
            id = "accept-3909-the-videre-elixir",
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
                quest = { id = 3909, state = "activeOrCompleted" },
            },
            sourceStep = 27,
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
            priority = 410,
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            text = "Turn in Felnok Steelspring to Felnok Steelspring.",
            id = "turnin-4808-felnok-steelspring",
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
                quest = { id = 4808, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4726 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in A Husband's Last Battle to Dreka'Sur.",
            route = {
                { y = 0.5273, mapID = 1448, label = "Dreka'Sur", offMapText = "Travel to Dreka'Sur in Felwood.", x = 0.348 },
            },
            dependsOn = { "accept-6162-a-husband-s-last-battle", "objective-6162-1-overlord-ror" },
            id = "turnin-6162-a-husband-s-last-battle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6162, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            text = "Turn in Well of Corruption to Winna Hazzard.",
            route = {
                { y = 0.5234, mapID = 1448, label = "Winna Hazzard", offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421 },
            },
            dependsOn = { "accept-4505-well-of-corruption", "objective-4505-1-hardened-flasket" },
            id = "turnin-4505-well-of-corruption",
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
                quest = { id = 4505, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Turn in Cleansing Felwood to Maybess Riverbreeze.",
            route = {
                { y = 0.8307, mapID = 1448, label = "Maybess Riverbreeze", offMapText = "Travel to Maybess Riverbreeze in Felwood.", x = 0.4672 },
            },
            dependsOn = { "accept-4102-cleansing-felwood", "objective-4102-1-warpwood-moss-flayer" },
            id = "turnin-4102-cleansing-felwood",
            kind = "turnin",
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
                quest = { id = 4102, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Follow the path into Jaedenar. Use the Empty Canteen at the corrupted moonwell to obtain Corrupt Moonwell Water.",
            id = "objective-5157-quest-work",
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
                questObjective = { id = 5157, index = 1, count = 1 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5155 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5157-collection-of-the-corrupt-water" },
            route = {
                { mapID = 1448, x = 0.3519, y = 0.5995, label = "Collection of the Corrupt Water", offMapText = "Travel to Collection of the Corrupt Water." },
            },
        },
        {
            priority = 460,
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof.",
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            dependsOn = { "accept-5157-collection-of-the-corrupt-water", "objective-5157-quest-work" },
            id = "turnin-5157-collection-of-the-corrupt-water",
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
                quest = { id = 5157, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5155 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Seeking Spiritual Aid from Greta Mosshoof.",
            id = "accept-5158-seeking-spiritual-aid",
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
                quest = { id = 5158, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5157 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in Verifying the Corruption to Taronn Redfeather.",
            route = {
                { y = 0.8162, mapID = 1448, label = "Taronn Redfeather", offMapText = "Travel to Taronn Redfeather in Felwood.", x = 0.5089 },
            },
            dependsOn = { "accept-5156-verifying-the-corruption", "objective-5156-1-entropic-beast", "objective-5156-2-entropic-horror" },
            id = "turnin-5156-verifying-the-corruption",
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
                quest = { id = 5156, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.3409, mapID = 1454, label = "Jes'rimon", offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551 },
            },
            text = "Turn in Delivery to Jes'rimon to Jes'rimon.",
            id = "turnin-3541-delivery-to-jes-rimon",
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
                quest = { id = 3541, state = "completed" },
            },
            sourceStep = 40,
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
            priority = 500,
            route = {
                { y = 0.3409, mapID = 1454, label = "Jes'rimon", offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551 },
            },
            text = "Accept Jes'rimon's Payment to Jediga from Jes'rimon.",
            id = "accept-3563-jes-rimon-s-payment-to-jediga",
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
                quest = { id = 3563, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3541 },
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
