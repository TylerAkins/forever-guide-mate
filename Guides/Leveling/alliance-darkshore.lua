local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Darkshore",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-darkshore",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 15 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-rogue-accept-2300-si-7",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
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
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2300,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.658, mapID = 1429, label = "Keryn Sylvius", x = 0.438, offMapText = "Travel to Keryn Sylvius in Elwynn Forest." },
            },
            id = "woven-class-rogue-accept-2300-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2300-si-7",
        },
        {
            priority = 30,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "woven-class-rogue-accept-2300-si-7" },
            id = "woven-class-rogue-turnin-2300-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2300-si-7",
        },
        {
            priority = 40,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-2298-kingly-shakedown",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2298-kingly-shakedown",
        },
        {
            priority = 50,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "woven-class-rogue-accept-2298-kingly-shakedown" },
            id = "woven-class-rogue-turnin-2298-kingly-shakedown",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2298-kingly-shakedown",
        },
        {
            priority = 60,
            route = {
                { y = 0.526, mapID = 1426, label = "Hogral Bakkan", x = 0.476, offMapText = "Travel to Hogral Bakkan in Dun Morogh." },
            },
            id = "woven-class-rogue-accept-2299-to-hulfdan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2299-to-hulfdan",
        },
        {
            priority = 70,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "woven-class-rogue-accept-2299-to-hulfdan" },
            id = "woven-class-rogue-turnin-2299-to-hulfdan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2299-to-hulfdan",
        },
        {
            priority = 80,
            route = {
                { y = 0.256, mapID = 1457, label = "Erion Shadewhisper", x = 0.346, offMapText = "Travel to Erion Shadewhisper in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-2260-erions-behest",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2260-erions-behest",
        },
        {
            priority = 90,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "woven-class-rogue-accept-2260-erions-behest" },
            id = "woven-class-rogue-turnin-2260-erions-behest",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2260-erions-behest",
        },
        {
            priority = 100,
            route = {
                { y = 0.6, mapID = 1438, label = "Jannok Breezesong", x = 0.562, offMapText = "Travel to Jannok Breezesong in Teldrassil." },
            },
            id = "woven-class-rogue-accept-2259-erion-shadewhisper",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2259-erion-shadewhisper",
        },
        {
            priority = 110,
            route = {
                { y = 0.256, mapID = 1457, label = "Erion Shadewhisper", x = 0.346, offMapText = "Travel to Erion Shadewhisper in Darnassus." },
            },
            dependsOn = { "woven-class-rogue-accept-2259-erion-shadewhisper" },
            id = "woven-class-rogue-turnin-2259-erion-shadewhisper",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2259-erion-shadewhisper",
        },
        {
            id = "level-before-woven-class-mage-accept-1920-investigate-the-blue-recluse",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 7 },
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
            checkpointQuest = 1920,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1920-investigate-the-blue-recluse",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1920-investigate-the-blue-recluse",
        },
        {
            priority = 140,
            id = "woven-class-mage-objective-1920-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1920-investigate-the-blue-recluse" },
            classAction = "objective-1920-quest-work",
        },
        {
            priority = 150,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1920-investigate-the-blue-recluse", "woven-class-mage-objective-1920-quest-work" },
            id = "woven-class-mage-turnin-1920-investigate-the-blue-recluse",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1920-investigate-the-blue-recluse",
        },
        {
            priority = 160,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1921-gathering-materials",
        },
        {
            priority = 170,
            dependsOn = { "woven-class-mage-accept-1921-gathering-materials" },
            id = "woven-class-mage-objective-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1921-gathering-materials",
        },
        {
            priority = 180,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1921-gathering-materials", "woven-class-mage-objective-1921-gathering-materials" },
            id = "woven-class-mage-turnin-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1921-gathering-materials",
        },
        {
            priority = 190,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1941-manaweave-robe",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1941-manaweave-robe",
        },
        {
            priority = 200,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1941-manaweave-robe" },
            id = "woven-class-mage-turnin-1941-manaweave-robe",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1941-manaweave-robe",
        },
        {
            priority = 210,
            route = {
                { y = 0.084, mapID = 1455, label = "Dink", x = 0.268, offMapText = "Travel to Dink in Ironforge." },
            },
            id = "woven-class-mage-accept-1919-report-to-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1919-report-to-jennea",
        },
        {
            priority = 220,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1919-report-to-jennea" },
            id = "woven-class-mage-turnin-1919-report-to-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1919-report-to-jennea",
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
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 983,
            priority = 230,
        },
        {
            priority = 240,
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
            sourceStep = 1,
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
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2118,
            priority = 250,
        },
        {
            priority = 260,
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
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
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
            sourceStep = 3,
            requiredQuests = {},
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
            priority = 280,
        },
        {
            priority = 290,
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
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { y = 0.4493, mapID = 1439, label = "Gubber Blump", offMapText = "Travel to Gubber Blump in Darkshore.", x = 0.361 },
            },
            text = "Accept The Family and the Fishing Pole from Gubber Blump.",
            id = "accept-1141-the-family-and-the-fishing-pole",
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
                quest = { id = 1141, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "For The Family and the Fishing Pole: Catch 6 Darkshore Grouper for Gubber Blump in Auberdine. Keep 6 Darkshore Grouper for the later quest pickup.",
            id = "collect-before-pickup-objective-1141-quest-work",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                item = { name = "Darkshore Grouper", minCount = 6 },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
            referenceQuest = 1141,
        },
        {
            priority = 320,
            text = "Turn in The Family and the Fishing Pole to Gubber Blump.",
            route = {
                { y = 0.4493, mapID = 1439, label = "Gubber Blump", offMapText = "Travel to Gubber Blump in Darkshore.", x = 0.361 },
            },
            dependsOn = { "accept-1141-the-family-and-the-fishing-pole" },
            id = "turnin-1141-the-family-and-the-fishing-pole",
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
                quest = { id = 1141, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
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
            sourceStep = 12,
            priority = 330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3524-washed-ashore" },
        },
        {
            priority = 340,
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
            sourceStep = 13,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-983-buzzbox-827" },
        },
        {
            priority = 360,
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
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.4626, mapID = 1439, label = "Buzzbox 411", offMapText = "Travel to Buzzbox 411.", x = 0.3666 },
            },
            text = "Accept Buzzbox 411.",
            id = "accept-1001-buzzbox-411",
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
                quest = { id = 1001, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 983 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
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
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
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
            sourceStep = 19,
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
            priority = 400,
            route = {
                { y = 0.4371, mapID = 1439, label = "Cerellean Whiteclaw", offMapText = "Travel to Cerellean Whiteclaw in Darkshore.", x = 0.3574 },
            },
            text = "Accept For Love Eternal from Cerellean Whiteclaw.",
            id = "accept-963-for-love-eternal",
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
                quest = { id = 963, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
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
            sourceStep = 21,
            priority = 410,
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
            id = "objective-1001-1-thresher-eye",
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
            text = "Collect 3 Thresher Eye.",
            complete = {
                questObjective = { id = 1001, index = 1, text = "Thresher Eye", count = 3 },
            },
            route = {
                { mapID = 1439, x = 0.32, y = 0.434, label = "Thresher Eye", offMapText = "Travel to Thresher Eye." },
            },
            sourceStep = 22,
            priority = 420,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 983 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1001-buzzbox-411" },
        },
        {
            priority = 430,
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
            sourceStep = 23,
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
            priority = 440,
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
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.4342, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            text = "Accept Cleansing of the Infected from Tharnariun Treetender.",
            id = "accept-2138-cleansing-of-the-infected",
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
                quest = { id = 2138, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
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
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Accept How Big a Threat? from Terenthis.",
            id = "accept-985-how-big-a-threat",
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
                quest = { id = 985, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
            priority = 480,
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
            sourceStep = 25,
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
            priority = 490,
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
            sourceStep = 26,
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
            priority = 500,
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            text = "Accept The Cliffspring River from Thundris Windweaver.",
            id = "accept-4762-the-cliffspring-river",
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
                quest = { id = 4762, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
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
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            text = "Accept Tools of the Highborne from Thundris Windweaver.",
            id = "accept-958-tools-of-the-highborne",
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
                quest = { id = 958, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4811-the-red-crystal",
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
            checkpointQuest = 4811,
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.4339, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea in Darkshore.", x = 0.377 },
            },
            text = "Accept The Red Crystal from Sentinel Glynda Nal'Shea.",
            id = "accept-4811-the-red-crystal",
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
                quest = { id = 4811, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
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
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
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
            sourceStep = 31,
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
            priority = 570,
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
            sourceStep = 32,
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
            priority = 580,
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
            sourceStep = 33,
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
            priority = 590,
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
            sourceStep = 33,
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
            priority = 600,
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
            sourceStep = 34,
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
            priority = 610,
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
            sourceStep = 35,
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
            priority = 620,
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
            sourceStep = 35,
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
            priority = 630,
            route = {
                { y = 0.3155, mapID = 1439, label = "Beached Sea Creature", offMapText = "Travel to Beached Sea Creature.", x = 0.4188 },
            },
            text = "Accept Beached Sea Creature.",
            id = "accept-4723-beached-sea-creature",
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
                quest = { id = 4723, state = "activeOrCompleted" },
            },
            sourceStep = 36,
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
            priority = 640,
            text = "Turn in Buzzbox 411.",
            route = {
                { y = 0.2864, mapID = 1439, label = "Buzzbox 411", offMapText = "Travel to Buzzbox 411.", x = 0.4196 },
            },
            dependsOn = { "accept-1001-buzzbox-411", "objective-1001-1-thresher-eye" },
            id = "turnin-1001-buzzbox-411",
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
                quest = { id = 1001, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 983 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.2864, mapID = 1439, label = "Buzzbox 323", offMapText = "Travel to Buzzbox 323.", x = 0.4196 },
            },
            text = "Accept Buzzbox 323.",
            id = "accept-1002-buzzbox-323",
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
                quest = { id = 1002, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1001 },
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
                { y = 0.2064, mapID = 1439, label = "Beached Sea Turtle", offMapText = "Travel to Beached Sea Turtle.", x = 0.4421 },
            },
            text = "Accept Beached Sea Turtle.",
            id = "accept-4725-beached-sea-turtle",
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
                quest = { id = 4725, state = "activeOrCompleted" },
            },
            sourceStep = 38,
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
            id = "objective-1002-1-moonstalker-fang",
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
            text = "Collect 6 Moonstalker Fang.",
            complete = {
                questObjective = { id = 1002, index = 1, text = "Moonstalker Fang", count = 6 },
            },
            route = {
                { mapID = 1439, x = 0.484, y = 0.31, label = "Moonstalker Fang", offMapText = "Travel to Moonstalker Fang." },
            },
            sourceStep = 40,
            priority = 670,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1001 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1002-buzzbox-323" },
        },
        {
            id = "objective-2138-1-rabid-thistle-bear",
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
            text = "Kill 20 Rabid Thistle Bear.",
            complete = {
                questObjective = { id = 2138, index = 1, text = "Rabid Thistle Bear", count = 20 },
            },
            route = {
                { mapID = 1439, x = 0.506, y = 0.304, label = "Rabid Thistle Bear", offMapText = "Travel to Rabid Thistle Bear." },
            },
            sourceStep = 41,
            priority = 680,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2138-cleansing-of-the-infected" },
        },
        {
            priority = 690,
            text = "Turn in Buzzbox 323.",
            route = {
                { y = 0.2458, mapID = 1439, label = "Buzzbox 323", offMapText = "Travel to Buzzbox 323.", x = 0.5128 },
            },
            dependsOn = { "accept-1002-buzzbox-323", "objective-1002-1-moonstalker-fang" },
            id = "turnin-1002-buzzbox-323",
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
                quest = { id = 1002, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1001 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            text = "Use the Empty Sampling Tube in the water below the Cliffspring River waterfall to collect a river sample.",
            route = {
                { y = 0.255, mapID = 1439, label = "Empty Sampling Tube", offMapText = "Travel to Empty Sampling Tube.", x = 0.5084 },
            },
            dependsOn = { "accept-4762-the-cliffspring-river" },
            id = "objective-4762-1-empty-sampling-tube",
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
            complete = {
                questObjective = { id = 4762, text = "Empty Sampling Tube", index = 1, count = 1 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.1815, mapID = 1439, label = "Beached Sea Turtle", offMapText = "Travel to Beached Sea Turtle.", x = 0.5309 },
            },
            text = "Accept Beached Sea Turtle.",
            id = "accept-4727-beached-sea-turtle",
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
                quest = { id = 4727, state = "activeOrCompleted" },
            },
            sourceStep = 44,
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
            id = "level-before-accept-26-a-lesson-to-learn",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 26,
            priority = 720,
        },
        {
            priority = 730,
            route = {
                { y = 0.0839, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3537 },
            },
            text = "Accept A Lesson to Learn from Mathrengyl Bearwalker.",
            id = "accept-26-a-lesson-to-learn",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 26, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6121-lessons-anew",
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
            checkpointQuest = 6121,
            priority = 740,
        },
        {
            priority = 750,
            route = {
                { y = 0.0839, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3537 },
            },
            text = "Accept Lessons Anew from Mathrengyl Bearwalker.",
            id = "accept-6121-lessons-anew",
            kind = "accept",
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
                quest = { id = 6121, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            text = "Turn in A Lesson to Learn to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-26-a-lesson-to-learn" },
            id = "turnin-26-a-lesson-to-learn",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 26, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Trial of the Lake from Dendrite Starblaze.",
            id = "accept-29-trial-of-the-lake",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 29, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 26 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            text = "Turn in Lessons Anew to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-6121-lessons-anew" },
            id = "turnin-6121-lessons-anew",
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
                quest = { id = 6121, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept The Principal Source from Dendrite Starblaze.",
            id = "accept-6122-the-principal-source",
            kind = "accept",
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
                quest = { id = 6122, state = "activeOrCompleted" },
            },
            sourceStep = 47,
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
            id = "level-before-objective-29-1-shrine-bauble",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
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
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 29,
            priority = 800,
        },
        {
            priority = 810,
            text = "Use Shrine Bauble.",
            route = {
                { y = 0.4138, mapID = 1450, label = "Shrine Bauble", offMapText = "Travel to Shrine Bauble.", x = 0.3592 },
            },
            dependsOn = { "accept-29-trial-of-the-lake" },
            id = "objective-29-1-shrine-bauble",
            kind = "objective",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                questObjective = { id = 29, text = "Shrine Bauble", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 26 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            text = "Turn in Trial of the Lake to Tajarri.",
            route = {
                { y = 0.4011, mapID = 1450, label = "Tajarri", offMapText = "Travel to Tajarri in Moonglade.", x = 0.3651 },
            },
            dependsOn = { "accept-29-trial-of-the-lake", "objective-29-1-shrine-bauble" },
            id = "turnin-29-trial-of-the-lake",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 29, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 26 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 830,
            route = {
                { y = 0.4011, mapID = 1450, label = "Tajarri", offMapText = "Travel to Tajarri in Moonglade.", x = 0.3651 },
            },
            text = "Accept Trial of the Sea Lion from Tajarri.",
            id = "accept-272-trial-of-the-sea-lion",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 272, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 29 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.456, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4723-beached-sea-creature" },
            id = "turnin-4723-beached-sea-creature",
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
                quest = { id = 4723, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.456, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4725-beached-sea-turtle" },
            id = "turnin-4725-beached-sea-turtle",
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
                quest = { id = 4725, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.456, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4727-beached-sea-turtle" },
            id = "turnin-4727-beached-sea-turtle",
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
                quest = { id = 4727, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "For The Red Crystal: Travel east of Auberdine and look for a large, red crystal along Darkshore's eastern mountain range. Report back what you find to Sentinel Glynda Nal'Shea in Auberdine.",
            id = "objective-4811-quest-work",
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
                quest = { id = 4811, state = "complete" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4811-the-red-crystal" },
        },
        {
            priority = 880,
            text = "Turn in The Red Crystal to Sentinel Glynda Nal'Shea.",
            route = {
                { y = 0.4339, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea in Darkshore.", x = 0.3771 },
            },
            dependsOn = { "accept-4811-the-red-crystal", "objective-4811-quest-work" },
            id = "turnin-4811-the-red-crystal",
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
                quest = { id = 4811, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 890,
            route = {
                { y = 0.4339, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea in Darkshore.", x = 0.3771 },
            },
            text = "Accept As Water Cascades from Sentinel Glynda Nal'Shea.",
            id = "accept-4812-as-water-cascades",
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
                quest = { id = 4812, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4811 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            text = "Use the Empty Water Tube at the Auberdine moonwell to collect a Moonwell Water Tube.",
            route = {
                { y = 0.4405, mapID = 1439, label = "Empty Water Tube", offMapText = "Travel to Empty Water Tube.", x = 0.3779 },
            },
            dependsOn = { "accept-4812-as-water-cascades" },
            id = "objective-4812-1-empty-water-tube",
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
                questObjective = { id = 4812, text = "Empty Water Tube", index = 1, count = 1 },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4811 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
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
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            text = "For Easy Strider Living: Bring back 5 Strider Meat to Alanndarian Nightsong in Auberdine.",
            id = "objective-2178-quest-work",
            kind = "objective",
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
                quest = { id = 2178, state = "complete" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2178-easy-strider-living" },
        },
        {
            priority = 930,
            text = "Turn in Easy Strider Living to Alanndarian Nightsong.",
            route = {
                { y = 0.4066, mapID = 1439, label = "Alanndarian Nightsong", offMapText = "Travel to Alanndarian Nightsong in Darkshore.", x = 0.3769 },
            },
            dependsOn = { "accept-2178-easy-strider-living", "objective-2178-quest-work" },
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
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            text = "Turn in The Cliffspring River to Thundris Windweaver.",
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            dependsOn = { "accept-4762-the-cliffspring-river", "objective-4762-1-empty-sampling-tube" },
            id = "turnin-4762-the-cliffspring-river",
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
                quest = { id = 4762, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            text = "Turn in Cleansing of the Infected to Tharnariun Treetender.",
            route = {
                { y = 0.4341, mapID = 1439, label = "Tharnariun Treetender", offMapText = "Travel to Tharnariun Treetender in Darkshore.", x = 0.3884 },
            },
            dependsOn = { "accept-2138-cleansing-of-the-infected", "objective-2138-1-rabid-thistle-bear" },
            id = "turnin-2138-cleansing-of-the-infected",
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
                quest = { id = 2138, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            text = "Turn in As Water Cascades.",
            route = {
                { y = 0.4866, mapID = 1439, label = "As Water Cascades", offMapText = "Travel to As Water Cascades.", x = 0.4732 },
            },
            dependsOn = { "accept-4812-as-water-cascades", "objective-4812-1-empty-water-tube" },
            id = "turnin-4812-as-water-cascades",
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
                quest = { id = 4812, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4811 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 970,
            route = {
                { y = 0.4866, mapID = 1439, label = "The Fragments Within", offMapText = "Travel to The Fragments Within.", x = 0.4732 },
            },
            text = "Accept The Fragments Within.",
            id = "accept-4813-the-fragments-within",
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
                quest = { id = 4813, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4812 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 980,
            route = {
                { y = 0.5973, mapID = 1439, label = "Sentinel Tysha Moonblade", offMapText = "Travel to Sentinel Tysha Moonblade in Darkshore.", x = 0.403 },
            },
            text = "Accept The Fall of Ameth'Aran from Sentinel Tysha Moonblade.",
            id = "accept-953-the-fall-of-ameth-aran",
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
                quest = { id = 953, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-963-1-anaya-s-pendant",
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
            text = "Collect 1 Anaya's Pendant.",
            complete = {
                questObjective = { id = 963, index = 1, text = "Anaya's Pendant", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.424, y = 0.604, label = "Anaya's Pendant", offMapText = "Travel to Anaya's Pendant." },
            },
            sourceStep = 69,
            priority = 990,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-963-for-love-eternal" },
        },
        {
            id = "objective-958-1-highborne-relic",
            kind = "objective",
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
            text = "Collect 7 Highborne Relic.",
            complete = {
                questObjective = { id = 958, index = 1, text = "Highborne Relic", count = 7 },
            },
            route = {
                { mapID = 1439, x = 0.414, y = 0.604, label = "Highborne Relic", offMapText = "Travel to Highborne Relic." },
            },
            sourceStep = 70,
            priority = 1000,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-958-tools-of-the-highborne" },
        },
        {
            priority = 1010,
            text = "For The Fall of Ameth'Aran: Study the tablets which tell of Ameth'Aran and of its fall.",
            id = "objective-953-quest-work",
            kind = "objective",
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
                quest = { id = 953, state = "complete" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-953-the-fall-of-ameth-aran" },
        },
        {
            priority = 1020,
            text = "Turn in The Fall of Ameth'Aran to Sentinel Tysha Moonblade.",
            route = {
                { y = 0.5973, mapID = 1439, label = "Sentinel Tysha Moonblade", offMapText = "Travel to Sentinel Tysha Moonblade in Darkshore.", x = 0.403 },
            },
            dependsOn = { "accept-953-the-fall-of-ameth-aran", "objective-953-quest-work" },
            id = "turnin-953-the-fall-of-ameth-aran",
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
                quest = { id = 953, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            route = {
                { y = 0.7086, mapID = 1439, label = "Beached Sea Creature", offMapText = "Travel to Beached Sea Creature.", x = 0.3606 },
            },
            text = "Accept Beached Sea Creature.",
            id = "accept-4728-beached-sea-creature",
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
                quest = { id = 4728, state = "activeOrCompleted" },
            },
            sourceStep = 72,
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
            priority = 1040,
            route = {
                { y = 0.6216, mapID = 1439, label = "Beached Sea Turtle", offMapText = "Travel to Beached Sea Turtle.", x = 0.3714 },
            },
            text = "Accept Beached Sea Turtle.",
            id = "accept-4722-beached-sea-turtle",
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
                quest = { id = 4722, state = "activeOrCompleted" },
            },
            sourceStep = 73,
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
            priority = 1050,
            text = "Kill 5 Blackwood Windtalker.",
            route = {
                { y = 0.53, mapID = 1439, label = "Blackwood Windtalker", offMapText = "Travel to Blackwood Windtalker.", x = 0.396 },
            },
            dependsOn = { "accept-985-how-big-a-threat" },
            id = "objective-985-2-blackwood-windtalker",
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
                questObjective = { id = 985, text = "Blackwood Windtalker", index = 2, count = 5 },
            },
            sourceStep = 74,
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
            priority = 1060,
            text = "Kill 8 Blackwood Pathfinder.",
            route = {
                { y = 0.53, mapID = 1439, label = "Blackwood Pathfinder", offMapText = "Travel to Blackwood Pathfinder.", x = 0.396 },
            },
            dependsOn = { "accept-985-how-big-a-threat" },
            id = "objective-985-1-blackwood-pathfinder",
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
                questObjective = { id = 985, text = "Blackwood Pathfinder", index = 1, count = 8 },
            },
            sourceStep = 74,
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
            priority = 1070,
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.456, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4728-beached-sea-creature" },
            id = "turnin-4728-beached-sea-creature",
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
                quest = { id = 4728, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1080,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            route = {
                { y = 0.456, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            dependsOn = { "accept-4722-beached-sea-turtle" },
            id = "turnin-4722-beached-sea-turtle",
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
                quest = { id = 4722, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1138-fruit-of-the-sea",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1138,
            priority = 1090,
        },
        {
            priority = 1100,
            route = {
                { y = 0.4493, mapID = 1439, label = "Gubber Blump", offMapText = "Travel to Gubber Blump in Darkshore.", x = 0.3609 },
            },
            text = "Accept Fruit of the Sea from Gubber Blump.",
            id = "accept-1138-fruit-of-the-sea",
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
                quest = { id = 1138, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1110,
            text = "Turn in For Love Eternal to Cerellean Whiteclaw.",
            route = {
                { y = 0.4371, mapID = 1439, label = "Cerellean Whiteclaw", offMapText = "Travel to Cerellean Whiteclaw in Darkshore.", x = 0.3574 },
            },
            dependsOn = { "accept-963-for-love-eternal", "objective-963-1-anaya-s-pendant" },
            id = "turnin-963-for-love-eternal",
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
                quest = { id = 963, state = "completed" },
            },
            sourceStep = 77,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Turn in The Fragments Within to Sentinel Glynda Nal'Shea.",
            route = {
                { y = 0.4339, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea in Darkshore.", x = 0.3771 },
            },
            dependsOn = { "accept-4813-the-fragments-within" },
            id = "turnin-4813-the-fragments-within",
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
                quest = { id = 4813, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4812 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1130,
            text = "Turn in How Big a Threat? to Terenthis.",
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            dependsOn = { "accept-985-how-big-a-threat", "objective-985-2-blackwood-windtalker", "objective-985-1-blackwood-pathfinder" },
            id = "turnin-985-how-big-a-threat",
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
                quest = { id = 985, state = "completed" },
            },
            sourceStep = 79,
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
            priority = 1140,
            route = {
                { y = 0.4355, mapID = 1439, label = "Sentinel Elissa Starbreeze", offMapText = "Travel to Sentinel Elissa Starbreeze in Darkshore.", x = 0.3905 },
            },
            text = "Accept The Tower of Althalaxx from Sentinel Elissa Starbreeze.",
            id = "accept-965-the-tower-of-althalaxx",
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
                quest = { id = 965, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1150,
            route = {
                { y = 0.4117, mapID = 1439, label = "Gorbold Steelhand", offMapText = "Travel to Gorbold Steelhand in Darkshore.", x = 0.3811 },
            },
            text = "Accept Deep Ocean, Vast Sea from Gorbold Steelhand.",
            id = "accept-982-deep-ocean-vast-sea",
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
                quest = { id = 982, state = "activeOrCompleted" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1160,
            text = "Turn in Tools of the Highborne to Thundris Windweaver.",
            route = {
                { y = 0.4013, mapID = 1439, label = "Thundris Windweaver", offMapText = "Travel to Thundris Windweaver in Darkshore.", x = 0.374 },
            },
            dependsOn = { "accept-958-tools-of-the-highborne", "objective-958-1-highborne-relic" },
            id = "turnin-958-tools-of-the-highborne",
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
                quest = { id = 958, state = "completed" },
            },
            sourceStep = 82,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            text = "For Bashal'Aran: Destroy the Ancient Moonstone Seal at the ancient flame in Ameth'Aran.",
            id = "objective-957-quest-work",
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
                quest = { id = 957, state = "complete" },
            },
            sourceStep = 83,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 956 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-957-bashal-aran" },
        },
        {
            priority = 1180,
            text = "Turn in Bashal'Aran to Asterion.",
            route = {
                { y = 0.363, mapID = 1439, label = "Asterion", offMapText = "Travel to Asterion in Darkshore.", x = 0.4417 },
            },
            dependsOn = { "accept-957-bashal-aran", "objective-957-quest-work" },
            id = "turnin-957-bashal-aran",
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
                quest = { id = 957, state = "completed" },
            },
            sourceStep = 83,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 956 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-982-1-silver-dawning-s-lockbox",
            kind = "objective",
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
            text = "Collect 1 Silver Dawning's Lockbox.",
            complete = {
                questObjective = { id = 982, index = 1, text = "Silver Dawning's Lockbox", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.3824, y = 0.28800000000000003, label = "Silver Dawning's Lockbox", offMapText = "Travel to Silver Dawning's Lockbox." },
            },
            sourceStep = 84,
            priority = 1190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-982-deep-ocean-vast-sea" },
        },
        {
            id = "objective-982-2-mist-veil-s-lockbox",
            kind = "objective",
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
            text = "Collect 1 Mist Veil's Lockbox.",
            complete = {
                questObjective = { id = 982, index = 2, text = "Mist Veil's Lockbox", count = 1 },
            },
            route = {
                { mapID = 1439, x = 0.39630000000000004, y = 0.2746, label = "Mist Veil's Lockbox", offMapText = "Travel to Mist Veil's Lockbox." },
            },
            sourceStep = 85,
            priority = 1200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-982-deep-ocean-vast-sea" },
        },
        {
            id = "objective-1138-1-fine-crab-chunks",
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
            text = "Collect 6 Fine Crab Chunks.",
            complete = {
                questObjective = { id = 1138, index = 1, text = "Fine Crab Chunks", count = 6 },
            },
            route = {
                { mapID = 1439, x = 0.45399999999999996, y = 0.204, label = "Fine Crab Chunks", offMapText = "Travel to Fine Crab Chunks." },
            },
            sourceStep = 87,
            priority = 1210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1138-fruit-of-the-sea" },
        },
        {
            priority = 1220,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike.",
            route = {
                { y = 0.2489, mapID = 1439, label = "Balthule Shadowstrike", offMapText = "Travel to Balthule Shadowstrike in Darkshore.", x = 0.5497 },
            },
            dependsOn = { "accept-965-the-tower-of-althalaxx" },
            id = "turnin-965-the-tower-of-althalaxx",
            kind = "turnin",
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
                quest = { id = 965, state = "completed" },
            },
            sourceStep = 88,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            route = {
                { y = 0.2489, mapID = 1439, label = "Balthule Shadowstrike", offMapText = "Travel to Balthule Shadowstrike in Darkshore.", x = 0.5497 },
            },
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            id = "accept-966-the-tower-of-althalaxx",
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
                quest = { id = 966, state = "activeOrCompleted" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 965 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1240,
            text = "Collect 4 Worn Parchment.",
            route = {
                { y = 0.276, mapID = 1439, label = "Dark Strand Fanatic", offMapText = "Travel to Dark Strand Fanatic.", x = 0.55 },
            },
            dependsOn = { "accept-966-the-tower-of-althalaxx" },
            id = "objective-966-1-dark-strand-fanatic",
            kind = "objective",
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
                questObjective = { id = 966, text = "Dark Strand Fanatic", index = 1, count = 4 },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 965 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1250,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike.",
            route = {
                { y = 0.2489, mapID = 1439, label = "Balthule Shadowstrike", offMapText = "Travel to Balthule Shadowstrike in Darkshore.", x = 0.5497 },
            },
            dependsOn = { "accept-966-the-tower-of-althalaxx", "objective-966-1-dark-strand-fanatic" },
            id = "turnin-966-the-tower-of-althalaxx",
            kind = "turnin",
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
                quest = { id = 966, state = "completed" },
            },
            sourceStep = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 965 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
            route = {
                { y = 0.2489, mapID = 1439, label = "Balthule Shadowstrike", offMapText = "Travel to Balthule Shadowstrike in Darkshore.", x = 0.5497 },
            },
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            id = "accept-967-the-tower-of-althalaxx",
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
                quest = { id = 967, state = "activeOrCompleted" },
            },
            sourceStep = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 966 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1270,
            text = "Turn in Fruit of the Sea to Gubber Blump.",
            route = {
                { y = 0.4493, mapID = 1439, label = "Gubber Blump", offMapText = "Travel to Gubber Blump in Darkshore.", x = 0.361 },
            },
            dependsOn = { "accept-1138-fruit-of-the-sea", "objective-1138-1-fine-crab-chunks" },
            id = "turnin-1138-fruit-of-the-sea",
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
                quest = { id = 1138, state = "completed" },
            },
            sourceStep = 93,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1280,
            text = "Turn in Deep Ocean, Vast Sea to Gorbold Steelhand.",
            route = {
                { y = 0.4117, mapID = 1439, label = "Gorbold Steelhand", offMapText = "Travel to Gorbold Steelhand in Darkshore.", x = 0.3811 },
            },
            dependsOn = {
                "accept-982-deep-ocean-vast-sea",
                "objective-982-1-silver-dawning-s-lockbox",
                "objective-982-2-mist-veil-s-lockbox",
            },
            id = "turnin-982-deep-ocean-vast-sea",
            kind = "turnin",
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
                quest = { id = 982, state = "completed" },
            },
            sourceStep = 94,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-98025-wanted-jaivhanel",
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
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98025,
            priority = 1290,
        },
        {
            priority = 1300,
            route = {
                { y = 0.442, mapID = 1439, label = "WANTED: Jai'vhanel", offMapText = "Travel to WANTED: Jai'vhanel.", x = 0.372 },
            },
            text = "Accept WANTED: Jai'vhanel from the poster beside Sentinel Glynda Nal'Shea in Auberdine.",
            id = "woven-accept-98025-wanted-jaivhanel",
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
                quest = { id = 98025, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1310,
            route = {
                { y = 0.582, mapID = 1439, label = "Jai'vhanel", offMapText = "Travel to Jai'vhanel.", x = 0.45 },
            },
            text = "WANTED: Jai'vhanel: slay the owl north of Ameth'Aran and take a feather.",
            id = "woven-objective-98025-wanted-jaivhanel",
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
                quest = { id = 98025, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98025-wanted-jaivhanel" },
        },
        {
            priority = 1320,
            route = {
                { y = 0.434, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea.", x = 0.376 },
            },
            text = "Turn in WANTED: Jai'vhanel to Sentinel Glynda Nal'Shea in Auberdine.",
            id = "woven-turnin-98025-wanted-jaivhanel",
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
                quest = { id = 98025, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98025-wanted-jaivhanel", "woven-objective-98025-wanted-jaivhanel" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
