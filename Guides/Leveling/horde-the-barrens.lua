local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "The Barrens",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-the-barrens",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 24 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-rogue-note-6681-elegant-letter",
            kind = "note",
            text = "Reach level 24 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 24 },
            },
            requiredLevel = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6681,
            priority = 10,
        },
        {
            id = "woven-class-rogue-note-6681-elegant-letter",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 20,
            classAction = "note-6681-elegant-letter",
        },
        {
            id = "loot-starter-before-woven-class-rogue-accept-6681-authored-class-prerequisite",
            instructionOnly = true,
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 30,
            classAction = "loot-starter-before-accept-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-accept-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 40,
            classAction = "accept-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-objective-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-6681-authored-class-prerequisite" },
            priority = 50,
            classAction = "objective-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-turnin-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1424, x = 0.8445, y = 0.8032, label = "Fahrad", offMapText = "Travel to Fahrad." },
            },
            dependsOn = {
                "woven-class-rogue-accept-6681-authored-class-prerequisite",
                "woven-class-rogue-objective-6681-authored-class-prerequisite",
            },
            priority = 60,
            classAction = "turnin-6681-authored-class-prerequisite",
        },
        {
            id = "level-before-woven-class-rogue-accept-6701-syndicate-emblems",
            kind = "note",
            text = "Reach level 24 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 24 },
            },
            requiredLevel = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6701,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                {
                    y = 0.2,
                    mapID = 1424,
                    label = "Ravenholdt Guard",
                    x = 0.776,
                    offMapText = "Travel to Ravenholdt Guard in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.794, mapID = 1416, label = "Ravenholdt Guard", x = 0.844, offMapText = "Travel to Ravenholdt Guard in Alterac Mountains." },
            },
            id = "woven-class-rogue-accept-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6701-syndicate-emblems",
        },
        {
            priority = 90,
            route = {
                {
                    y = 0.414,
                    mapID = 1424,
                    label = "Syndicate Shadow Mage",
                    x = 0.788,
                    offMapText = "Travel to Syndicate Shadow Mage in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                {
                    y = 0.408,
                    mapID = 1424,
                    label = "Syndicate Rogue",
                    x = 0.752,
                    offMapText = "Travel to Syndicate Rogue in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                {
                    y = 0.44,
                    mapID = 1424,
                    label = "Syndicate Watchman",
                    x = 0.81,
                    offMapText = "Travel to Syndicate Watchman in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.656, mapID = 1416, label = "Syndicate Footpad", x = 0.564, offMapText = "Travel to Syndicate Footpad in Alterac Mountains." },
                { y = 0.692, mapID = 1416, label = "Syndicate Thief", x = 0.59, offMapText = "Travel to Syndicate Thief in Alterac Mountains." },
                { y = 0.41, mapID = 1416, label = "Syndicate Spy", x = 0.618, offMapText = "Travel to Syndicate Spy in Alterac Mountains." },
                { y = 0.272, mapID = 1416, label = "Syndicate Sentry", x = 0.562, offMapText = "Travel to Syndicate Sentry in Alterac Mountains." },
                { y = 0.274, mapID = 1416, label = "Syndicate Saboteur", x = 0.562, offMapText = "Travel to Syndicate Saboteur in Alterac Mountains." },
                { y = 0.152, mapID = 1416, label = "Syndicate Assassin", x = 0.392, offMapText = "Travel to Syndicate Assassin in Alterac Mountains." },
                { y = 0.154, mapID = 1416, label = "Syndicate Enforcer", x = 0.392, offMapText = "Travel to Syndicate Enforcer in Alterac Mountains." },
                { y = 0.41, mapID = 1416, label = "Syndicate Wizard", x = 0.618, offMapText = "Travel to Syndicate Wizard in Alterac Mountains." },
                { y = 0.432, mapID = 1416, label = "Gravis Slipknot", x = 0.622, offMapText = "Travel to Gravis Slipknot in Alterac Mountains." },
            },
            dependsOn = { "woven-class-rogue-accept-6701-syndicate-emblems" },
            id = "woven-class-rogue-objective-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6701-syndicate-emblems",
        },
        {
            priority = 100,
            route = {
                {
                    y = 0.2,
                    mapID = 1424,
                    label = "Ravenholdt Guard",
                    x = 0.776,
                    offMapText = "Travel to Ravenholdt Guard in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.794, mapID = 1416, label = "Ravenholdt Guard", x = 0.844, offMapText = "Travel to Ravenholdt Guard in Alterac Mountains." },
            },
            dependsOn = { "woven-class-rogue-accept-6701-syndicate-emblems", "woven-class-rogue-objective-6701-syndicate-emblems" },
            id = "woven-class-rogue-turnin-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6701-syndicate-emblems",
        },
        {
            id = "level-before-turnin-1067-return-to-thunder-bluff",
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
            checkpointQuest = 1067,
            priority = 110,
        },
        {
            priority = 120,
            route = {
                { mapID = 1456, x = 0.2281, y = 0.209, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff." },
            },
            text = "Turn in Return to Thunder Bluff to Apothecary Zamah.",
            id = "turnin-1067-return-to-thunder-bluff",
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
                quest = { id = 1067, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1066 },
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
                { y = 0.209, mapID = 1456, label = "Apothecary Zamah", offMapText = "Travel to Apothecary Zamah in Thunder Bluff.", x = 0.2281 },
            },
            text = "Accept The Flying Machine Airport from Apothecary Zamah.",
            id = "accept-1086-the-flying-machine-airport",
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
                quest = { id = 1086, state = "activeOrCompleted" },
            },
            sourceStep = 4,
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
            id = "level-before-accept-1195-the-sacred-flame",
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
            checkpointQuest = 1195,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.508, mapID = 1456, label = "Zangen Stonehoof", offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.", x = 0.551 },
            },
            text = "Accept The Sacred Flame from Zangen Stonehoof.",
            id = "accept-1195-the-sacred-flame",
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
                quest = { id = 1195, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-31-aquatic-form",
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
            checkpointQuest = 31,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.2722, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7648 },
            },
            text = "Turn in Aquatic Form to Turak Runetotem.",
            id = "turnin-31-aquatic-form",
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
                quest = { id = 31, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 30 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            text = "Accept Betrayal from Within from Mangletooth.",
            id = "accept-879-betrayal-from-within",
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
                quest = { id = 879, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5052 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.5768, mapID = 1413, label = "Tatternack Steelforge", offMapText = "Travel to Tatternack Steelforge in The Barrens.", x = 0.451 },
            },
            text = "Accept Weapons of Choice from Tatternack Steelforge.",
            id = "accept-893-weapons-of-choice",
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
                quest = { id = 893, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.63, mapID = 1413, label = "Owatanka", offMapText = "Travel to Owatanka.", x = 0.54 },
            },
            text = "Kill Owatanka and loot Owatanka's Tail.",
            id = "note-884-owatanka-loot",
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
                        quest = { id = 884, state = "activeOrCompleted" },
                    },
                    { item = "Owatanka's Tail" },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-884-owatanka",
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
            text = "Loot Owatanka's Tailspike from Owatanka. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Owatanka's Tailspike", minCount = 1 },
                    },
                    {
                        quest = { id = 884, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 210,
        },
        {
            priority = 220,
            text = "Use the Owatanka's Tailspike to accept Owatanka.",
            id = "accept-884-owatanka",
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
                quest = { id = 884, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.591, mapID = 1413, label = "Egg Hunt", offMapText = "Travel to Camp Taurajo.", x = 0.444 },
            },
            text = "Accept Egg Hunt.",
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
            complete = {
                quest = { id = 868, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Collect 12 Silithid Egg.",
            route = {
                { y = 0.7012, mapID = 1413, label = "Silithid Mound", offMapText = "Travel to Silithid Mound.", x = 0.4738 },
            },
            dependsOn = { "accept-868-egg-hunt" },
            id = "objective-868-1-silithid-mound",
            kind = "objective",
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
                questObjective = { id = 868, text = "Silithid Mound", index = 1, count = 12 },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.702, mapID = 1413, label = "Silithid Harvester", offMapText = "Travel to Silithid Harvester.", x = 0.478 },
            },
            text = "Kill Silithid Harvester and loot the Harvester's Head. This rare mob can take hours to respawn; skip this step if you want.",
            id = "note-897-the-harvester-loot",
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
                        quest = { id = 897, state = "activeOrCompleted" },
                    },
                    { item = "Harvester's Head" },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-897-the-harvester",
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
            text = "Loot Harvester's Head. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Harvester's Head", minCount = 1 },
                    },
                    {
                        quest = { id = 897, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 260,
        },
        {
            priority = 270,
            text = "Use the Harvester's Head to accept The Harvester.",
            id = "accept-897-the-harvester",
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
                quest = { id = 897, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1536-quest-work",
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
            checkpointQuest = 1536,
            priority = 280,
        },
        {
            priority = 290,
            route = {
                { mapID = 1424, x = 0.6214999999999999, y = 0.2075, label = "Filled Red Waterskin", offMapText = "Travel to Filled Red Waterskin." },
            },
            id = "objective-1536-quest-work",
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
            sourceStep = 23,
            useClientPin = false,
            dependsOn = {},
            classAction = "objective-1536-quest-work",
        },
        {
            priority = 300,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Turn in Call of Water to Brine.",
            id = "turnin-1536-call-of-water",
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
                quest = { id = 1536, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1535 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1536-quest-work" },
        },
        {
            priority = 310,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Accept Call of Water from Brine.",
            id = "accept-1534-call-of-water",
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
                quest = { id = 1534, state = "activeOrCompleted" },
            },
            sourceStep = 23,
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
            priority = 320,
            route = {
                { y = 0.7554, mapID = 1413, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens.", x = 0.4613 },
            },
            text = "Accept Gann's Reclamation from Gann Stonespire.",
            id = "accept-843-gann-s-reclamation",
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
                quest = { id = 843, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Collect 1 Kuz's Skull.",
            route = {
                { y = 0.7957, mapID = 1413, label = "Kuz", offMapText = "Travel to Kuz.", x = 0.4396 },
            },
            dependsOn = { "accept-879-betrayal-from-within" },
            id = "objective-879-1-kuz",
            kind = "objective",
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
                questObjective = { id = 879, text = "Kuz", index = 1, count = 1 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5052 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Collect 1 Nak's Skull.",
            route = {
                { y = 0.831, mapID = 1413, label = "Nak", offMapText = "Travel to Nak.", x = 0.4382 },
            },
            dependsOn = { "accept-879-betrayal-from-within" },
            id = "objective-879-2-nak",
            kind = "objective",
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
                questObjective = { id = 879, text = "Nak", index = 2, count = 1 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5052 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Collect 1 Lok's Skull.",
            route = {
                { y = 0.8054, mapID = 1413, label = "Lok Orcbane", offMapText = "Travel to Lok Orcbane.", x = 0.4015 },
            },
            dependsOn = { "accept-879-betrayal-from-within" },
            id = "objective-879-3-lok-orcbane",
            kind = "objective",
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
                questObjective = { id = 879, text = "Lok Orcbane", index = 3, count = 1 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5052 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-893-1-razormane-backstabber",
            kind = "objective",
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
            text = "Collect 1 Razormane Backstabber.",
            complete = {
                questObjective = { id = 893, index = 1, text = "Razormane Backstabber", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.442, y = 0.8140000000000001, label = "Razormane Backstabber", offMapText = "Travel to Razormane Backstabber." },
            },
            sourceStep = 28,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-893-weapons-of-choice" },
        },
        {
            priority = 370,
            route = {
                { y = 0.62, mapID = 1413, label = "Washte Pawne", offMapText = "Travel to Washte Pawne.", x = 0.44 },
            },
            text = "Kill Washte Pawne and loot Washte Pawne's Feather.",
            id = "note-885-washte-pawne-loot",
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
                        quest = { id = 885, state = "activeOrCompleted" },
                    },
                    { item = "Washte Pawne's Feather" },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-893-2-charred-razormane-wand",
            kind = "objective",
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
            text = "Collect 1 Charred Razormane Wand.",
            complete = {
                questObjective = { id = 893, index = 2, text = "Charred Razormane Wand", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.424, y = 0.8220000000000001, label = "Charred Razormane Wand", offMapText = "Travel to Charred Razormane Wand." },
            },
            sourceStep = 29,
            priority = 380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-893-weapons-of-choice" },
        },
        {
            id = "objective-893-3-razormane-war-shield",
            kind = "objective",
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
            text = "Collect 1 Razormane War Shield.",
            complete = {
                questObjective = { id = 893, index = 3, text = "Razormane War Shield", count = 1 },
            },
            route = {
                { mapID = 1413, x = 0.42200000000000004, y = 0.826, label = "Razormane War Shield", offMapText = "Travel to Razormane War Shield." },
            },
            sourceStep = 30,
            priority = 390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-893-weapons-of-choice" },
        },
        {
            id = "loot-starter-before-accept-885-washte-pawne",
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
            text = "Loot Washte Pawne's Feather from Washte Pawne. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Washte Pawne's Feather", minCount = 1 },
                    },
                    {
                        quest = { id = 885, state = "activeOrCompleted" },
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
            text = "Use the Washte Pawne's Feather to accept Washte Pawne.",
            id = "accept-885-washte-pawne",
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
                quest = { id = 885, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Collect 1 Khazgorm's Journal.",
            route = {
                { y = 0.8526, mapID = 1413, label = "Prospector Khazgorm", offMapText = "Travel to Prospector Khazgorm.", x = 0.4755 },
            },
            dependsOn = { "accept-843-gann-s-reclamation" },
            id = "objective-843-3-prospector-khazgorm",
            kind = "objective",
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
                questObjective = { id = 843, text = "Prospector Khazgorm", index = 3, count = 1 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-843-2-bael-dun-foreman",
            kind = "objective",
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
            text = "Kill 5 Bael'dun Foreman.",
            complete = {
                questObjective = { id = 843, index = 2, text = "Bael'dun Foreman", count = 5 },
            },
            route = {
                { mapID = 1413, x = 0.47409999999999997, y = 0.8499, label = "Bael'dun Foreman", offMapText = "Travel to Bael'dun Foreman." },
            },
            sourceStep = 33,
            priority = 430,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-843-gann-s-reclamation" },
        },
        {
            id = "objective-843-1-bael-dun-excavator",
            kind = "objective",
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
            text = "Kill 15 Bael'dun Excavator.",
            complete = {
                questObjective = { id = 843, index = 1, text = "Bael'dun Excavator", count = 15 },
            },
            route = {
                { mapID = 1413, x = 0.47409999999999997, y = 0.8499, label = "Bael'dun Excavator", offMapText = "Travel to Bael'dun Excavator." },
            },
            sourceStep = 33,
            priority = 440,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-843-gann-s-reclamation" },
        },
        {
            priority = 450,
            text = "Turn in Gann's Reclamation to Gann Stonespire.",
            route = {
                { mapID = 1413, x = 0.4612, y = 0.8123999999999999, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens." },
            },
            dependsOn = {
                "accept-843-gann-s-reclamation",
                "objective-843-3-prospector-khazgorm",
                "objective-843-2-bael-dun-foreman",
                "objective-843-1-bael-dun-excavator",
            },
            id = "turnin-843-gann-s-reclamation",
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
                quest = { id = 843, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { mapID = 1413, x = 0.4612, y = 0.8123999999999999, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens." },
            },
            text = "Accept Revenge of Gann from Gann Stonespire.",
            id = "accept-846-revenge-of-gann",
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
                quest = { id = 846, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 843 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Collect 6 Nitroglycerin.",
            route = {
                { y = 0.8449, mapID = 1413, label = "Bael'dun Rifleman", offMapText = "Travel to Bael'dun Rifleman.", x = 0.4875 },
            },
            dependsOn = { "accept-846-revenge-of-gann" },
            id = "objective-846-1-bael-dun-rifleman",
            kind = "objective",
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
                questObjective = { id = 846, text = "Bael'dun Rifleman", index = 1, count = 6 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 843 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Collect 6 Wood Pulp.",
            route = {
                { y = 0.8449, mapID = 1413, label = "Wood Pulp", offMapText = "Travel to Wood Pulp.", x = 0.4875 },
            },
            dependsOn = { "accept-846-revenge-of-gann" },
            id = "objective-846-2-wood-pulp",
            kind = "objective",
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
                questObjective = { id = 846, text = "Wood Pulp", index = 2, count = 6 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 843 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Collect 6 Sodium Nitrate.",
            route = {
                { y = 0.8449, mapID = 1413, label = "Sodium Nitrate", offMapText = "Travel to Sodium Nitrate.", x = 0.4875 },
            },
            dependsOn = { "accept-846-revenge-of-gann" },
            id = "objective-846-3-sodium-nitrate",
            kind = "objective",
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
                questObjective = { id = 846, text = "Sodium Nitrate", index = 3, count = 6 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 843 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Revenge of Gann to Gann Stonespire.",
            route = {
                { y = 0.8124, mapID = 1413, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens.", x = 0.4612 },
            },
            dependsOn = {
                "accept-846-revenge-of-gann",
                "objective-846-1-bael-dun-rifleman",
                "objective-846-2-wood-pulp",
                "objective-846-3-sodium-nitrate",
            },
            id = "turnin-846-revenge-of-gann",
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
                quest = { id = 846, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 843 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.8124, mapID = 1413, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens.", x = 0.4612 },
            },
            text = "Accept Revenge of Gann from Gann Stonespire.",
            id = "accept-849-revenge-of-gann",
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
                quest = { id = 849, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 846 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Climb the Bael Modan platform and interact with the flying machine to destroy it. You can interact from a distance.",
            id = "objective-849-quest-work",
            kind = "objective",
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
                questObjective = { id = 849, index = 1, count = 1 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 846 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-849-revenge-of-gann" },
            route = {
                { mapID = 1413, x = 0.47, y = 0.856, label = "Revenge of Gann", offMapText = "Travel to Revenge of Gann." },
            },
        },
        {
            priority = 530,
            text = "Turn in Revenge of Gann to Gann Stonespire.",
            route = {
                { y = 0.8124, mapID = 1413, label = "Gann Stonespire", offMapText = "Travel to Gann Stonespire in The Barrens.", x = 0.4612 },
            },
            dependsOn = { "accept-849-revenge-of-gann", "objective-849-quest-work" },
            id = "turnin-849-revenge-of-gann",
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
                quest = { id = 849, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 846 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Turn in Weapons of Choice to Tatternack Steelforge.",
            route = {
                { y = 0.5768, mapID = 1413, label = "Tatternack Steelforge", offMapText = "Travel to Tatternack Steelforge in The Barrens.", x = 0.451 },
            },
            dependsOn = {
                "accept-893-weapons-of-choice",
                "objective-893-1-razormane-backstabber",
                "objective-893-2-charred-razormane-wand",
                "objective-893-3-razormane-war-shield",
            },
            id = "turnin-893-weapons-of-choice",
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
                quest = { id = 893, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in The Harvester to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-897-the-harvester" },
            id = "turnin-897-the-harvester",
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
                quest = { id = 897, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "Turn in Owatanka to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-884-owatanka" },
            id = "turnin-884-owatanka",
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
                quest = { id = 884, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in Washte Pawne to Jorn Skyseer.",
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            dependsOn = { "accept-885-washte-pawne" },
            id = "turnin-885-washte-pawne",
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
                quest = { id = 885, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.5914, mapID = 1413, label = "Jorn Skyseer", offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486 },
            },
            text = "Accept The Ashenvale Hunt from Jorn Skyseer.",
            id = "accept-6382-the-ashenvale-hunt",
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
                quest = { id = 6382, state = "activeOrCompleted" },
            },
            sourceStep = 42,
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
            priority = 590,
            text = "Turn in Betrayal from Within to Mangletooth.",
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            dependsOn = { "accept-879-betrayal-from-within", "objective-879-1-kuz", "objective-879-2-nak", "objective-879-3-lok-orcbane" },
            id = "turnin-879-betrayal-from-within",
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
                quest = { id = 879, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5052 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.5924, mapID = 1413, label = "Mangletooth", offMapText = "Travel to Mangletooth in The Barrens.", x = 0.4455 },
            },
            text = "Accept Betrayal from Within from Mangletooth.",
            id = "accept-906-betrayal-from-within",
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
                quest = { id = 906, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 879 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Betrayal from Within to Thork.",
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            dependsOn = { "accept-906-betrayal-from-within" },
            id = "turnin-906-betrayal-from-within",
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
                quest = { id = 906, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 879 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in Egg Hunt to Korran.",
            route = {
                { y = 0.2963, mapID = 1413, label = "Korran", offMapText = "Travel to Korran in The Barrens.", x = 0.5107 },
            },
            dependsOn = { "accept-868-egg-hunt", "objective-868-1-silithid-mound" },
            id = "turnin-868-egg-hunt",
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
                quest = { id = 868, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.4386, mapID = 1413, label = "Mahren Skyseer", offMapText = "Travel to Mahren Skyseer in The Barrens.", x = 0.6584 },
            },
            text = "Turn in Mahren Skyseer to Mahren Skyseer.",
            id = "turnin-874-mahren-skyseer",
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
                quest = { id = 874, state = "completed" },
            },
            sourceStep = 48,
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
            priority = 640,
            route = {
                { y = 0.4386, mapID = 1413, label = "Mahren Skyseer", offMapText = "Travel to Mahren Skyseer in The Barrens.", x = 0.6584 },
            },
            text = "Accept Isha Awak from Mahren Skyseer.",
            id = "accept-873-isha-awak",
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
                quest = { id = 873, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 874 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Collect 1 Heart of Isha Awak.",
            route = {
                { y = 0.472, mapID = 1413, label = "Isha Awak", offMapText = "Travel to Isha Awak.", x = 0.654 },
            },
            dependsOn = { "accept-873-isha-awak" },
            id = "objective-873-1-isha-awak",
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
                questObjective = { id = 873, text = "Isha Awak", index = 1, count = 1 },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 874 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Turn in Isha Awak to Mahren Skyseer.",
            route = {
                { y = 0.4386, mapID = 1413, label = "Mahren Skyseer", offMapText = "Travel to Mahren Skyseer in The Barrens.", x = 0.6584 },
            },
            dependsOn = { "accept-873-isha-awak", "objective-873-1-isha-awak" },
            id = "turnin-873-isha-awak",
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
                quest = { id = 873, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 874 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-97250-wrongly-blamed",
            kind = "note",
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 97250,
            priority = 670,
        },
        {
            priority = 680,
            route = {
                { y = 0.592, mapID = 1413, label = "Grunt Logmar", offMapText = "Travel to Grunt Logmar.", x = 0.446 },
            },
            text = "Accept Wrongly Blamed, Justly Corrected from Grunt Logmar at Camp Taurajo. This is an elite. Bring a group.",
            id = "woven-accept-97250-wrongly-blamed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97250, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            route = {
                { y = 0.776, mapID = 1413, label = "Sulhasa", offMapText = "Travel to Sulhasa.", x = 0.478 },
            },
            text = "Accept Field to Clear from Sulhasa in the southern Barrens.",
            id = "woven-accept-98093-field-to-clear",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98093, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            route = {
                { y = 0.798, mapID = 1413, label = "Stormhide", offMapText = "Travel to Stormhide.", x = 0.464 },
                { y = 0.828, mapID = 1413, label = "Hecklefang Stalker", offMapText = "Travel to Hecklefang Stalker.", x = 0.458 },
            },
            text = "Field to Clear: slay 7 Stormhide lizards and 7 Hecklefang Stalkers so Sulhasa can leave the tree.",
            id = "woven-objective-98093-field-to-clear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98093, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98093-field-to-clear" },
        },
        {
            priority = 710,
            route = {
                { y = 0.776, mapID = 1413, label = "Sulhasa", offMapText = "Travel to Sulhasa.", x = 0.478 },
            },
            text = "Turn in Field to Clear to Sulhasa.",
            id = "woven-turnin-98093-field-to-clear",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98093, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98093-field-to-clear", "woven-objective-98093-field-to-clear" },
        },
        {
            priority = 720,
            route = {
                { y = 0.77, mapID = 1413, label = "Encroaching Soldier", offMapText = "Travel to Encroaching Soldier.", x = 0.49 },
                { y = 0.772, mapID = 1413, label = "Outraged Pillager", offMapText = "Travel to Outraged Pillager.", x = 0.49 },
            },
            text = "Wrongly Blamed, Justly Corrected: slay the encroaching soldiers and the Outraged Pillager on the Dustwallow border. This is an elite. Bring a group.",
            id = "woven-objective-97250-wrongly-blamed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97250, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97250-wrongly-blamed" },
        },
        {
            priority = 730,
            route = {
                { y = 0.592, mapID = 1413, label = "Grunt Logmar", offMapText = "Travel to Grunt Logmar.", x = 0.446 },
            },
            text = "Turn in Wrongly Blamed, Justly Corrected to Grunt Logmar at Camp Taurajo.",
            id = "woven-turnin-97250-wrongly-blamed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97250, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97250-wrongly-blamed", "woven-objective-97250-wrongly-blamed" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
