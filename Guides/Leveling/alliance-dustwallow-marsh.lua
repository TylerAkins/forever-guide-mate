local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-dustwallow-marsh",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 40 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-paladin-accept-4486-the-tome-of-nobility",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4486,
            alternativeQuests = { 1661, 4485 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "woven-class-paladin-accept-4486-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4486-the-tome-of-nobility",
        },
        {
            priority = 30,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-4486-the-tome-of-nobility" },
            id = "woven-class-paladin-turnin-4486-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4486-the-tome-of-nobility",
        },
        {
            priority = 40,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "woven-class-paladin-accept-4485-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4485-the-tome-of-nobility",
        },
        {
            priority = 50,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-4485-the-tome-of-nobility" },
            id = "woven-class-paladin-turnin-4485-the-tome-of-nobility",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4485-the-tome-of-nobility",
        },
        {
            id = "level-before-accept-1661-the-tome-of-nobility",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1661,
            alternativeQuests = { 4485, 4486 },
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { mapID = 1453, x = 0.3981, y = 0.298, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            text = "Accept The Tome of Nobility from Duthorian Rall.",
            id = "accept-1661-the-tome-of-nobility",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1661, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            alternativeQuests = { 4485, 4486 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in The Tome of Nobility to Duthorian Rall.",
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City.", x = 0.3981 },
            },
            dependsOn = { "accept-1661-the-tome-of-nobility" },
            id = "turnin-1661-the-tome-of-nobility",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1661, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            alternativeQuests = { 4485, 4486 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-700-a-king-s-tribute",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 700,
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { mapID = 1455, x = 0.3909, y = 0.562, label = "King Magni Bronzebeard", offMapText = "Travel to King Magni Bronzebeard in Ironforge." },
            },
            text = "Turn in A King's Tribute to King Magni Bronzebeard.",
            id = "turnin-700-a-king-s-tribute",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 700, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 689 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-4487-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4487,
            alternativeQuests = { 3631, 4488, 4489 },
            priority = 110,
        },
        {
            priority = 120,
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan.",
            id = "turnin-4487-summon-felsteed",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 4487, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            alternativeQuests = { 3631, 4488, 4489 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warlock-accept-4488-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4488,
            alternativeQuests = { 3631, 4487, 4489 },
            priority = 130,
        },
        {
            priority = 140,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "woven-class-warlock-accept-4488-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
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
            classAction = "accept-4488-summon-felsteed",
        },
        {
            priority = 150,
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan.",
            id = "turnin-4488-summon-felsteed",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 4488, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            alternativeQuests = { 3631, 4487, 4489 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-class-warlock-accept-4488-summon-felsteed" },
        },
        {
            id = "level-before-accept-4490-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4490,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            text = "Accept Summon Felsteed from Strahad Farsan.",
            id = "accept-4490-summon-felsteed",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 4490, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3631, 4487, 4488, 4489 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Summon Felsteed to Strahad Farsan.",
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            dependsOn = { "accept-4490-summon-felsteed" },
            id = "turnin-4490-summon-felsteed",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 4490, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3631, 4487, 4488, 4489 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1286-the-deserters",
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
            checkpointQuest = 1286,
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            text = "Accept The Deserters from Captain Garran Vimes.",
            id = "accept-1286-the-deserters",
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
                quest = { id = 1286, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1260-morgan-stern",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1260,
            priority = 210,
        },
        {
            priority = 220,
            route = {
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6633 },
            },
            text = "Turn in Morgan Stern to Morgan Stern.",
            id = "turnin-1260-morgan-stern",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1260, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6633 },
            },
            text = "Accept Mudrock Soup and Bugs from Morgan Stern.",
            id = "accept-1204-mudrock-soup-and-bugs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1204, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Collect 8 Forked Mudrock Tongue.",
            route = {
                { y = 0.426, mapID = 1445, label = "Mudrock Spikeshell", offMapText = "Travel to Mudrock Spikeshell.", x = 0.646 },
            },
            dependsOn = { "accept-1204-mudrock-soup-and-bugs" },
            id = "objective-1204-1-mudrock-spikeshell",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1204, text = "Mudrock Spikeshell", index = 1, count = 8 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-1177-1-mirefin-coastrunner",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1177,
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { y = 0.176, mapID = 1445, label = "Mirefin Coastrunner", offMapText = "Travel to Mirefin Coastrunner.", x = 0.586 },
            },
            text = "Collect 12 Mirefin Head.",
            id = "objective-1177-1-mirefin-coastrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1177, text = "Mirefin Coastrunner", index = 1, count = 12 },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            text = "Accept Jarl Needs Eyes from \"Swamp Eye\" Jarl.",
            id = "accept-1206-jarl-needs-eyes",
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
                quest = { id = 1206, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
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
                { y = 0.1752, mapID = 1445, label = "\"Stinky\" Ignatz", offMapText = "Travel to \"Stinky\" Ignatz in Dustwallow Marsh.", x = 0.4689 },
            },
            text = "Accept Stinky's Escape from \"Stinky\" Ignatz.",
            id = "accept-1222-stinky-s-escape",
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
                quest = { id = 1222, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1222-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Stinky Ignatz while he searches for Bogbean Leaves.",
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
            requiredQuests = {},
            complete = {
                quest = { id = 1222, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1445, x = 0.4886, y = 0.2466, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 22,
            dependsOn = { "accept-1222-stinky-s-escape" },
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.2464, mapID = 1445, label = "Private Hendel", offMapText = "Travel to Private Hendel in Dustwallow Marsh.", x = 0.4522 },
            },
            text = "Accept The Missing Diplomat from Private Hendel.",
            id = "accept-1324-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1324, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Kill Private Hendel.",
            route = {
                { y = 0.2464, mapID = 1445, label = "Private Hendel", offMapText = "Travel to Private Hendel.", x = 0.4522 },
            },
            dependsOn = { "accept-1324-the-missing-diplomat" },
            id = "objective-1324-1-private-hendel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1324, text = "Private Hendel", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in The Missing Diplomat to Archmage Tervosh.",
            route = {
                { y = 0.243, mapID = 1445, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh.", x = 0.4519 },
            },
            dependsOn = { "accept-1324-the-missing-diplomat", "objective-1324-1-private-hendel" },
            id = "turnin-1324-the-missing-diplomat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1324, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.2424, mapID = 1445, label = "Lady Jaina Proudmoore", offMapText = "Travel to Lady Jaina Proudmoore in Dustwallow Marsh.", x = 0.4522 },
            },
            text = "Accept The Missing Diplomat from Lady Jaina Proudmoore.",
            id = "accept-1267-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1267, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1324 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Collect 40 Unpopped Darkmist Eye.",
            route = {
                { y = 0.2276, mapID = 1445, label = "Darkmist Silkspinner", offMapText = "Travel to Darkmist Silkspinner.", x = 0.3322 },
            },
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            id = "objective-1206-1-darkmist-silkspinner",
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
                questObjective = { id = 1206, text = "Darkmist Silkspinner", index = 1, count = 40 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Turn in Jarl Needs Eyes to \"Swamp Eye\" Jarl.",
            route = {
                { mapID = 1445, x = 0.5544, y = 0.2627, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1206-jarl-needs-eyes", "objective-1206-1-darkmist-silkspinner" },
            id = "turnin-1206-jarl-needs-eyes",
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
                quest = { id = 1206, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            route = {
                { mapID = 1445, x = 0.5544, y = 0.2627, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh." },
            },
            text = "Accept Jarl Needs a Blade from \"Swamp Eye\" Jarl.",
            id = "accept-1203-jarl-needs-a-blade",
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
                quest = { id = 1203, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "For Jarl Needs a Blade: Bring a Moonsteel Broadsword to Jarl in Dustwallow Marsh.",
            id = "objective-1203-quest-work",
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
                quest = { id = 1203, state = "complete" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1203-jarl-needs-a-blade" },
        },
        {
            priority = 380,
            text = "Turn in Jarl Needs a Blade to \"Swamp Eye\" Jarl.",
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            dependsOn = { "accept-1203-jarl-needs-a-blade", "objective-1203-quest-work" },
            id = "turnin-1203-jarl-needs-a-blade",
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
                quest = { id = 1203, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Turn in Hungry! to Mudcrush Durtfeet.",
            route = {
                { y = 0.3826, mapID = 1445, label = "Mudcrush Durtfeet", offMapText = "Travel to Mudcrush Durtfeet in Dustwallow Marsh.", x = 0.3515 },
            },
            dependsOn = { "objective-1177-1-mirefin-coastrunner" },
            id = "turnin-1177-hungry",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                quest = { id = 1177, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in The Deserters.",
            route = {
                { y = 0.543, mapID = 1445, label = "The Deserters", offMapText = "Travel to The Deserters.", x = 0.3609 },
            },
            dependsOn = { "accept-1286-the-deserters" },
            id = "turnin-1286-the-deserters",
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
                quest = { id = 1286, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.543, mapID = 1445, label = "The Deserters", offMapText = "Travel to The Deserters.", x = 0.3609 },
            },
            text = "Accept The Deserters.",
            id = "accept-1287-the-deserters",
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
                quest = { id = 1287, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1286 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1187-1-seaforium-booster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            complete = {
                questObjective = { id = 1187, index = 1, count = 1 },
            },
            route = {
                { mapID = 1445, x = 0.5407, y = 0.5649000000000001, label = "Razzeric's Tweaking", offMapText = "Travel to Razzeric's Tweaking." },
            },
            sourceStep = 33,
            priority = 420,
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
        {
            priority = 430,
            text = "Turn in Mudrock Soup and Bugs to Morgan Stern.",
            route = {
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6634 },
            },
            dependsOn = { "accept-1204-mudrock-soup-and-bugs", "objective-1204-1-mudrock-spikeshell" },
            id = "turnin-1204-mudrock-soup-and-bugs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1204, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6634 },
            },
            text = "Accept ... and Bugs from Morgan Stern.",
            id = "accept-1258-and-bugs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1258, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Turn in Stinky's Escape to Morgan Stern.",
            route = {
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6634 },
            },
            dependsOn = { "accept-1222-stinky-s-escape", "objective-1222-reviewed-escort" },
            id = "turnin-1222-stinky-s-escape",
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
                quest = { id = 1222, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Turn in The Deserters to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1287-the-deserters" },
            id = "turnin-1287-the-deserters",
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
                quest = { id = 1287, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1286 },
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
