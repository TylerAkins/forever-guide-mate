local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Duskwood & Redridge Mountains",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-duskwood-and-redridge-mountains",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 25 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-mage-accept-1938-urs-treatise-on-shadow-magic",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 26 },
            },
            requiredLevel = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1938,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1938-urs-treatise-on-shadow-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1938-urs-treatise-on-shadow-magic",
        },
        {
            priority = 30,
            id = "woven-class-mage-objective-1938-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1938-urs-treatise-on-shadow-magic" },
            classAction = "objective-1938-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1938-urs-treatise-on-shadow-magic", "woven-class-mage-objective-1938-quest-work" },
            id = "woven-class-mage-turnin-1938-urs-treatise-on-shadow-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1938-urs-treatise-on-shadow-magic",
        },
        {
            priority = 50,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1940-pristine-spider-silk",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1940-pristine-spider-silk",
        },
        {
            priority = 60,
            id = "woven-class-mage-objective-1940-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1940-pristine-spider-silk" },
            classAction = "objective-1940-quest-work",
        },
        {
            priority = 70,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1940-pristine-spider-silk", "woven-class-mage-objective-1940-quest-work" },
            id = "woven-class-mage-turnin-1940-pristine-spider-silk",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1940-pristine-spider-silk",
        },
        {
            priority = 80,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1942-astral-knot-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1942-astral-knot-garment",
        },
        {
            priority = 90,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1942-astral-knot-garment" },
            id = "woven-class-mage-turnin-1942-astral-knot-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1942-astral-knot-garment",
        },
        {
            priority = 100,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "woven-class-mage-accept-1939-high-sorcerer-andromath",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1939-high-sorcerer-andromath",
        },
        {
            priority = 110,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1939-high-sorcerer-andromath" },
            id = "woven-class-mage-turnin-1939-high-sorcerer-andromath",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1939-high-sorcerer-andromath",
        },
        {
            id = "level-before-accept-66-the-legend-of-stalvan",
            kind = "note",
            text = "Reach level 22 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 22 },
            },
            requiredLevel = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 66,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7582 },
            },
            text = "Accept The Legend of Stalvan from Madame Eva.",
            id = "accept-66-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 66, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7582 },
            },
            text = "Accept The Totem of Infliction from Madame Eva.",
            id = "accept-101-the-totem-of-infliction",
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
                quest = { id = 101, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.469, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.736 },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke.",
            id = "accept-56-the-night-watch",
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
                quest = { id = 56, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Turn in The Legend of Stalvan to Clerk Daltry.",
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            dependsOn = { "accept-66-the-legend-of-stalvan" },
            id = "turnin-66-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 66, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry.",
            id = "accept-67-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 67, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 66 },
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
                { y = 0.4869, mapID = 1431, label = "Elaine Carevin", offMapText = "Travel to Elaine Carevin in Duskwood.", x = 0.7533 },
            },
            text = "Accept Raven Hill from Elaine Carevin.",
            id = "accept-163-raven-hill",
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
                quest = { id = 163, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.4869, mapID = 1431, label = "Elaine Carevin", offMapText = "Travel to Elaine Carevin in Duskwood.", x = 0.7533 },
            },
            text = "Accept The Hermit from Elaine Carevin.",
            id = "accept-165-the-hermit",
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
                quest = { id = 165, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.4869, mapID = 1431, label = "Elaine Carevin", offMapText = "Travel to Elaine Carevin in Duskwood.", x = 0.7533 },
            },
            text = "Accept Deliveries to Sven from Elaine Carevin.",
            id = "accept-164-deliveries-to-sven",
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
                quest = { id = 164, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras.",
            id = "accept-174-look-to-the-stars",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 174, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "For Look To The Stars: Viktori Prism'Antras of Darkshire wants you to bring him a bronze tube.",
            id = "objective-174-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 174, state = "complete" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-174-look-to-the-stars" },
        },
        {
            priority = 230,
            text = "Turn in Look To The Stars to Viktori Prism'Antras.",
            route = {
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            dependsOn = { "accept-174-look-to-the-stars", "objective-174-quest-work" },
            id = "turnin-174-look-to-the-stars",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 174, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras.",
            id = "accept-175-look-to-the-stars",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 175, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 174 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Look To The Stars to Blind Mary.",
            route = {
                { y = 0.5909, mapID = 1431, label = "Blind Mary", offMapText = "Travel to Blind Mary in Duskwood.", x = 0.8199 },
            },
            dependsOn = { "accept-175-look-to-the-stars" },
            id = "turnin-175-look-to-the-stars",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 175, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 174 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.5909, mapID = 1431, label = "Blind Mary", offMapText = "Travel to Blind Mary in Duskwood.", x = 0.8199 },
            },
            text = "Accept Look To The Stars from Blind Mary.",
            id = "accept-177-look-to-the-stars",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 177, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 175 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Collect 1 Mary's Looking Glass.",
            route = {
                { y = 0.714, mapID = 1431, label = "Insane Ghoul", offMapText = "Travel to Insane Ghoul.", x = 0.8094 },
            },
            dependsOn = { "accept-177-look-to-the-stars" },
            id = "objective-177-1-insane-ghoul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 177, text = "Insane Ghoul", index = 1, count = 1 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 175 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-101-3-skeleton-finger",
            kind = "objective",
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
            text = "Collect 10 Skeleton Finger.",
            complete = {
                questObjective = { id = 101, index = 3, text = "Skeleton Finger", count = 10 },
            },
            route = {
                { mapID = 1431, x = 0.804, y = 0.7020000000000001, label = "Skeleton Finger", offMapText = "Travel to Skeleton Finger." },
            },
            sourceStep = 12,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-101-the-totem-of-infliction" },
        },
        {
            id = "objective-56-2-skeletal-mage",
            kind = "objective",
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
            text = "Kill 6 Skeletal Mage.",
            complete = {
                questObjective = { id = 56, index = 2, text = "Skeletal Mage", count = 6 },
            },
            route = {
                { mapID = 1431, x = 0.804, y = 0.7020000000000001, label = "Skeletal Mage", offMapText = "Travel to Skeletal Mage." },
            },
            sourceStep = 13,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-56-the-night-watch" },
        },
        {
            id = "objective-56-1-skeletal-warrior",
            kind = "objective",
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
            text = "Kill 8 Skeletal Warrior.",
            complete = {
                questObjective = { id = 56, index = 1, text = "Skeletal Warrior", count = 8 },
            },
            route = {
                { mapID = 1431, x = 0.804, y = 0.7020000000000001, label = "Skeletal Warrior", offMapText = "Travel to Skeletal Warrior." },
            },
            sourceStep = 13,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-56-the-night-watch" },
        },
        {
            priority = 310,
            text = "Turn in Raven Hill to Jitters.",
            route = {
                { y = 0.5651, mapID = 1431, label = "Jitters", offMapText = "Travel to Jitters in Duskwood.", x = 0.1816 },
            },
            dependsOn = { "accept-163-raven-hill" },
            id = "turnin-163-raven-hill",
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
                quest = { id = 163, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { y = 0.5651, mapID = 1431, label = "Jitters", offMapText = "Travel to Jitters in Duskwood.", x = 0.1816 },
            },
            text = "Accept Jitters' Growling Gut from Jitters.",
            id = "accept-5-jitters-growling-gut",
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
                quest = { id = 5, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Turn in Deliveries to Sven to Sven Yorgen.",
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            dependsOn = { "accept-164-deliveries-to-sven" },
            id = "turnin-164-deliveries-to-sven",
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
                quest = { id = 164, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            text = "Accept Sven's Revenge from Sven Yorgen.",
            id = "accept-95-sven-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.332, mapID = 1431, label = "Lars", offMapText = "Travel to Lars in Duskwood.", x = 0.0771 },
            },
            text = "Accept Wolves at Our Heels from Lars.",
            id = "accept-226-wolves-at-our-heels",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 226, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Kill 8 Rabid Dire Wolf.",
            route = {
                { y = 0.286, mapID = 1431, label = "Rabid Dire Wolf", offMapText = "Travel to Rabid Dire Wolf.", x = 0.194 },
            },
            dependsOn = { "accept-226-wolves-at-our-heels" },
            id = "objective-226-2-rabid-dire-wolf",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 226, text = "Rabid Dire Wolf", index = 2, count = 8 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Kill 12 Starving Dire Wolf.",
            route = {
                { y = 0.286, mapID = 1431, label = "Starving Dire Wolf", offMapText = "Travel to Starving Dire Wolf.", x = 0.194 },
            },
            dependsOn = { "accept-226-wolves-at-our-heels" },
            id = "objective-226-1-starving-dire-wolf",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 226, text = "Starving Dire Wolf", index = 1, count = 12 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in The Hermit to Abercrombie.",
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            dependsOn = { "accept-165-the-hermit" },
            id = "turnin-165-the-hermit",
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
                quest = { id = 165, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            text = "Accept Supplies from Darkshire from Abercrombie.",
            id = "accept-148-supplies-from-darkshire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 148, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-101-2-vial-of-spider-venom",
            kind = "objective",
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
            text = "Collect 5 Vial of Spider Venom.",
            complete = {
                questObjective = { id = 101, index = 2, text = "Vial of Spider Venom", count = 5 },
            },
            route = {
                { mapID = 1431, x = 0.32799999999999996, y = 0.35200000000000004, label = "Vial of Spider Venom", offMapText = "Travel to Vial of Spider Venom." },
            },
            sourceStep = 20,
            priority = 400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-101-the-totem-of-infliction" },
        },
        {
            priority = 410,
            text = "Collect 10 Ghoul Fang.",
            route = {
                { y = 0.3489, mapID = 1431, label = "Flesh Eater", offMapText = "Travel to Flesh Eater.", x = 0.2359 },
            },
            dependsOn = { "accept-101-the-totem-of-infliction" },
            id = "objective-101-1-flesh-eater",
            kind = "objective",
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
                questObjective = { id = 101, text = "Flesh Eater", index = 1, count = 10 },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Turn in Wolves at Our Heels to Lars.",
            route = {
                { mapID = 1431, x = 0.0771, y = 0.332, label = "Lars", offMapText = "Travel to Lars in Duskwood." },
            },
            dependsOn = { "accept-226-wolves-at-our-heels", "objective-226-2-rabid-dire-wolf", "objective-226-1-starving-dire-wolf" },
            id = "turnin-226-wolves-at-our-heels",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 226, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-2360-mathias-and-the-defias",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2360,
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { y = 0.7008, mapID = 1436, label = "Agent Kearnen", offMapText = "Travel to Agent Kearnen in Westfall.", x = 0.6849 },
            },
            text = "Turn in Mathias and the Defias to Agent Kearnen.",
            id = "turnin-2360-mathias-and-the-defias",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2360, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.7008, mapID = 1436, label = "Agent Kearnen", offMapText = "Travel to Agent Kearnen in Westfall.", x = 0.6849 },
            },
            text = "Accept Klaven's Tower from Agent Kearnen.",
            id = "accept-2359-klaven-s-tower",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2359, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2360 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2359-2-defias-tower-key",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            text = "Collect 1 Defias Tower Key.",
            complete = {
                questObjective = { id = 2359, index = 2, text = "Defias Tower Key", count = 1 },
            },
            route = {
                { mapID = 1436, x = 0.7162999999999999, y = 0.7391, label = "Defias Tower Key", offMapText = "Travel to Defias Tower Key." },
            },
            sourceStep = 25,
            priority = 460,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2360 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2359-klaven-s-tower" },
        },
        {
            id = "objective-2359-1-klaven-mortwake-s-journal",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            text = "Collect 1 Klaven Mortwake's Journal.",
            complete = {
                questObjective = { id = 2359, index = 1, text = "Klaven Mortwake's Journal", count = 1 },
            },
            route = {
                { mapID = 1436, x = 0.7041, y = 0.7393000000000001, label = "Klaven Mortwake's Journal", offMapText = "Travel to Klaven Mortwake's Journal." },
            },
            sourceStep = 26,
            priority = 470,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2360 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2359-klaven-s-tower" },
        },
        {
            priority = 480,
            text = "Turn in The Legend of Stalvan.",
            route = {
                { y = 0.6673, mapID = 1436, label = "The Legend of Stalvan", offMapText = "Travel to The Legend of Stalvan.", x = 0.4151 },
            },
            dependsOn = { "accept-67-the-legend-of-stalvan" },
            id = "turnin-67-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 67, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 66 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.6673, mapID = 1436, label = "The Legend of Stalvan", offMapText = "Travel to The Legend of Stalvan.", x = 0.4151 },
            },
            text = "Accept The Legend of Stalvan.",
            id = "accept-68-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 68, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 67 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1650-the-tome-of-valor",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1650,
            priority = 500,
        },
        {
            priority = 510,
            route = {
                { mapID = 1436, x = 0.4233, y = 0.8864, label = "Daphne Stilwell", offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell.",
            id = "turnin-1650-the-tome-of-valor",
            kind = "turnin",
            conditions = {
                all = {
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
            complete = {
                quest = { id = 1650, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1649 },
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
                { mapID = 1436, x = 0.4233, y = 0.8864, label = "Daphne Stilwell", offMapText = "Travel to Daphne Stilwell in Westfall." },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell.",
            id = "accept-1651-the-tome-of-valor",
            kind = "accept",
            conditions = {
                all = {
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
            complete = {
                quest = { id = 1651, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1650 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            dependsOn = { "accept-1651-the-tome-of-valor" },
            id = "objective-1651-reviewed-mechanics",
            conditions = {
                all = {
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
            classAction = "objective-1651-reviewed-mechanics",
        },
        {
            priority = 540,
            text = "Turn in The Tome of Valor to Daphne Stilwell.",
            route = {
                { y = 0.8909, mapID = 1436, label = "Daphne Stilwell", offMapText = "Travel to Daphne Stilwell in Westfall.", x = 0.4168 },
            },
            dependsOn = { "accept-1651-the-tome-of-valor", "objective-1651-reviewed-mechanics" },
            id = "turnin-1651-the-tome-of-valor",
            kind = "turnin",
            conditions = {
                all = {
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
            complete = {
                quest = { id = 1651, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1650 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.8909, mapID = 1436, label = "Daphne Stilwell", offMapText = "Travel to Daphne Stilwell in Westfall.", x = 0.4168 },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell.",
            id = "accept-1652-the-tome-of-valor",
            kind = "accept",
            conditions = {
                all = {
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
            complete = {
                quest = { id = 1652, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1651 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-272-1-half-pendant-of-aquatic-agility",
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
            checkpointQuest = 272,
            priority = 560,
        },
        {
            priority = 570,
            route = {
                { y = 0.4142, mapID = 1450, label = "Half Pendant of Aquatic Agility", offMapText = "Travel to Half Pendant of Aquatic Agility.", x = 0.3592 },
            },
            text = "Collect 1 Pendant of the Sea Lion.",
            id = "objective-272-1-half-pendant-of-aquatic-agility",
            kind = "objective",
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
                questObjective = { id = 272, text = "Half Pendant of Aquatic Agility", index = 1, count = 1 },
            },
            sourceStep = 32,
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
            priority = 580,
            text = "Turn in Trial of the Sea Lion to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "objective-272-1-half-pendant-of-aquatic-agility" },
            id = "turnin-272-trial-of-the-sea-lion",
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
                quest = { id = 272, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 29 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Aquatic Form from Dendrite Starblaze.",
            id = "accept-5061-aquatic-form",
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
                quest = { id = 5061, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 272 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            text = "Turn in Aquatic Form to Mathrengyl Bearwalker.",
            route = {
                { y = 0.0839, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3537 },
            },
            dependsOn = { "accept-5061-aquatic-form" },
            id = "turnin-5061-aquatic-form",
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
                quest = { id = 5061, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 272 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Turn in Jitters' Growling Gut to Chef Grual.",
            route = {
                { y = 0.4345, mapID = 1431, label = "Chef Grual", offMapText = "Travel to Chef Grual in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-5-jitters-growling-gut" },
            id = "turnin-5-jitters-growling-gut",
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
                quest = { id = 5, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            route = {
                { y = 0.4345, mapID = 1431, label = "Chef Grual", offMapText = "Travel to Chef Grual in Duskwood.", x = 0.7378 },
            },
            text = "Accept Dusky Crab Cakes from Chef Grual.",
            id = "accept-93-dusky-crab-cakes",
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
                quest = { id = 93, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "For Dusky Crab Cakes: Gather 6 Gooey Spider Legs and bring them to Chef Grual in Darkshire.",
            id = "objective-93-quest-work",
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
                quest = { id = 93, state = "complete" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-93-dusky-crab-cakes" },
        },
        {
            priority = 640,
            text = "Turn in Dusky Crab Cakes to Chef Grual.",
            route = {
                { y = 0.4345, mapID = 1431, label = "Chef Grual", offMapText = "Travel to Chef Grual in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-93-dusky-crab-cakes", "objective-93-quest-work" },
            id = "turnin-93-dusky-crab-cakes",
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
                quest = { id = 93, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.4345, mapID = 1431, label = "Chef Grual", offMapText = "Travel to Chef Grual in Duskwood.", x = 0.7378 },
            },
            text = "Accept Return to Jitters from Chef Grual.",
            id = "accept-240-return-to-jitters",
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
                quest = { id = 240, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Turn in The Night Watch to Commander Althea Ebonlocke.",
            route = {
                { y = 0.469, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            dependsOn = { "accept-56-the-night-watch", "objective-56-2-skeletal-mage", "objective-56-1-skeletal-warrior" },
            id = "turnin-56-the-night-watch",
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
                quest = { id = 56, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { y = 0.469, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke.",
            id = "accept-57-the-night-watch",
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
                quest = { id = 57, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 56 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in The Legend of Stalvan to Clerk Daltry.",
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            dependsOn = { "accept-68-the-legend-of-stalvan" },
            id = "turnin-68-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 68, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 67 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry.",
            id = "accept-69-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 69, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 68 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Turn in The Totem of Infliction to Madame Eva.",
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            dependsOn = {
                "accept-101-the-totem-of-infliction",
                "objective-101-3-skeleton-finger",
                "objective-101-2-vial-of-spider-venom",
                "objective-101-1-flesh-eater",
            },
            id = "turnin-101-the-totem-of-infliction",
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
                quest = { id = 101, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Supplies from Darkshire to Madame Eva.",
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            dependsOn = { "accept-148-supplies-from-darkshire" },
            id = "turnin-148-supplies-from-darkshire",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 148, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            text = "Accept Ghost Hair Thread from Madame Eva.",
            id = "accept-149-ghost-hair-thread",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 149, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 148 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            text = "Turn in Look To The Stars to Viktori Prism'Antras.",
            route = {
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            dependsOn = { "accept-177-look-to-the-stars", "objective-177-1-insane-ghoul" },
            id = "turnin-177-look-to-the-stars",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 177, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 175 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            text = "Turn in Ghost Hair Thread to Blind Mary.",
            route = {
                { y = 0.5909, mapID = 1431, label = "Blind Mary", offMapText = "Travel to Blind Mary in Duskwood.", x = 0.8198 },
            },
            dependsOn = { "accept-149-ghost-hair-thread" },
            id = "turnin-149-ghost-hair-thread",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 149, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 148 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.5909, mapID = 1431, label = "Blind Mary", offMapText = "Travel to Blind Mary in Duskwood.", x = 0.8198 },
            },
            text = "Accept Return the Comb from Blind Mary.",
            id = "accept-154-return-the-comb",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 154, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            text = "Turn in Return the Comb to Madame Eva.",
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            dependsOn = { "accept-154-return-the-comb" },
            id = "turnin-154-return-the-comb",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 154, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            text = "Accept Deliver the Thread from Madame Eva.",
            id = "accept-157-deliver-the-thread",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 157, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 154 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            text = "Turn in Sven's Revenge.",
            route = {
                { y = 0.777, mapID = 1431, label = "Sven's Revenge", offMapText = "Travel to Sven's Revenge.", x = 0.4986 },
            },
            dependsOn = { "accept-95-sven-s-revenge" },
            id = "turnin-95-sven-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.777, mapID = 1431, label = "Sven's Camp", offMapText = "Travel to Sven's Camp.", x = 0.4986 },
            },
            text = "Accept Sven's Camp.",
            id = "accept-230-sven-s-camp",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 230, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 800,
            text = "Turn in Deliver the Thread to Abercrombie.",
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            dependsOn = { "accept-157-deliver-the-thread" },
            id = "turnin-157-deliver-the-thread",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 157, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 154 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            text = "Accept Zombie Juice from Abercrombie.",
            id = "accept-158-zombie-juice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 158, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 157 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            text = "Turn in Sven's Camp to Sven Yorgen.",
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            dependsOn = { "accept-230-sven-s-camp" },
            id = "turnin-230-sven-s-camp",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 230, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 830,
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            text = "Accept The Shadowy Figure from Sven Yorgen.",
            id = "accept-262-the-shadowy-figure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 262, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 230 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in The Legend of Stalvan to Innkeeper Farley.",
            route = {
                { y = 0.658, mapID = 1429, label = "Innkeeper Farley", offMapText = "Travel to Innkeeper Farley in Elwynn Forest.", x = 0.4377 },
            },
            dependsOn = { "accept-69-the-legend-of-stalvan" },
            id = "turnin-69-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 69, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 68 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            route = {
                { y = 0.658, mapID = 1429, label = "Innkeeper Farley", offMapText = "Travel to Innkeeper Farley in Elwynn Forest.", x = 0.4377 },
            },
            text = "Accept The Legend of Stalvan from Innkeeper Farley.",
            id = "accept-70-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 70, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 69 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-70-1-an-undelivered-letter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 An Undelivered Letter.",
            complete = {
                questObjective = { id = 70, index = 1, text = "An Undelivered Letter", count = 1 },
            },
            route = {
                { mapID = 1429, x = 0.4429, y = 0.6581999999999999, label = "An Undelivered Letter", offMapText = "Travel to An Undelivered Letter." },
            },
            sourceStep = 49,
            priority = 860,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 69 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-70-the-legend-of-stalvan" },
        },
        {
            priority = 870,
            text = "Turn in The Tome of Valor to Duthorian Rall.",
            route = {
                { mapID = 1453, x = 0.3981, y = 0.298, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "accept-1652-the-tome-of-valor" },
            id = "turnin-1652-the-tome-of-valor",
            kind = "turnin",
            conditions = {
                all = {
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
            complete = {
                quest = { id = 1652, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1651 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            text = "Turn in Klaven's Tower to Master Mathias Shaw.",
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            dependsOn = {
                "accept-2359-klaven-s-tower",
                "objective-2359-2-defias-tower-key",
                "objective-2359-1-klaven-mortwake-s-journal",
            },
            id = "turnin-2359-klaven-s-tower",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2359, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2360 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 890,
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            text = "Accept The Touch of Zanzil from Master Mathias Shaw.",
            id = "accept-2607-the-touch-of-zanzil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2607, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2359 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil.",
            route = {
                { y = 0.5877, mapID = 1453, label = "Doc Mixilpixil", offMapText = "Travel to Doc Mixilpixil in Stormwind City.", x = 0.7804 },
            },
            dependsOn = { "accept-2607-the-touch-of-zanzil" },
            id = "turnin-2607-the-touch-of-zanzil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2607, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2359 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
            route = {
                { y = 0.5877, mapID = 1453, label = "Doc Mixilpixil", offMapText = "Travel to Doc Mixilpixil in Stormwind City.", x = 0.7804 },
            },
            text = "Accept The Touch of Zanzil from Doc Mixilpixil.",
            id = "accept-2608-the-touch-of-zanzil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2608, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            dependsOn = { "accept-2608-the-touch-of-zanzil" },
            id = "objective-2608-reviewed-mechanics",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            classAction = "objective-2608-reviewed-mechanics",
        },
        {
            priority = 930,
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil.",
            route = {
                { y = 0.5877, mapID = 1453, label = "Doc Mixilpixil", offMapText = "Travel to Doc Mixilpixil in Stormwind City.", x = 0.7804 },
            },
            dependsOn = { "accept-2608-the-touch-of-zanzil", "objective-2608-reviewed-mechanics" },
            id = "turnin-2608-the-touch-of-zanzil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            complete = {
                quest = { id = 2608, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-class-rogue-accept-2609-the-touch-of-zanzil",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2609,
            priority = 940,
        },
        {
            priority = 950,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            id = "woven-class-rogue-accept-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2609-the-touch-of-zanzil",
        },
        {
            priority = 960,
            dependsOn = { "woven-class-rogue-accept-2609-the-touch-of-zanzil" },
            id = "woven-class-rogue-objective-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "objective-2609-the-touch-of-zanzil",
        },
        {
            priority = 970,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            dependsOn = {
                "woven-class-rogue-accept-2609-the-touch-of-zanzil",
                "woven-class-rogue-objective-2609-the-touch-of-zanzil",
            },
            id = "woven-class-rogue-turnin-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2609-the-touch-of-zanzil",
        },
        {
            priority = 980,
            text = "Turn in The Legend of Stalvan to Caretaker Folsom.",
            route = {
                { y = 0.6193, mapID = 1453, label = "Caretaker Folsom", offMapText = "Travel to Caretaker Folsom in Stormwind City.", x = 0.2958 },
            },
            dependsOn = { "accept-70-the-legend-of-stalvan", "objective-70-1-an-undelivered-letter" },
            id = "turnin-70-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 70, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 69 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.6193, mapID = 1453, label = "Caretaker Folsom", offMapText = "Travel to Caretaker Folsom in Stormwind City.", x = 0.2958 },
            },
            text = "Accept The Legend of Stalvan from Caretaker Folsom.",
            id = "accept-72-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 72, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 70 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Turn in The Legend of Stalvan.",
            route = {
                { y = 0.6158, mapID = 1453, label = "The Legend of Stalvan", offMapText = "Travel to The Legend of Stalvan.", x = 0.2946 },
            },
            dependsOn = { "accept-72-the-legend-of-stalvan" },
            id = "turnin-72-the-legend-of-stalvan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 72, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 70 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            route = {
                { y = 0.6158, mapID = 1453, label = "The Legend of Stalvan", offMapText = "Travel to The Legend of Stalvan.", x = 0.2946 },
            },
            text = "Accept The Legend of Stalvan.",
            id = "accept-74-the-legend-of-stalvan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 74, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 72 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-335-a-noble-brew",
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
            checkpointQuest = 335,
            priority = 1020,
        },
        {
            priority = 1030,
            route = {
                { mapID = 1453, x = 0.2645, y = 0.7866, label = "Zardeth of the Black Claw", offMapText = "Travel to Zardeth of the Black Claw in Stormwind City." },
            },
            text = "Accept A Noble Brew from Zardeth of the Black Claw.",
            id = "accept-335-a-noble-brew",
            kind = "accept",
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
                quest = { id = 335, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1040,
            route = {
                { y = 0.4897, mapID = 1433, label = "Marshal Marris", offMapText = "Travel to Marshal Marris in Redridge Mountains.", x = 0.3351 },
            },
            text = "Accept Blackrock Menace from Marshal Marris.",
            id = "accept-20-blackrock-menace",
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
                quest = { id = 20, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1050,
            route = {
                { y = 0.4738, mapID = 1433, label = "Dockmaster Baren", offMapText = "Travel to Dockmaster Baren in Redridge Mountains.", x = 0.2772 },
            },
            text = "Accept Selling Fish from Dockmaster Baren.",
            id = "accept-127-selling-fish",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 127, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1060,
            route = {
                { y = 0.4738, mapID = 1433, label = "Dockmaster Baren", offMapText = "Travel to Dockmaster Baren in Redridge Mountains.", x = 0.2772 },
            },
            text = "Accept Murloc Poachers from Dockmaster Baren.",
            id = "accept-150-murloc-poachers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 150, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1070,
            route = {
                { y = 0.4633, mapID = 1433, label = "Martie Jainrose", offMapText = "Travel to Martie Jainrose in Redridge Mountains.", x = 0.2186 },
            },
            text = "Accept An Unwelcome Guest from Martie Jainrose.",
            id = "accept-34-an-unwelcome-guest",
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
                quest = { id = 34, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "Collect 1 Bellygrub's Tusk.",
            route = {
                { y = 0.4932, mapID = 1433, label = "Bellygrub", offMapText = "Travel to Bellygrub.", x = 0.1568 },
            },
            dependsOn = { "accept-34-an-unwelcome-guest" },
            id = "objective-34-1-bellygrub",
            kind = "objective",
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
                questObjective = { id = 34, text = "Bellygrub", index = 1, count = 1 },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1090,
            text = "Turn in An Unwelcome Guest to Martie Jainrose.",
            route = {
                { y = 0.4633, mapID = 1433, label = "Martie Jainrose", offMapText = "Travel to Martie Jainrose in Redridge Mountains.", x = 0.2186 },
            },
            dependsOn = { "accept-34-an-unwelcome-guest", "objective-34-1-bellygrub" },
            id = "turnin-34-an-unwelcome-guest",
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
                quest = { id = 34, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1100,
            text = "Collect 10 Battleworn Axe.",
            route = {
                { y = 0.436, mapID = 1433, label = "Blackrock Grunt", offMapText = "Travel to Blackrock Grunt.", x = 0.626 },
            },
            dependsOn = { "accept-20-blackrock-menace" },
            id = "objective-20-1-blackrock-grunt",
            kind = "objective",
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
                questObjective = { id = 20, text = "Blackrock Grunt", index = 1, count = 10 },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
            text = "Collect 8 Murloc Fin.",
            route = {
                { y = 0.5301, mapID = 1433, label = "Murloc Flesheater", offMapText = "Travel to Murloc Flesheater.", x = 0.5593 },
            },
            dependsOn = { "accept-150-murloc-poachers" },
            id = "objective-150-1-murloc-flesheater",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 150, text = "Murloc Flesheater", index = 1, count = 8 },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Collect 10 Spotted Sunfish.",
            route = {
                { mapID = 1433, x = 0.578, y = 0.514, label = "Spotted Sunfish", offMapText = "Travel to Spotted Sunfish." },
            },
            dependsOn = { "accept-127-selling-fish" },
            id = "objective-127-1-spotted-sunfish",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 127, text = "Spotted Sunfish", index = 1, count = 10 },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1130,
            text = "Turn in Blackrock Menace to Marshal Marris.",
            route = {
                { y = 0.4897, mapID = 1433, label = "Marshal Marris", offMapText = "Travel to Marshal Marris in Redridge Mountains.", x = 0.3351 },
            },
            dependsOn = { "accept-20-blackrock-menace", "objective-20-1-blackrock-grunt" },
            id = "turnin-20-blackrock-menace",
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
                quest = { id = 20, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1140,
            text = "Turn in Selling Fish to Dockmaster Baren.",
            route = {
                { y = 0.4738, mapID = 1433, label = "Dockmaster Baren", offMapText = "Travel to Dockmaster Baren in Redridge Mountains.", x = 0.2772 },
            },
            dependsOn = { "accept-127-selling-fish", "objective-127-1-spotted-sunfish" },
            id = "turnin-127-selling-fish",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 127, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1150,
            text = "Turn in Murloc Poachers to Dockmaster Baren.",
            route = {
                { y = 0.4738, mapID = 1433, label = "Dockmaster Baren", offMapText = "Travel to Dockmaster Baren in Redridge Mountains.", x = 0.2772 },
            },
            dependsOn = { "accept-150-murloc-poachers", "objective-150-1-murloc-flesheater" },
            id = "turnin-150-murloc-poachers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 150, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1160,
            text = "Turn in The Shadowy Figure to Madame Eva.",
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            dependsOn = { "accept-262-the-shadowy-figure" },
            id = "turnin-262-the-shadowy-figure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 262, state = "completed" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 230 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7581 },
            },
            text = "Accept The Shadowy Search Continues from Madame Eva.",
            id = "accept-265-the-shadowy-search-continues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 265, state = "activeOrCompleted" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 262 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1180,
            text = "Turn in The Shadowy Search Continues to Clerk Daltry.",
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253 },
            },
            dependsOn = { "accept-265-the-shadowy-search-continues" },
            id = "turnin-265-the-shadowy-search-continues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 265, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 262 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253 },
            },
            text = "Accept Inquire at the Inn from Clerk Daltry.",
            id = "accept-266-inquire-at-the-inn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 266, state = "activeOrCompleted" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1200,
            text = "Turn in Zombie Juice to Tavernkeep Smitts.",
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-158-zombie-juice" },
            id = "turnin-158-zombie-juice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 158, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 157 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            text = "Accept Gather Rot Blossoms from Tavernkeep Smitts.",
            id = "accept-156-gather-rot-blossoms",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 156, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 158 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1220,
            text = "Turn in Inquire at the Inn to Tavernkeep Smitts.",
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-266-inquire-at-the-inn" },
            id = "turnin-266-inquire-at-the-inn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 266, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            text = "Accept Finding the Shadowy Figure from Tavernkeep Smitts.",
            id = "accept-453-finding-the-shadowy-figure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 453, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1240,
            text = "Turn in Return to Jitters to Jitters.",
            route = {
                { y = 0.5652, mapID = 1431, label = "Jitters", offMapText = "Travel to Jitters in Duskwood.", x = 0.1814 },
            },
            dependsOn = { "accept-240-return-to-jitters" },
            id = "turnin-240-return-to-jitters",
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
                quest = { id = 240, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1250,
            text = "Turn in Finding the Shadowy Figure to Jitters.",
            route = {
                { y = 0.5652, mapID = 1431, label = "Jitters", offMapText = "Travel to Jitters in Duskwood.", x = 0.1814 },
            },
            dependsOn = { "accept-453-finding-the-shadowy-figure" },
            id = "turnin-453-finding-the-shadowy-figure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 453, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
            route = {
                { y = 0.5652, mapID = 1431, label = "Jitters", offMapText = "Travel to Jitters in Duskwood.", x = 0.1814 },
            },
            text = "Accept Return to Sven from Jitters.",
            id = "accept-268-return-to-sven",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 268, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1270,
            text = "Collect 8 Rot Blossom.",
            route = {
                { y = 0.464, mapID = 1431, label = "Skeletal Fiend", offMapText = "Travel to Skeletal Fiend.", x = 0.176 },
            },
            dependsOn = { "accept-156-gather-rot-blossoms" },
            id = "objective-156-1-skeletal-fiend",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 156, text = "Skeletal Fiend", index = 1, count = 8 },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 158 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-57-1-skeletal-fiend",
            kind = "objective",
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
            text = "Kill 15 Skeletal Fiend.",
            complete = {
                questObjective = { id = 57, index = 1, text = "Skeletal Fiend", count = 15 },
            },
            route = {
                { mapID = 1431, x = 0.17600000000000002, y = 0.46399999999999997, label = "Skeletal Fiend", offMapText = "Travel to Skeletal Fiend." },
            },
            sourceStep = 82,
            priority = 1280,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 56 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-57-the-night-watch" },
        },
        {
            id = "objective-57-2-skeletal-horror",
            kind = "objective",
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
            text = "Kill 15 Skeletal Horror.",
            complete = {
                questObjective = { id = 57, index = 2, text = "Skeletal Horror", count = 15 },
            },
            route = {
                { mapID = 1431, x = 0.17600000000000002, y = 0.46399999999999997, label = "Skeletal Horror", offMapText = "Travel to Skeletal Horror." },
            },
            sourceStep = 82,
            priority = 1290,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 56 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-57-the-night-watch" },
        },
        {
            priority = 1300,
            text = "Turn in Return to Sven to Sven Yorgen.",
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            dependsOn = { "accept-268-return-to-sven" },
            id = "turnin-268-return-to-sven",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 268, state = "completed" },
            },
            sourceStep = 84,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1310,
            route = {
                { y = 0.34, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0779 },
            },
            text = "Accept Proving Your Worth from Sven Yorgen.",
            id = "accept-323-proving-your-worth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 323, state = "activeOrCompleted" },
            },
            sourceStep = 84,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 268 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            text = "Kill 3 Skeletal Warder.",
            route = {
                { y = 0.3872, mapID = 1431, label = "Skeletal Warder", offMapText = "Travel to Skeletal Warder.", x = 0.1588 },
            },
            dependsOn = { "accept-323-proving-your-worth" },
            id = "objective-323-3-skeletal-warder",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 323, text = "Skeletal Warder", index = 3, count = 3 },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 268 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1330,
            text = "Kill 3 Skeletal Healer.",
            route = {
                { y = 0.3872, mapID = 1431, label = "Skeletal Healer", offMapText = "Travel to Skeletal Healer.", x = 0.1588 },
            },
            dependsOn = { "accept-323-proving-your-worth" },
            id = "objective-323-2-skeletal-healer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 323, text = "Skeletal Healer", index = 2, count = 3 },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 268 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1340,
            text = "Kill 15 Skeletal Raider.",
            route = {
                { y = 0.3872, mapID = 1431, label = "Skeletal Raider", offMapText = "Travel to Skeletal Raider.", x = 0.1588 },
            },
            dependsOn = { "accept-323-proving-your-worth" },
            id = "objective-323-1-skeletal-raider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 323, text = "Skeletal Raider", index = 1, count = 15 },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 268 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1350,
            text = "Turn in Proving Your Worth to Sven Yorgen.",
            route = {
                { mapID = 1431, x = 0.0779, y = 0.34, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood." },
            },
            dependsOn = {
                "accept-323-proving-your-worth",
                "objective-323-3-skeletal-warder",
                "objective-323-2-skeletal-healer",
                "objective-323-1-skeletal-raider",
            },
            id = "turnin-323-proving-your-worth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 323, state = "completed" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 268 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            route = {
                { mapID = 1431, x = 0.0779, y = 0.34, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood." },
            },
            text = "Accept Seeking Wisdom from Sven Yorgen.",
            id = "accept-269-seeking-wisdom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 269, state = "activeOrCompleted" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 323 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1370,
            text = "Turn in Gather Rot Blossoms to Tavernkeep Smitts.",
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-156-gather-rot-blossoms", "objective-156-1-skeletal-fiend" },
            id = "turnin-156-gather-rot-blossoms",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 156, state = "completed" },
            },
            sourceStep = 87,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 158 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1380,
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            text = "Accept Juice Delivery from Tavernkeep Smitts.",
            id = "accept-159-juice-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 159, state = "activeOrCompleted" },
            },
            sourceStep = 87,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 156 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1390,
            text = "Turn in The Night Watch to Commander Althea Ebonlocke.",
            route = {
                { y = 0.469, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.736 },
            },
            dependsOn = { "accept-57-the-night-watch", "objective-57-1-skeletal-fiend", "objective-57-2-skeletal-horror" },
            id = "turnin-57-the-night-watch",
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
                quest = { id = 57, state = "completed" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 56 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1400,
            route = {
                { y = 0.5785, mapID = 1433, label = "Guard Howe", offMapText = "Travel to Guard Howe in Redridge Mountains.", x = 0.3154 },
            },
            text = "Accept Blackrock Bounty from Guard Howe.",
            id = "accept-128-blackrock-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 128, state = "activeOrCompleted" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1410,
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            text = "Accept Howling in the Hills from Verner Osgood.",
            id = "accept-126-howling-in-the-hills",
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
                quest = { id = 126, state = "activeOrCompleted" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1420,
            route = {
                { y = 0.4426, mapID = 1433, label = "Bailiff Conacher", offMapText = "Travel to Bailiff Conacher in Redridge Mountains.", x = 0.2972 },
            },
            text = "Accept Solomon's Law from Bailiff Conacher.",
            id = "accept-91-solomon-s-law",
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
                quest = { id = 91, state = "activeOrCompleted" },
            },
            sourceStep = 92,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1430,
            route = {
                { y = 0.4647, mapID = 1433, label = "Wanted: Lieutenant Fangore", offMapText = "Travel to Wanted: Lieutenant Fangore.", x = 0.2675 },
            },
            text = "Accept Wanted: Lieutenant Fangore.",
            id = "accept-180-wanted-lieutenant-fangore",
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
                quest = { id = 180, state = "activeOrCompleted" },
            },
            sourceStep = 93,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1440,
            text = "Collect 1 Yowler's Paw.",
            route = {
                { y = 0.2138, mapID = 1433, label = "Yowler", offMapText = "Travel to Yowler.", x = 0.2765 },
            },
            dependsOn = { "accept-126-howling-in-the-hills" },
            id = "objective-126-1-yowler",
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
                questObjective = { id = 126, text = "Yowler", index = 1, count = 1 },
            },
            sourceStep = 94,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1450,
            text = "Collect 1 Fangore's Paw.",
            route = {
                { y = 0.374, mapID = 1433, label = "Lieutenant Fangore", offMapText = "Travel to Lieutenant Fangore.", x = 0.798 },
            },
            dependsOn = { "accept-180-wanted-lieutenant-fangore" },
            id = "objective-180-1-lieutenant-fangore",
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
                questObjective = { id = 180, text = "Lieutenant Fangore", index = 1, count = 1 },
            },
            sourceStep = 95,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1460,
            route = {
                { y = 0.4671, mapID = 1433, label = "A Watchful Eye", offMapText = "Travel to A Watchful Eye.", x = 0.8436 },
            },
            text = "Turn in A Watchful Eye.",
            id = "turnin-94-a-watchful-eye",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94, state = "completed" },
            },
            sourceStep = 96,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-91-1-shadowhide-pendant",
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
            text = "Collect 10 Shadowhide Pendant.",
            complete = {
                questObjective = { id = 91, index = 1, text = "Shadowhide Pendant", count = 10 },
            },
            route = {
                { mapID = 1433, x = 0.754, y = 0.426, label = "Shadowhide Pendant", offMapText = "Travel to Shadowhide Pendant." },
            },
            sourceStep = 97,
            priority = 1470,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-91-solomon-s-law" },
        },
        {
            priority = 1480,
            text = "Kill 15 Blackrock Champion.",
            route = {
                { y = 0.0688, mapID = 1433, label = "Blackrock Champion", offMapText = "Travel to Blackrock Champion.", x = 0.3321 },
            },
            dependsOn = { "accept-128-blackrock-bounty" },
            id = "objective-128-1-blackrock-champion",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 128, text = "Blackrock Champion", index = 1, count = 15 },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1490,
            route = {
                { y = 0.1255, mapID = 1433, label = "Corporal Keeshan", offMapText = "Travel to Corporal Keeshan in Redridge Mountains.", x = 0.2839 },
            },
            text = "Accept Missing In Action from Corporal Keeshan.",
            id = "accept-219-missing-in-action",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 219, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-219-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Corporal Keeshan out of the cave and back to Lakeshire.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                quest = { id = 219, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1433, x = 0.33409999999999995, y = 0.4851, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 100,
            dependsOn = { "accept-219-missing-in-action" },
            priority = 1500,
        },
        {
            priority = 1510,
            text = "Turn in Missing In Action to Marshal Marris.",
            route = {
                { y = 0.4897, mapID = 1433, label = "Marshal Marris", offMapText = "Travel to Marshal Marris in Redridge Mountains.", x = 0.3351 },
            },
            dependsOn = { "accept-219-missing-in-action", "objective-219-reviewed-escort" },
            id = "turnin-219-missing-in-action",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 219, state = "completed" },
            },
            sourceStep = 101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            text = "Turn in Howling in the Hills to Verner Osgood.",
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            dependsOn = { "accept-126-howling-in-the-hills", "objective-126-1-yowler" },
            id = "turnin-126-howling-in-the-hills",
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
                quest = { id = 126, state = "completed" },
            },
            sourceStep = 103,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1530,
            text = "Turn in Solomon's Law to Bailiff Conacher.",
            route = {
                { y = 0.4427, mapID = 1433, label = "Bailiff Conacher", offMapText = "Travel to Bailiff Conacher in Redridge Mountains.", x = 0.2971 },
            },
            dependsOn = { "accept-91-solomon-s-law", "objective-91-1-shadowhide-pendant" },
            id = "turnin-91-solomon-s-law",
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
                quest = { id = 91, state = "completed" },
            },
            sourceStep = 104,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1540,
            text = "Turn in Wanted: Lieutenant Fangore to Magistrate Solomon.",
            route = {
                { y = 0.4446, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            dependsOn = { "accept-180-wanted-lieutenant-fangore", "objective-180-1-lieutenant-fangore" },
            id = "turnin-180-wanted-lieutenant-fangore",
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
                quest = { id = 180, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            text = "Turn in Blackrock Bounty to Guard Howe.",
            route = {
                { y = 0.5786, mapID = 1433, label = "Guard Howe", offMapText = "Travel to Guard Howe in Redridge Mountains.", x = 0.3154 },
            },
            dependsOn = { "accept-128-blackrock-bounty", "objective-128-1-blackrock-champion" },
            id = "turnin-128-blackrock-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 128, state = "completed" },
            },
            sourceStep = 106,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1560,
            text = "Turn in Seeking Wisdom to Bishop Farthing.",
            route = {
                { y = 0.279, mapID = 1453, label = "Bishop Farthing", offMapText = "Travel to Bishop Farthing in Stormwind City.", x = 0.3913 },
            },
            dependsOn = { "accept-269-seeking-wisdom" },
            id = "turnin-269-seeking-wisdom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 269, state = "completed" },
            },
            sourceStep = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 323 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
            route = {
                { y = 0.279, mapID = 1453, label = "Bishop Farthing", offMapText = "Travel to Bishop Farthing in Stormwind City.", x = 0.3913 },
            },
            text = "Accept The Doomed Fleet from Bishop Farthing.",
            id = "accept-270-the-doomed-fleet",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 270, state = "activeOrCompleted" },
            },
            sourceStep = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 269 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1580,
            route = {
                { y = 0.3028, mapID = 1453, label = "Baros Alexston", offMapText = "Travel to Baros Alexston in Stormwind City.", x = 0.4919 },
            },
            text = "Accept Bazil Thredd from Baros Alexston.",
            id = "accept-389-bazil-thredd",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 389, state = "activeOrCompleted" },
            },
            sourceStep = 111,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1590,
            text = "Turn in Bazil Thredd to Warden Thelwater.",
            route = {
                { y = 0.5809, mapID = 1453, label = "Warden Thelwater", offMapText = "Travel to Warden Thelwater in Stormwind City.", x = 0.4111 },
            },
            dependsOn = { "accept-389-bazil-thredd" },
            id = "turnin-389-bazil-thredd",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 389, state = "completed" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-98387-blackrock-blockade",
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
            checkpointQuest = 98387,
            priority = 1600,
        },
        {
            priority = 1610,
            route = {
                { y = 0.488, mapID = 1433, label = "Marshal Marris", offMapText = "Travel to Marshal Marris.", x = 0.334 },
            },
            text = "Accept Blackrock Blockade from Marshal Marris in Lakeshire.",
            id = "woven-accept-98387-blackrock-blockade",
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
                quest = { id = 98387, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            route = {
                { y = 0.486, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow.", x = 0.322 },
            },
            text = "Accept Alther's Mill from Foreman Oslow in Lakeshire.",
            id = "woven-accept-98386-althers-mill",
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
                quest = { id = 98386, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Blackrock Blockade: collect 10 Battleworn Axes from the Blackrock camp you are already clearing. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 1630,
            route = {
                { y = 0.116, mapID = 1433, label = "Blackrock Grunt", offMapText = "Travel to Blackrock Grunt.", x = 0.292 },
            },
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
            id = "woven-objective-98387-blackrock-blockade",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 98387, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98387-blackrock-blockade" },
        },
        {
            priority = 1640,
            route = {
                { y = 0.488, mapID = 1433, label = "Marshal Marris", offMapText = "Travel to Marshal Marris.", x = 0.334 },
            },
            text = "Turn in Blackrock Blockade to Marshal Marris in Lakeshire.",
            id = "woven-turnin-98387-blackrock-blockade",
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
                quest = { id = 98387, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98387-blackrock-blockade", "woven-objective-98387-blackrock-blockade" },
        },
        {
            priority = 1650,
            route = {
                { y = 0.452, mapID = 1433, label = "Greater Tarantula", offMapText = "Travel to Greater Tarantula.", x = 0.52 },
                { y = 0.408, mapID = 1433, label = "Greater Tarantula", offMapText = "Travel to Greater Tarantula.", x = 0.472 },
            },
            text = "Alther's Mill: slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs.",
            id = "woven-objective-98386-althers-mill",
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
                quest = { id = 98386, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98386-althers-mill" },
        },
        {
            priority = 1660,
            route = {
                { y = 0.486, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow.", x = 0.322 },
            },
            text = "Turn in Alther's Mill to Foreman Oslow in Lakeshire.",
            id = "woven-turnin-98386-althers-mill",
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
                quest = { id = 98386, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98386-althers-mill", "woven-objective-98386-althers-mill" },
        },
        {
            priority = 1670,
            route = {
                { y = 0.476, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi.", x = 0.726 },
            },
            text = "Accept The Valor Family from Sirra Von'Indi in Darkshire.",
            id = "woven-accept-96139-the-valor-family",
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
                quest = { id = 96139, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-woven-accept-96137-iras-dagger",
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
            text = "Loot Ira's Dagger from Ira's Dagger. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ira's Dagger", minCount = 1 },
                    },
                    {
                        quest = { id = 96137, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 1680,
        },
        {
            priority = 1690,
            text = "Use the Ira's Dagger to accept Ira's Dagger.",
            id = "woven-accept-96137-iras-dagger",
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
                quest = { id = 96137, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-woven-accept-96138-merricks-bow",
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
            text = "Loot Merrick's Bow from Merrick's Bow. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Merrick's Bow", minCount = 1 },
                    },
                    {
                        quest = { id = 96138, state = "activeOrCompleted" },
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
            priority = 1710,
            text = "Use the Merrick's Bow to accept Merrick's Bow.",
            id = "woven-accept-96138-merricks-bow",
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
                quest = { id = 96138, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1720,
            route = {
                { y = 0.358, mapID = 1431, label = "Black Ravager", offMapText = "Travel to Black Ravager.", x = 0.694 },
            },
            text = "Ira's Dagger: slay 7 Black Ravagers.",
            id = "woven-objective-96137-black-ravager",
            kind = "objective",
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
                questObjective = { id = 96137, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96137-iras-dagger" },
        },
        {
            priority = 1730,
            route = {
                { y = 0.79, mapID = 1431, label = "Young Black Ravager", offMapText = "Travel to Young Black Ravager.", x = 0.238 },
            },
            text = "Ira's Dagger: slay 10 Young Black Ravagers.",
            id = "woven-objective-96137-young-black-ravager",
            kind = "objective",
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
                questObjective = { id = 96137, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96137-iras-dagger" },
        },
        {
            text = "The Valor Family: search Raven Hill. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 1740,
            route = {
                { y = 0.5625, mapID = 1431, label = "Raven Hill", offMapText = "Travel to Raven Hill.", x = 0.1833 },
            },
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
            id = "woven-objective-96139-the-valor-family",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 96139, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-96139-the-valor-family" },
        },
        {
            priority = 1750,
            route = {
                { y = 0.774, mapID = 1431, label = "Splinter Fist Warrior", offMapText = "Travel to Splinter Fist Warrior.", x = 0.342 },
                { y = 0.738, mapID = 1431, label = "Splinter Fist Taskmaster", offMapText = "Travel to Splinter Fist Taskmaster.", x = 0.34 },
            },
            text = "Defeat 8 Splint Fist Warriors and 4 Splint Fist Taskmasters.",
            id = "woven-objective-96138-merricks-bow",
            kind = "objective",
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
                quest = { id = 96138, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96138-merricks-bow" },
        },
        {
            priority = 1760,
            route = {
                { y = 0.476, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi.", x = 0.726 },
            },
            text = "Turn in The Valor Family to Sirra Von'Indi in Darkshire.",
            id = "woven-turnin-96139-the-valor-family",
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
                quest = { id = 96139, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96139-the-valor-family", "woven-objective-96139-the-valor-family" },
        },
        {
            priority = 1770,
            route = {
                { y = 0.476, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi.", x = 0.726 },
            },
            text = "Turn in Ira's Dagger to Sirra Von'Indi in Darkshire.",
            id = "woven-turnin-96137-iras-dagger",
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
                quest = { id = 96137, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-96137-iras-dagger",
                "woven-objective-96137-black-ravager",
                "woven-objective-96137-young-black-ravager",
            },
        },
        {
            priority = 1780,
            route = {
                { y = 0.476, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi.", x = 0.726 },
            },
            text = "Turn in Merrick's Bow to Sirra Von'Indi in Darkshire.",
            id = "woven-turnin-96138-merricks-bow",
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
                quest = { id = 96138, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96138-merricks-bow", "woven-objective-96138-merricks-bow" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
