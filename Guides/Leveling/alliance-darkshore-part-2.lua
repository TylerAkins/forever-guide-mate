local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Darkshore",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-darkshore-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 20 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-warlock-accept-1717-gakins-summons",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1717,
            alternativeQuests = { 1716 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.096, mapID = 1455, label = "Lago Blackwrench", x = 0.476, offMapText = "Travel to Lago Blackwrench in Ironforge." },
            },
            id = "woven-class-warlock-accept-1717-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1717-gakins-summons",
        },
        {
            priority = 30,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-1717-gakins-summons" },
            id = "woven-class-warlock-turnin-1717-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1717-gakins-summons",
        },
        {
            id = "level-before-woven-class-priest-accept-5678-arcane-feedback",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 5678,
            alternativeQuests = { 5676, 5677 },
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "woven-class-priest-accept-5678-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5678-arcane-feedback",
        },
        {
            priority = 60,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5678-arcane-feedback" },
            id = "woven-class-priest-turnin-5678-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5678-arcane-feedback",
        },
        {
            priority = 70,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "woven-class-priest-accept-5677-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5677-arcane-feedback",
        },
        {
            priority = 80,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5677-arcane-feedback" },
            id = "woven-class-priest-turnin-5677-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5677-arcane-feedback",
        },
        {
            id = "level-before-woven-class-priest-accept-5675-elunes-grace",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
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
            checkpointQuest = 5675,
            alternativeQuests = { 5672, 5673, 5674 },
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "woven-class-priest-accept-5675-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5675-elunes-grace",
        },
        {
            priority = 110,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5675-elunes-grace" },
            id = "woven-class-priest-turnin-5675-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5675-elunes-grace",
        },
        {
            priority = 120,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "woven-class-priest-accept-5673-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5673-elunes-grace",
        },
        {
            priority = 130,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5673-elunes-grace" },
            id = "woven-class-priest-turnin-5673-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5673-elunes-grace",
        },
        {
            id = "level-before-woven-class-priest-accept-5647-a-lack-of-fear",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
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
            checkpointQuest = 5647,
            alternativeQuests = { 5641, 5645 },
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "woven-class-priest-accept-5647-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5647-a-lack-of-fear",
        },
        {
            priority = 160,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "woven-class-priest-accept-5647-a-lack-of-fear" },
            id = "woven-class-priest-turnin-5647-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5647-a-lack-of-fear",
        },
        {
            priority = 170,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "woven-class-priest-accept-5645-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5645-a-lack-of-fear",
        },
        {
            priority = 180,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "woven-class-priest-accept-5645-a-lack-of-fear" },
            id = "woven-class-priest-turnin-5645-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5645-a-lack-of-fear",
        },
        {
            priority = 190,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "woven-class-priest-accept-5672-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5672-elunes-grace",
        },
        {
            priority = 200,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5672-elunes-grace" },
            id = "woven-class-priest-turnin-5672-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5672-elunes-grace",
        },
        {
            priority = 210,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "woven-class-priest-accept-5676-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5676-arcane-feedback",
        },
        {
            priority = 220,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5676-arcane-feedback" },
            id = "woven-class-priest-turnin-5676-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5676-arcane-feedback",
        },
        {
            priority = 230,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "woven-class-priest-accept-5641-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5641-a-lack-of-fear",
        },
        {
            priority = 240,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "woven-class-priest-accept-5641-a-lack-of-fear" },
            id = "woven-class-priest-turnin-5641-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5641-a-lack-of-fear",
        },
        {
            id = "level-before-woven-class-shaman-accept-94494-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 94494,
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { y = 0.136, mapID = 1455, label = "Eldrun Stormbreaker", x = 0.474, offMapText = "Travel to Eldrun Stormbreaker in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94494-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94494-call-of-water",
        },
        {
            priority = 270,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94494-call-of-water" },
            id = "woven-class-shaman-turnin-94494-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94494-call-of-water",
        },
        {
            priority = 280,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            id = "woven-class-shaman-accept-94616-water-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94616-water-sapta",
        },
        {
            priority = 290,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94616-water-sapta" },
            id = "woven-class-shaman-turnin-94616-water-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94616-water-sapta",
        },
        {
            priority = 300,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94502-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94502-call-of-water",
        },
        {
            priority = 310,
            id = "woven-class-shaman-objective-94502-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-94502-call-of-water" },
            classAction = "objective-94502-quest-work",
        },
        {
            priority = 320,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94502-call-of-water", "woven-class-shaman-objective-94502-quest-work" },
            id = "woven-class-shaman-turnin-94502-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94502-call-of-water",
        },
        {
            priority = 330,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94501-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94501-call-of-water",
        },
        {
            priority = 340,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94501-call-of-water" },
            id = "woven-class-shaman-turnin-94501-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94501-call-of-water",
        },
        {
            priority = 350,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94500-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94500-call-of-water",
        },
        {
            priority = 360,
            id = "woven-class-shaman-objective-94500-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-94500-call-of-water" },
            classAction = "objective-94500-quest-work",
        },
        {
            priority = 370,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "woven-class-shaman-accept-94500-call-of-water", "woven-class-shaman-objective-94500-quest-work" },
            id = "woven-class-shaman-turnin-94500-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94500-call-of-water",
        },
        {
            priority = 380,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94499-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94499-call-of-water",
        },
        {
            priority = 390,
            id = "woven-class-shaman-objective-94499-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-94499-call-of-water" },
            classAction = "objective-94499-quest-work",
        },
        {
            priority = 400,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "woven-class-shaman-accept-94499-call-of-water", "woven-class-shaman-objective-94499-quest-work" },
            id = "woven-class-shaman-turnin-94499-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94499-call-of-water",
        },
        {
            priority = 410,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94497-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94497-call-of-water",
        },
        {
            priority = 420,
            id = "woven-class-shaman-objective-94497-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-94497-call-of-water" },
            classAction = "objective-94497-quest-work",
        },
        {
            priority = 430,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "woven-class-shaman-accept-94497-call-of-water", "woven-class-shaman-objective-94497-quest-work" },
            id = "woven-class-shaman-turnin-94497-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94497-call-of-water",
        },
        {
            priority = 440,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            id = "woven-class-shaman-accept-94495-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94495-call-of-water",
        },
        {
            priority = 450,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "woven-class-shaman-accept-94495-call-of-water" },
            id = "woven-class-shaman-turnin-94495-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94495-call-of-water",
        },
        {
            id = "level-before-woven-class-warrior-accept-1699-the-rethban-gauntlet",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1699,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1699-the-rethban-gauntlet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1699-the-rethban-gauntlet",
        },
        {
            priority = 480,
            dependsOn = { "woven-class-warrior-accept-1699-the-rethban-gauntlet" },
            id = "woven-class-warrior-objective-1699-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1699-reviewed-mechanics",
        },
        {
            priority = 490,
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = {
                "woven-class-warrior-accept-1699-the-rethban-gauntlet",
                "woven-class-warrior-objective-1699-reviewed-mechanics",
            },
            id = "woven-class-warrior-turnin-1699-the-rethban-gauntlet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1699-the-rethban-gauntlet",
        },
        {
            priority = 500,
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            id = "woven-class-warrior-accept-1702-the-shieldsmith",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1702-the-shieldsmith",
        },
        {
            priority = 510,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1702-the-shieldsmith" },
            id = "woven-class-warrior-turnin-1702-the-shieldsmith",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1702-the-shieldsmith",
        },
        {
            priority = 520,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1701-fire-hardened-mail",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1701-fire-hardened-mail",
        },
        {
            priority = 530,
            id = "woven-class-warrior-objective-1701-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1701-fire-hardened-mail" },
            classAction = "objective-1701-quest-work",
        },
        {
            priority = 540,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1701-fire-hardened-mail", "woven-class-warrior-objective-1701-quest-work" },
            id = "woven-class-warrior-turnin-1701-fire-hardened-mail",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1701-fire-hardened-mail",
        },
        {
            id = "level-before-woven-class-warrior-accept-1782-authored-class-prerequisite",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1782,
            priority = 550,
        },
        {
            id = "woven-class-warrior-accept-1782-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1453, x = 0.58, y = 0.168, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard." },
            },
            dependsOn = {},
            priority = 560,
            classAction = "accept-1782-authored-class-prerequisite",
        },
        {
            id = "woven-class-warrior-turnin-1782-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1453, x = 0.58, y = 0.168, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard." },
            },
            dependsOn = { "woven-class-warrior-accept-1782-authored-class-prerequisite" },
            priority = 570,
            classAction = "turnin-1782-authored-class-prerequisite",
        },
        {
            priority = 580,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1710-sunscorched-shells",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1710-sunscorched-shells",
        },
        {
            priority = 590,
            id = "woven-class-warrior-objective-1710-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1710-sunscorched-shells" },
            classAction = "objective-1710-quest-work",
        },
        {
            priority = 600,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1710-sunscorched-shells", "woven-class-warrior-objective-1710-quest-work" },
            id = "woven-class-warrior-turnin-1710-sunscorched-shells",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1710-sunscorched-shells",
        },
        {
            priority = 610,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            id = "woven-class-warrior-accept-1711-mathiels-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1711-mathiels-armor",
        },
        {
            priority = 620,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1711-mathiels-armor" },
            id = "woven-class-warrior-turnin-1711-mathiels-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1711-mathiels-armor",
        },
        {
            priority = 630,
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1708-iron-coral",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1708-iron-coral",
        },
        {
            priority = 640,
            id = "woven-class-warrior-objective-1708-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1708-iron-coral" },
            classAction = "objective-1708-quest-work",
        },
        {
            priority = 650,
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1708-iron-coral", "woven-class-warrior-objective-1708-quest-work" },
            id = "woven-class-warrior-turnin-1708-iron-coral",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1708-iron-coral",
        },
        {
            priority = 660,
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            id = "woven-class-warrior-accept-1709-klockmorts-creation",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1709-klockmorts-creation",
        },
        {
            priority = 670,
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1709-klockmorts-creation" },
            id = "woven-class-warrior-turnin-1709-klockmorts-creation",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1709-klockmorts-creation",
        },
        {
            priority = 680,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1705-burning-blood",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1705-burning-blood",
        },
        {
            priority = 690,
            id = "woven-class-warrior-objective-1705-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1705-burning-blood" },
            classAction = "objective-1705-quest-work",
        },
        {
            priority = 700,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1705-burning-blood", "woven-class-warrior-objective-1705-quest-work" },
            id = "woven-class-warrior-turnin-1705-burning-blood",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1705-burning-blood",
        },
        {
            priority = 710,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1706-grimands-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1706-grimands-armor",
        },
        {
            priority = 720,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1706-grimands-armor" },
            id = "woven-class-warrior-turnin-1706-grimands-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1706-grimands-armor",
        },
        {
            id = "level-before-woven-class-warrior-accept-1704-klockmort-spannerspan",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3, 7 },
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
            checkpointQuest = 1704,
            priority = 730,
        },
        {
            priority = 740,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1704-klockmort-spannerspan",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1704-klockmort-spannerspan",
        },
        {
            priority = 750,
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1704-klockmort-spannerspan" },
            id = "woven-class-warrior-turnin-1704-klockmort-spannerspan",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1704-klockmort-spannerspan",
        },
        {
            id = "level-before-woven-class-warrior-accept-1703-mathiel",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
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
            checkpointQuest = 1703,
            priority = 760,
        },
        {
            priority = 770,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1703-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1703-mathiel",
        },
        {
            priority = 780,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1703-mathiel" },
            id = "woven-class-warrior-turnin-1703-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1703-mathiel",
        },
        {
            id = "level-before-woven-class-warrior-accept-1700-grimand-elmore",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 1700,
            priority = 790,
        },
        {
            priority = 800,
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1700-grimand-elmore",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1700-grimand-elmore",
        },
        {
            priority = 810,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1700-grimand-elmore" },
            id = "woven-class-warrior-turnin-1700-grimand-elmore",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1700-grimand-elmore",
        },
        {
            priority = 820,
            route = {
                { y = 0.456, mapID = 1453, label = "Wu Shen", x = 0.788, offMapText = "Travel to Wu Shen in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1698-yorus-barleybrew",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1698-yorus-barleybrew",
        },
        {
            priority = 830,
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = { "woven-class-warrior-accept-1698-yorus-barleybrew" },
            id = "woven-class-warrior-turnin-1698-yorus-barleybrew",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1698-yorus-barleybrew",
        },
        {
            id = "level-before-woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 98738,
            priority = 840,
        },
        {
            priority = 850,
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            priority = 860,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98738-blessings-of-the-great-windborne-cat-spirit" },
            id = "woven-class-druid-turnin-98738-blessings-of-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98738-blessings-of-the-great-windborne-cat-spirit",
        },
        {
            priority = 870,
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            id = "woven-class-druid-accept-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98404-the-great-windborne-cat-spirit",
        },
        {
            priority = 880,
            id = "woven-class-druid-objective-98404-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-98404-the-great-windborne-cat-spirit" },
            classAction = "objective-98404-quest-work",
        },
        {
            priority = 890,
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = {
                "woven-class-druid-accept-98404-the-great-windborne-cat-spirit",
                "woven-class-druid-objective-98404-quest-work",
            },
            id = "woven-class-druid-turnin-98404-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98404-the-great-windborne-cat-spirit",
        },
        {
            id = "level-before-woven-class-druid-accept-98397-to-darnassus",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4, 95 },
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
            checkpointQuest = 98397,
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98397-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98397-to-darnassus",
        },
        {
            priority = 920,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-98397-to-darnassus" },
            id = "woven-class-druid-turnin-98397-to-darnassus",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98397-to-darnassus",
        },
        {
            id = "level-before-woven-class-druid-accept-98731-blessings-of-the-great-cat-spirit",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98731,
            priority = 930,
        },
        {
            priority = 940,
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98731-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98731-blessings-of-the-great-cat-spirit",
        },
        {
            priority = 950,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98731-blessings-of-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98731-blessings-of-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98731-blessings-of-the-great-cat-spirit",
        },
        {
            priority = 960,
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98396-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98396-the-great-cat-spirit",
        },
        {
            priority = 970,
            id = "woven-class-druid-objective-98396-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-98396-the-great-cat-spirit" },
            classAction = "objective-98396-quest-work",
        },
        {
            priority = 980,
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98396-the-great-cat-spirit", "woven-class-druid-objective-98396-quest-work" },
            id = "woven-class-druid-turnin-98396-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98396-the-great-cat-spirit",
        },
        {
            priority = 990,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98394-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98394-the-great-cat-spirit",
        },
        {
            priority = 1000,
            route = {
                { y = 0.75, mapID = 1450, label = "Great Cat Spirit", x = 0.546, offMapText = "Travel to Great Cat Spirit in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98394-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98394-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98394-the-great-cat-spirit",
        },
        {
            priority = 1010,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            id = "woven-class-druid-accept-98393-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98393-the-great-cat-spirit",
        },
        {
            priority = 1020,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98393-the-great-cat-spirit" },
            id = "woven-class-druid-turnin-98393-the-great-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98393-the-great-cat-spirit",
        },
        {
            priority = 1030,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-98341-the-great-windborne-cat-spirit",
        },
        {
            priority = 1040,
            route = {
                { y = 0.734, mapID = 1450, label = "Avatar of Saeyleenan", x = 0.44, offMapText = "Travel to Avatar of Saeyleenan in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-98341-the-great-windborne-cat-spirit" },
            id = "woven-class-druid-turnin-98341-the-great-windborne-cat-spirit",
            conditions = {
                all = {
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98341-the-great-windborne-cat-spirit",
        },
        {
            id = "level-before-woven-class-paladin-accept-1655-bailors-ore-shipment",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1655,
            priority = 1050,
        },
        {
            priority = 1060,
            route = {
                { y = 0.45, mapID = 1432, label = "Bailor Stonehand", x = 0.36, offMapText = "Travel to Bailor Stonehand in Loch Modan." },
            },
            id = "woven-class-paladin-accept-1655-bailors-ore-shipment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1655-bailors-ore-shipment",
        },
        {
            priority = 1070,
            id = "woven-class-paladin-objective-1655-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-paladin-accept-1655-bailors-ore-shipment" },
            classAction = "objective-1655-quest-work",
        },
        {
            priority = 1080,
            route = {
                { y = 0.45, mapID = 1432, label = "Bailor Stonehand", x = 0.36, offMapText = "Travel to Bailor Stonehand in Loch Modan." },
            },
            dependsOn = { "woven-class-paladin-accept-1655-bailors-ore-shipment", "woven-class-paladin-objective-1655-quest-work" },
            id = "woven-class-paladin-turnin-1655-bailors-ore-shipment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1655-bailors-ore-shipment",
        },
        {
            priority = 1090,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-turnin-1793-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1793-the-tome-of-valor",
        },
        {
            priority = 1100,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "woven-class-paladin-accept-1794-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1794-the-tome-of-valor",
        },
        {
            priority = 1110,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1794-the-tome-of-valor" },
            id = "woven-class-paladin-turnin-1794-the-tome-of-valor",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1794-the-tome-of-valor",
        },
        {
            id = "level-before-accept-947-cave-mushrooms",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 947,
            priority = 1120,
        },
        {
            priority = 1130,
            route = {
                { y = 0.4364, mapID = 1439, label = "Barithras Moonshade", offMapText = "Travel to Barithras Moonshade in Darkshore.", x = 0.3732 },
            },
            text = "Accept Cave Mushrooms from Barithras Moonshade.",
            id = "accept-947-cave-mushrooms",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 947, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-3765-the-corruption-abroad",
            kind = "note",
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 3765,
            priority = 1140,
        },
        {
            priority = 1150,
            route = {
                { y = 0.4304, mapID = 1439, label = "Gershala Nightwhisper", offMapText = "Travel to Gershala Nightwhisper in Darkshore.", x = 0.3833 },
            },
            text = "Turn in The Corruption Abroad to Gershala Nightwhisper.",
            id = "turnin-3765-the-corruption-abroad",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3765, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1160,
            route = {
                { y = 0.4342, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            text = "Accept Tharnariun's Hope from Tharnariun Treetender.",
            id = "accept-2139-tharnariun-s-hope",
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
                quest = { id = 2139, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2138 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1170,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Accept A Lost Master from Terenthis.",
            id = "accept-986-a-lost-master",
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
                quest = { id = 986, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 985 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1180,
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            text = "Accept The Blackwood Corrupted from Thundris Windweaver.",
            id = "accept-4763-the-blackwood-corrupted",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4763, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1190,
            route = {
                { y = 0.4184, mapID = 1439, label = "Archaeologist Hollee", offMapText = "Travel to Archaeologist Hollee in Darkshore.", x = 0.3744 },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee.",
            id = "accept-729-the-absent-minded-prospector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 729, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1200,
            route = {
                { y = 0.2458, mapID = 1439, label = "Buzzbox 525", offMapText = "Travel to Buzzbox 525.", x = 0.5128 },
            },
            text = "Accept Buzzbox 525.",
            id = "accept-1003-buzzbox-525",
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
                quest = { id = 1003, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1002 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1210,
            route = {
                { y = 0.1348, mapID = 1439, label = "Gelkak Gyromast", offMapText = "Travel to Gelkak Gyromast in Darkshore.", x = 0.5665 },
            },
            text = "Accept Gyromast's Retrieval from Gelkak Gyromast.",
            id = "accept-2098-gyromast-s-retrieval",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2098, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1220,
            text = "Collect 1 Middle of Gelkak's Key.",
            route = {
                { y = 0.1216, mapID = 1439, label = "Greymist Tidehunter", offMapText = "Travel to Greymist Tidehunter.", x = 0.5495 },
            },
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            id = "objective-2098-2-greymist-tidehunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2098, text = "Greymist Tidehunter", index = 2, count = 1 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2098-3-bottom-of-gelkak-s-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Bottom of Gelkak's Key.",
            complete = {
                questObjective = { id = 2098, index = 3, text = "Bottom of Gelkak's Key", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.5539999999999999, y = 0.17, label = "Bottom of Gelkak's Key", offMapText = "Travel to Bottom of Gelkak's Key." },
            },
            sourceStep = 11,
            priority = 1230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
        },
        {
            priority = 1240,
            text = "Collect 1 Top of Gelkak's Key.",
            route = {
                { y = 0.146, mapID = 1439, label = "Giant Foreststrider", offMapText = "Travel to Giant Foreststrider.", x = 0.584 },
            },
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            id = "objective-2098-1-giant-foreststrider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2098, text = "Giant Foreststrider", index = 1, count = 1 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-986-1-fine-moonstalker-pelt",
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
            text = "Collect 5 Fine Moonstalker Pelt.",
            complete = {
                questObjective = { id = 986, index = 1, text = "Fine Moonstalker Pelt", count = 5 },
            },
            route = {
                { mapID = 1439, x = 0.594, y = 0.124, label = "Fine Moonstalker Pelt", offMapText = "Travel to Fine Moonstalker Pelt." },
            },
            sourceStep = 13,
            priority = 1250,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 985 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-986-a-lost-master" },
        },
        {
            priority = 1260,
            text = "Turn in Gyromast's Retrieval to Gelkak Gyromast.",
            route = {
                { y = 0.1348, mapID = 1439, label = "Gelkak Gyromast", offMapText = "Travel to Gelkak Gyromast in Darkshore.", x = 0.5665 },
            },
            dependsOn = {
                "accept-2098-gyromast-s-retrieval",
                "objective-2098-2-greymist-tidehunter",
                "objective-2098-3-bottom-of-gelkak-s-key",
                "objective-2098-1-giant-foreststrider",
            },
            id = "turnin-2098-gyromast-s-retrieval",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2098, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-6122-1-empty-cliffspring-falls-sampler",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 4, 95 },
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
            checkpointQuest = 6122,
            priority = 1270,
        },
        {
            priority = 1280,
            route = {
                { y = 0.3332, mapID = 1439, label = "Empty Cliffspring Falls Sampler", offMapText = "Travel to Empty Cliffspring Falls Sampler.", x = 0.5493 },
            },
            text = "Collect 1 Filled Cliffspring Falls Sampler.",
            id = "objective-6122-1-empty-cliffspring-falls-sampler",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6122, text = "Empty Cliffspring Falls Sampler", index = 1, count = 1 },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-947-2-death-cap",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Death Cap.",
            complete = {
                questObjective = { id = 947, index = 2, text = "Death Cap", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.5575, y = 0.3619, label = "Death Cap", offMapText = "Travel to Death Cap." },
            },
            sourceStep = 16,
            priority = 1290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-947-cave-mushrooms" },
        },
        {
            id = "objective-947-1-scaber-stalk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Scaber Stalk.",
            complete = {
                questObjective = { id = 947, index = 1, text = "Scaber Stalk", count = 5 },
            },
            route = {
                { mapID = 1439, x = 0.5497, y = 0.3337, label = "Scaber Stalk", offMapText = "Travel to Scaber Stalk." },
            },
            sourceStep = 17,
            priority = 1300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-947-cave-mushrooms" },
        },
        {
            priority = 1310,
            text = "Use the Empty Cleansing Bowl at the moonwell in Auberdine to fill it.",
            route = {
                { mapID = 1439, x = 0.3778, y = 0.44020000000000004, label = "Auberdine moonwell", offMapText = "Travel to Auberdine moonwell." },
            },
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            id = "objective-4763-1-empty-cleansing-bowl",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Filled Cleansing Bowl", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4763, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 22,
            sourceInstructionIndex = 1,
            checkpointQuest = 4763,
            instructionOnly = true,
            rememberPreparation = 4763,
        },
        {
            priority = 1320,
            text = "Open the Blackwood Fruit Stores at the Blackwood camp and take 1 Blackwood Fruit Sample. Expect an attack.",
            route = {
                { mapID = 1439, x = 0.5287, y = 0.33380000000000004, label = "Blackwood Fruit Sample", offMapText = "Travel to Blackwood Fruit Sample." },
            },
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            id = "collect-4763-blackwood-fruit-sample",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Blackwood Fruit Sample", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4763, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 22,
            sourceInstructionIndex = 1,
            checkpointQuest = 4763,
            instructionOnly = true,
            rememberPreparation = 4763,
        },
        {
            priority = 1330,
            text = "Open the Blackwood Grain Stores at the Blackwood camp and take 1 Blackwood Grain Sample. Expect an attack.",
            route = {
                { mapID = 1439, x = 0.5067, y = 0.34990000000000004, label = "Blackwood Grain Sample", offMapText = "Travel to Blackwood Grain Sample." },
            },
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            id = "collect-4763-blackwood-grain-sample",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Blackwood Grain Sample", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4763, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 22,
            sourceInstructionIndex = 1,
            checkpointQuest = 4763,
            instructionOnly = true,
            rememberPreparation = 4763,
        },
        {
            priority = 1340,
            text = "Open the Blackwood Nut Stores at the Blackwood camp and take 1 Blackwood Nut Sample. Expect an attack.",
            route = {
                { mapID = 1439, x = 0.5183, y = 0.3356, label = "Blackwood Nut Sample", offMapText = "Travel to Blackwood Nut Sample." },
            },
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            id = "collect-4763-blackwood-nut-sample",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Blackwood Nut Sample", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4763, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 22,
            sourceInstructionIndex = 1,
            checkpointQuest = 4763,
            instructionOnly = true,
            rememberPreparation = 4763,
        },
        {
            priority = 1350,
            text = "With the Filled Cleansing Bowl and all three Blackwood samples in your bags, use the bowl at the bonfire. Kill Xabraxxis, then open his Demon Bag on the ground to collect the Talisman of Corruption.",
            route = {
                { mapID = 1439, x = 0.5241, y = 0.3344, label = "Blackwood bonfire", offMapText = "Travel to Blackwood bonfire." },
            },
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            id = "objective-4763-1-filled-cleansing-bowl",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4763, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Turn in The Principal Source to Alanndarian Nightsong.",
            route = {
                { y = 0.4066, mapID = 1439, label = "Alanndarian Nightsong", offMapText = "Travel to Alanndarian Nightsong in Darkshore.", x = 0.3769 },
            },
            dependsOn = { "objective-6122-1-empty-cliffspring-falls-sampler" },
            id = "turnin-6122-the-principal-source",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 4, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6122, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6123-gathering-the-cure",
        },
        {
            priority = 1380,
            dependsOn = { "woven-class-druid-accept-6123-gathering-the-cure" },
            id = "woven-class-druid-objective-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-6123-gathering-the-cure",
        },
        {
            priority = 1390,
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = { "woven-class-druid-accept-6123-gathering-the-cure", "woven-class-druid-objective-6123-gathering-the-cure" },
            id = "woven-class-druid-turnin-6123-gathering-the-cure",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6123-gathering-the-cure",
        },
        {
            priority = 1400,
            route = {
                { y = 0.406, mapID = 1439, label = "Alanndarian Nightsong", x = 0.376, offMapText = "Travel to Alanndarian Nightsong in Darkshore." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6124-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6124-curing-the-sick",
        },
        {
            priority = 1410,
            id = "woven-class-druid-objective-6124-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-6124-curing-the-sick" },
            classAction = "objective-6124-quest-work",
        },
        {
            priority = 1420,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-6124-curing-the-sick", "woven-class-druid-objective-6124-quest-work" },
            id = "woven-class-druid-turnin-6124-curing-the-sick",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6124-curing-the-sick",
        },
        {
            priority = 1430,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6125-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6125-power-over-poison",
        },
        {
            priority = 1440,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-6125-power-over-poison" },
            id = "woven-class-druid-turnin-6125-power-over-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6125-power-over-poison",
        },
        {
            priority = 1450,
            text = "Turn in The Blackwood Corrupted to Thundris Windweaver.",
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            dependsOn = {
                "accept-4763-the-blackwood-corrupted",
                "objective-4763-1-empty-cleansing-bowl",
                "objective-4763-1-filled-cleansing-bowl",
            },
            id = "turnin-4763-the-blackwood-corrupted",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4763, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1460,
            text = "Turn in Cave Mushrooms to Barithras Moonshade.",
            route = {
                { y = 0.4364, mapID = 1439, label = "Barithras Moonshade", offMapText = "Travel to Barithras Moonshade in Darkshore.", x = 0.3732 },
            },
            dependsOn = { "accept-947-cave-mushrooms", "objective-947-2-death-cap", "objective-947-1-scaber-stalk" },
            id = "turnin-947-cave-mushrooms",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 947, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1470,
            route = {
                { y = 0.4364, mapID = 1439, label = "Barithras Moonshade", offMapText = "Travel to Barithras Moonshade in Darkshore.", x = 0.3732 },
            },
            text = "Accept Onu from Barithras Moonshade.",
            id = "accept-948-onu",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 948, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1480,
            route = {
                { y = 0.4423, mapID = 1439, label = "WANTED: Murkdeep!", offMapText = "Travel to WANTED: Murkdeep!.", x = 0.3723 },
            },
            text = "Accept WANTED: Murkdeep!.",
            id = "accept-4740-wanted-murkdeep",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4740, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1490,
            text = "For Tharnariun's Hope: Find and kill the Den Mother.",
            id = "objective-2139-quest-work",
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
                quest = { id = 2139, state = "complete" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2138 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2139-tharnariun-s-hope" },
        },
        {
            priority = 1500,
            text = "Turn in Tharnariun's Hope to Tharnariun Treetender.",
            route = {
                { y = 0.4341, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            dependsOn = { "accept-2139-tharnariun-s-hope", "objective-2139-quest-work" },
            id = "turnin-2139-tharnariun-s-hope",
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
                quest = { id = 2139, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2138 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
            text = "Turn in A Lost Master to Terenthis.",
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            dependsOn = { "accept-986-a-lost-master", "objective-986-1-fine-moonstalker-pelt" },
            id = "turnin-986-a-lost-master",
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
                quest = { id = 986, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 985 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Accept A Lost Master from Terenthis.",
            id = "accept-993-a-lost-master",
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
                quest = { id = 993, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 986 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-952-grove-of-the-ancients",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 4 },
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
            checkpointQuest = 952,
            priority = 1530,
        },
        {
            priority = 1540,
            route = {
                { y = 0.7629, mapID = 1439, label = "Onu", offMapText = "Travel to Onu in Darkshore.", x = 0.4355 },
            },
            text = "Turn in Grove of the Ancients to Onu.",
            id = "turnin-952-grove-of-the-ancients",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 952, state = "completed" },
            },
            sourceStep = 30,
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
            priority = 1550,
            text = "Turn in Onu to Onu.",
            route = {
                { y = 0.7629, mapID = 1439, label = "Onu", offMapText = "Travel to Onu in Darkshore.", x = 0.4355 },
            },
            dependsOn = { "accept-948-onu" },
            id = "turnin-948-onu",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 948, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1560,
            route = {
                { y = 0.7629, mapID = 1439, label = "Onu", offMapText = "Travel to Onu in Darkshore.", x = 0.4355 },
            },
            text = "Accept The Master's Glaive from Onu.",
            id = "accept-944-the-master-s-glaive",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 944, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 948 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1570,
            text = "Kill Murkdeep.",
            route = {
                { y = 0.7659, mapID = 1439, label = "Greymist Warrior", offMapText = "Travel to Greymist Warrior.", x = 0.3651 },
            },
            dependsOn = { "accept-4740-wanted-murkdeep" },
            id = "objective-4740-1-greymist-warrior",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4740, text = "Greymist Warrior", index = 1 },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1580,
            route = {
                { y = 0.8082, mapID = 1439, label = "Beached Sea Creature", offMapText = "Travel to Beached Sea Creature.", x = 0.3273 },
            },
            text = "Accept Beached Sea Creature.",
            id = "accept-4730-beached-sea-creature",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4730, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
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
                { y = 0.837, mapID = 1439, label = "Beached Sea Turtle", offMapText = "Travel to Beached Sea Turtle.", x = 0.317 },
            },
            text = "Accept Beached Sea Turtle.",
            id = "accept-4731-beached-sea-turtle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4731, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1600,
            route = {
                { y = 0.8554, mapID = 1439, label = "Beached Sea Turtle", offMapText = "Travel to Beached Sea Turtle.", x = 0.3127 },
            },
            text = "Accept Beached Sea Turtle.",
            id = "accept-4732-beached-sea-turtle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4732, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1610,
            route = {
                { y = 0.8754, mapID = 1439, label = "Beached Sea Creature", offMapText = "Travel to Beached Sea Creature.", x = 0.3129 },
            },
            text = "Accept Beached Sea Creature.",
            id = "accept-4733-beached-sea-creature",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4733, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            text = "Turn in The Absent Minded Prospector to Prospector Remtravel.",
            route = {
                { y = 0.837, mapID = 1439, label = "Prospector Remtravel", offMapText = "Travel to Prospector Remtravel in Darkshore.", x = 0.3573 },
            },
            dependsOn = { "accept-729-the-absent-minded-prospector" },
            id = "turnin-729-the-absent-minded-prospector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 729, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1630,
            route = {
                { y = 0.837, mapID = 1439, label = "Prospector Remtravel", offMapText = "Travel to Prospector Remtravel in Darkshore.", x = 0.3573 },
            },
            text = "Accept The Absent Minded Prospector from Prospector Remtravel.",
            id = "accept-731-the-absent-minded-prospector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 731, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 729 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-731-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Prospector Remtravel through the excavation. Defeat the three trogg ambushes and keep him alive until the quest reports completion.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 729 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 731, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1439, x = 0.35729999999999995, y = 0.8370000000000001, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 39,
            dependsOn = { "accept-731-the-absent-minded-prospector" },
            priority = 1640,
        },
        {
            priority = 1650,
            text = "Turn in The Master's Glaive.",
            route = {
                { y = 0.8617, mapID = 1439, label = "The Master's Glaive", offMapText = "Travel to The Master's Glaive.", x = 0.3853 },
            },
            dependsOn = { "accept-944-the-master-s-glaive" },
            id = "turnin-944-the-master-s-glaive",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 944, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 948 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1660,
            route = {
                { y = 0.8617, mapID = 1439, label = "The Twilight Camp", offMapText = "Travel to The Twilight Camp.", x = 0.3853 },
            },
            text = "Accept The Twilight Camp.",
            id = "accept-949-the-twilight-camp",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 949, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 944 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1670,
            text = "Turn in The Twilight Camp.",
            route = {
                { y = 0.8605, mapID = 1439, label = "The Twilight Camp", offMapText = "Travel to The Twilight Camp.", x = 0.3854 },
            },
            dependsOn = { "accept-949-the-twilight-camp" },
            id = "turnin-949-the-twilight-camp",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 949, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 944 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1680,
            route = {
                { y = 0.8605, mapID = 1439, label = "Return to Onu", offMapText = "Travel to Onu.", x = 0.3854 },
            },
            text = "Accept Return to Onu.",
            id = "accept-950-return-to-onu",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 950, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 949 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1690,
            route = {
                { y = 0.8734, mapID = 1439, label = "Therylune", offMapText = "Travel to Therylune in Darkshore.", x = 0.3864 },
            },
            text = "Accept Therylune's Escape from Therylune.",
            id = "accept-945-therylune-s-escape",
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
                quest = { id = 945, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-968-the-powers-below",
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
            text = "Loot Book: The Powers Below. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Book: The Powers Below", minCount = 1 },
                    },
                    {
                        quest = { id = 968, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 1700,
        },
        {
            id = "objective-945-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Therylune away from the Master's Glaive until she reaches safety.",
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
            requiredQuests = {},
            complete = {
                quest = { id = 945, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1439, x = 0.40509999999999996, y = 0.8709, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 45,
            dependsOn = { "accept-945-therylune-s-escape" },
            priority = 1710,
        },
        {
            priority = 1720,
            text = "Use the Book: The Powers Below to accept The Powers Below.",
            id = "accept-968-the-powers-below",
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
                quest = { id = 968, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1730,
            text = "Turn in A Lost Master to Volcor.",
            route = {
                { y = 0.853, mapID = 1439, label = "Volcor", offMapText = "Travel to Volcor in Darkshore.", x = 0.4501 },
            },
            dependsOn = { "accept-993-a-lost-master" },
            id = "turnin-993-a-lost-master",
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
                quest = { id = 993, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 986 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1740,
            route = {
                { y = 0.853, mapID = 1439, label = "Volcor", offMapText = "Travel to Volcor in Darkshore.", x = 0.4501 },
            },
            text = "Accept Escape Through Stealth from Volcor.",
            id = "accept-995-escape-through-stealth",
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
                quest = { id = 995, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 993 },
                    conditions = {},
                },
            },
            alternativeQuests = { 994 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            route = {
                { y = 0.853, mapID = 1439, label = "Volcor", offMapText = "Travel to Volcor in Darkshore.", x = 0.4501 },
            },
            text = "Accept Escape Through Force from Volcor.",
            id = "accept-994-escape-through-force",
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
                quest = { id = 994, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 993 },
                    conditions = {},
                },
            },
            alternativeQuests = { 995 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-994-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Volcor until he reaches the road. Let enemies attack him first so he stops to help you fight.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 993 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 994, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            alternativeQuests = { 995 },
            route = {
                { mapID = 1439, x = 0.41950000000000004, y = 0.818, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 48,
            dependsOn = { "accept-994-escape-through-force" },
            priority = 1760,
        },
        {
            id = "objective-1003-1-grizzled-scalp",
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
            text = "Collect 4 Grizzled Scalp.",
            complete = {
                questObjective = { id = 1003, index = 1, text = "Grizzled Scalp", count = 4 },
            },
            route = {
                { mapID = 1439, x = 0.4, y = 0.8, label = "Grizzled Scalp", offMapText = "Travel to Grizzled Scalp." },
            },
            sourceStep = 49,
            priority = 1770,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1002 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1003-buzzbox-525" },
        },
        {
            priority = 1780,
            text = "Turn in Buzzbox 525.",
            route = {
                { y = 0.8056, mapID = 1439, label = "Buzzbox 525", offMapText = "Travel to Buzzbox 525.", x = 0.414 },
            },
            dependsOn = { "accept-1003-buzzbox-525", "objective-1003-1-grizzled-scalp" },
            id = "turnin-1003-buzzbox-525",
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
                quest = { id = 1003, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1002 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1790,
            text = "Turn in Return to Onu to Onu.",
            route = {
                { y = 0.7629, mapID = 1439, label = "Onu", offMapText = "Travel to Onu in Darkshore.", x = 0.4356 },
            },
            dependsOn = { "accept-950-return-to-onu" },
            id = "turnin-950-return-to-onu",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 950, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 949 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1800,
            route = {
                { y = 0.7643, mapID = 1439, label = "Kerlonian Evershade", offMapText = "Travel to Kerlonian Evershade in Darkshore.", x = 0.4439 },
            },
            text = "Accept The Sleeper Has Awakened from Kerlonian Evershade.",
            id = "accept-5321-the-sleeper-has-awakened",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5321, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1810,
            text = "Collect 1 Horn of Awakening.",
            route = {
                { y = 0.7631, mapID = 1439, label = "Kerlonian's Chest", offMapText = "Travel to Kerlonian's Chest.", x = 0.4438 },
            },
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            id = "objective-5321-1-kerlonian-s-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5321, text = "Kerlonian's Chest", index = 1, count = 1 },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5321-reviewed-escort",
            kind = "objective",
            text = "Escort Kerlonian Evershade to Maestra's Post. Stay close and use the Horn of Awakening whenever he falls asleep. Protect him from attackers; the quest is timed.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                quest = { id = 5321, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1440, x = 0.2685, y = 0.36729999999999996, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 54,
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            priority = 1820,
        },
        {
            priority = 1830,
            text = "Turn in The Sleeper Has Awakened to Liladris Moonriver.",
            route = {
                { y = 0.3558, mapID = 1440, label = "Liladris Moonriver", offMapText = "Travel to Liladris Moonriver in Ashenvale.", x = 0.2726 },
            },
            dependsOn = {
                "accept-5321-the-sleeper-has-awakened",
                "objective-5321-1-kerlonian-s-chest",
                "objective-5321-reviewed-escort",
            },
            id = "turnin-5321-the-sleeper-has-awakened",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5321, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-98042-authored-pickup",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 98042,
            priority = 1840,
        },
        {
            priority = 1850,
            text = "Read the Twilight Tome at the Master's Glaive in Darkshore to accept It's All Fun and Games Until....",
            id = "accept-98042-authored-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98042, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
            route = {
                { mapID = 1439, x = 0.3854, y = 0.8605, label = "Twilight Tome", offMapText = "Travel to the Master's Glaive in Darkshore." },
            },
        },
        {
            priority = 1860,
            text = "For It's All Fun and Games Until...: Obtain a Peerless Eye from a Twilight Disciple or Thug at the Master's Glaive in Darkshore and find someone in Auberdine who is willing to take it.",
            id = "objective-98042-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98042, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-98042-authored-pickup" },
        },
        {
            priority = 1870,
            route = {
                { y = 0.402, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver.", x = 0.374 },
            },
            text = "Turn in It's All Fun and Games Until... to Thundris Windweaver in Auberdine if a Twilight cultist dropped a Peerless Eye.",
            id = "woven-turnin-98042-its-all-fun-and-games",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98042, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-98042-quest-work", "accept-98042-authored-pickup" },
        },
        {
            priority = 1880,
            route = {
                { y = 0.764, mapID = 1439, label = "Arbal", offMapText = "Travel to Arbal.", x = 0.436 },
            },
            text = "Accept Swelling Forces from Arbal at the Grove of the Ancients.",
            id = "woven-accept-98013-swelling-forces",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98013, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-98028-authored-pickup",
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
            text = "Loot Clouded Water Globe from Baron Marinous. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Clouded Water Globe", minCount = 1 },
                    },
                    {
                        quest = { id = 98028, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1439, x = 0.5901, y = 0.2291, label = "Baron Marinous", offMapText = "Travel to Baron Marinous." },
            },
            dependsOn = {},
            priority = 1890,
        },
        {
            id = "level-before-accept-98028-authored-pickup",
            kind = "note",
            text = "Reach level 17 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 98028,
            priority = 1900,
        },
        {
            priority = 1910,
            text = "Use the Clouded Water Globe to accept Baron Marinous.",
            id = "accept-98028-authored-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98028, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1920,
            route = {
                { y = 0.764, mapID = 1439, label = "Onu", offMapText = "Travel to Onu.", x = 0.436 },
            },
            text = "Turn in Baron Marinous to Onu at the Grove of the Ancients if you have the Clouded Water Globe.",
            id = "woven-turnin-98028-baron-marinous",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98028, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-98028-authored-pickup" },
        },
        {
            id = "level-before-woven-accept-98461-unrequited-love",
            kind = "note",
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 98461,
            priority = 1930,
        },
        {
            priority = 1940,
            route = {
                { y = 0.4188, mapID = 1439, label = "Archaeologist Hollee", offMapText = "Travel to Archaeologist Hollee.", x = 0.3746 },
            },
            text = "Accept Unrequited Love from Archaeologist Hollee in Auberdine. Wetlands turns Hollee's Note in to Tarrel Rockweaver.",
            id = "woven-accept-98461-unrequited-love",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98461, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1950,
            route = {
                { y = 0.212, mapID = 1439, label = "Stormscale Myrmidon", offMapText = "Travel to Stormscale Myrmidon.", x = 0.584 },
                { y = 0.204, mapID = 1439, label = "Stormscale Sorceress", offMapText = "Travel to Stormscale Sorceress.", x = 0.586 },
                { y = 0.198, mapID = 1439, label = "Stormscale Warrior", offMapText = "Travel to Stormscale Warrior.", x = 0.612 },
            },
            text = "Swelling Forces: slay 12 Stormscale Myrmidons, 8 Stormscale Sorceresses, and 6 Stormscale Warriors.",
            id = "woven-objective-98013-swelling-forces",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98013, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98013-swelling-forces" },
        },
        {
            priority = 1960,
            route = {
                { y = 0.764, mapID = 1439, label = "Arbal", offMapText = "Travel to Arbal.", x = 0.436 },
            },
            text = "Turn in Swelling Forces to Arbal at the Grove of the Ancients.",
            id = "woven-turnin-98013-swelling-forces",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98013, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98013-swelling-forces", "woven-objective-98013-swelling-forces" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
