local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Westfall",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-westfall",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 13 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-hunter-accept-6064-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
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
            checkpointQuest = 6064,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6064-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6064-taming-the-beast",
        },
        {
            priority = 30,
            id = "woven-class-hunter-objective-6064-quest-work",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6064-taming-the-beast" },
            classAction = "objective-6064-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6064-taming-the-beast", "woven-class-hunter-objective-6064-quest-work" },
            id = "woven-class-hunter-turnin-6064-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6064-taming-the-beast",
        },
        {
            priority = 50,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6084-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6084-taming-the-beast",
        },
        {
            priority = 60,
            id = "woven-class-hunter-objective-6084-quest-work",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6084-taming-the-beast" },
            classAction = "objective-6084-quest-work",
        },
        {
            priority = 70,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6084-taming-the-beast", "woven-class-hunter-objective-6084-quest-work" },
            id = "woven-class-hunter-turnin-6084-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6084-taming-the-beast",
        },
        {
            priority = 80,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6085-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6085-taming-the-beast",
        },
        {
            priority = 90,
            id = "woven-class-hunter-objective-6085-quest-work",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6085-taming-the-beast" },
            classAction = "objective-6085-quest-work",
        },
        {
            priority = 100,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6085-taming-the-beast", "woven-class-hunter-objective-6085-quest-work" },
            id = "woven-class-hunter-turnin-6085-taming-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6085-taming-the-beast",
        },
        {
            priority = 110,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6086-training-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6086-training-the-beast",
        },
        {
            priority = 120,
            route = {
                { y = 0.854, mapID = 1455, label = "Belia Thundergranite", x = 0.708, offMapText = "Travel to Belia Thundergranite in Ironforge." },
            },
            dependsOn = { "woven-class-hunter-accept-6086-training-the-beast" },
            id = "woven-class-hunter-turnin-6086-training-the-beast",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6086-training-the-beast",
        },
        {
            priority = 130,
            route = {
                { y = 0.154, mapID = 1453, label = "Einris Brightspear", x = 0.616, offMapText = "Travel to Einris Brightspear in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6076-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6076-the-hunters-path",
        },
        {
            priority = 140,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6076-the-hunters-path" },
            id = "woven-class-hunter-turnin-6076-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6076-the-hunters-path",
        },
        {
            priority = 150,
            route = {
                { y = 0.454, mapID = 1426, label = "Tristane Shadowstone", x = 0.306, offMapText = "Travel to Tristane Shadowstone in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6075-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6075-the-hunters-path",
        },
        {
            priority = 160,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6075-the-hunters-path" },
            id = "woven-class-hunter-turnin-6075-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6075-the-hunters-path",
        },
        {
            priority = 170,
            route = {
                { y = 0.838, mapID = 1455, label = "Olmin Burningbeard", x = 0.706, offMapText = "Travel to Olmin Burningbeard in Ironforge." },
            },
            id = "woven-class-hunter-accept-6074-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6074-the-hunters-path",
        },
        {
            priority = 180,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-6074-the-hunters-path" },
            id = "woven-class-hunter-turnin-6074-the-hunters-path",
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
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6074-the-hunters-path",
        },
        {
            id = "level-before-woven-class-hunter-accept-6071-the-hunters-path",
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
            checkpointQuest = 6071,
            alternativeQuests = { 6072, 6073, 6721, 6722 },
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.088, mapID = 1457, label = "Jocaste", x = 0.402, offMapText = "Travel to Jocaste in Darnassus." },
            },
            id = "woven-class-hunter-accept-6071-the-hunters-path",
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6071-the-hunters-path",
        },
        {
            priority = 210,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "woven-class-hunter-accept-6071-the-hunters-path" },
            id = "woven-class-hunter-turnin-6071-the-hunters-path",
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
            useClientPin = false,
            classAction = "turnin-6071-the-hunters-path",
        },
        {
            id = "level-before-woven-class-hunter-accept-94792-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94792,
            priority = 220,
        },
        {
            priority = 230,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            id = "woven-class-hunter-accept-94792-taming-the-beast",
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
            classAction = "accept-94792-taming-the-beast",
        },
        {
            priority = 240,
            dependsOn = { "woven-class-hunter-accept-94792-taming-the-beast" },
            id = "woven-class-hunter-objective-94792-reviewed-mechanics",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94792-reviewed-mechanics",
        },
        {
            priority = 250,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {
                "woven-class-hunter-accept-94792-taming-the-beast",
                "woven-class-hunter-objective-94792-reviewed-mechanics",
            },
            id = "woven-class-hunter-turnin-94792-taming-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94792-taming-the-beast",
        },
        {
            priority = 260,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94863-taming-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94863-taming-the-beast",
        },
        {
            priority = 270,
            dependsOn = { "woven-class-hunter-accept-94863-taming-the-beast" },
            id = "woven-class-hunter-objective-94863-reviewed-mechanics",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94863-reviewed-mechanics",
        },
        {
            priority = 280,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {
                "woven-class-hunter-accept-94863-taming-the-beast",
                "woven-class-hunter-objective-94863-reviewed-mechanics",
            },
            id = "woven-class-hunter-turnin-94863-taming-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94863-taming-the-beast",
        },
        {
            priority = 290,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94864-taming-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94864-taming-the-beast",
        },
        {
            priority = 300,
            dependsOn = { "woven-class-hunter-accept-94864-taming-the-beast" },
            id = "woven-class-hunter-objective-94864-reviewed-mechanics",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94864-reviewed-mechanics",
        },
        {
            priority = 310,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {
                "woven-class-hunter-accept-94864-taming-the-beast",
                "woven-class-hunter-objective-94864-reviewed-mechanics",
            },
            id = "woven-class-hunter-turnin-94864-taming-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94864-taming-the-beast",
        },
        {
            priority = 320,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94793-training-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94793-training-the-beast",
        },
        {
            priority = 330,
            route = {
                { y = 0.664, mapID = 1429, label = "Isaac Chan", x = 0.418, offMapText = "Travel to Isaac Chan in Elwynn Forest." },
            },
            dependsOn = { "woven-class-hunter-accept-94793-training-the-beast" },
            id = "woven-class-hunter-turnin-94793-training-the-beast",
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
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94793-training-the-beast",
        },
        {
            id = "level-before-woven-class-hunter-accept-94978-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94978,
            priority = 340,
        },
        {
            priority = 350,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94978-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94978-taming-the-beast",
        },
        {
            priority = 360,
            id = "woven-class-hunter-objective-94978-quest-work",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94978-taming-the-beast" },
            classAction = "objective-94978-quest-work",
        },
        {
            priority = 370,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94978-taming-the-beast", "woven-class-hunter-objective-94978-quest-work" },
            id = "woven-class-hunter-turnin-94978-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94978-taming-the-beast",
        },
        {
            priority = 380,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94979-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94979-taming-the-beast",
        },
        {
            priority = 390,
            id = "woven-class-hunter-objective-94979-quest-work",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94979-taming-the-beast" },
            classAction = "objective-94979-quest-work",
        },
        {
            priority = 400,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94979-taming-the-beast", "woven-class-hunter-objective-94979-quest-work" },
            id = "woven-class-hunter-turnin-94979-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94979-taming-the-beast",
        },
        {
            priority = 410,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94013-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94013-taming-the-beast",
        },
        {
            priority = 420,
            id = "woven-class-hunter-objective-94013-quest-work",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-94013-taming-the-beast" },
            classAction = "objective-94013-quest-work",
        },
        {
            priority = 430,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94013-taming-the-beast", "woven-class-hunter-objective-94013-quest-work" },
            id = "woven-class-hunter-turnin-94013-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94013-taming-the-beast",
        },
        {
            priority = 440,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-94050-training-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94050-training-the-beast",
        },
        {
            priority = 450,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'dora Quickgale", x = 0.596, offMapText = "Travel to Quel'dora Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94050-training-the-beast" },
            id = "woven-class-hunter-turnin-94050-training-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94050-training-the-beast",
        },
        {
            priority = 460,
            route = {
                { y = 0.442, mapID = 2521, label = "Elayaa Easewind", x = 0.452, offMapText = "Travel to Elayaa Easewind in Zephras Isle." },
            },
            id = "woven-class-hunter-accept-94007-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94007-taming-the-beast",
        },
        {
            priority = 470,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-94007-taming-the-beast" },
            id = "woven-class-hunter-turnin-94007-taming-the-beast",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94007-taming-the-beast",
        },
        {
            priority = 480,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            id = "woven-class-hunter-accept-6063-taming-the-beast",
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6063-taming-the-beast",
        },
        {
            priority = 490,
            id = "woven-class-hunter-objective-6063-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6063-taming-the-beast" },
            classAction = "objective-6063-quest-work",
        },
        {
            priority = 500,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "woven-class-hunter-accept-6063-taming-the-beast", "woven-class-hunter-objective-6063-quest-work" },
            id = "woven-class-hunter-turnin-6063-taming-the-beast",
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
            useClientPin = false,
            classAction = "turnin-6063-taming-the-beast",
        },
        {
            priority = 510,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6101-taming-the-beast",
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
            useClientPin = false,
            classAction = "accept-6101-taming-the-beast",
        },
        {
            priority = 520,
            id = "woven-class-hunter-objective-6101-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6101-taming-the-beast" },
            classAction = "objective-6101-quest-work",
        },
        {
            priority = 530,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "woven-class-hunter-accept-6101-taming-the-beast", "woven-class-hunter-objective-6101-quest-work" },
            id = "woven-class-hunter-turnin-6101-taming-the-beast",
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
            useClientPin = false,
            classAction = "turnin-6101-taming-the-beast",
        },
        {
            priority = 540,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6102-taming-the-beast",
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
            useClientPin = false,
            classAction = "accept-6102-taming-the-beast",
        },
        {
            priority = 550,
            id = "woven-class-hunter-objective-6102-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-6102-taming-the-beast" },
            classAction = "objective-6102-quest-work",
        },
        {
            priority = 560,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "woven-class-hunter-accept-6102-taming-the-beast", "woven-class-hunter-objective-6102-quest-work" },
            id = "woven-class-hunter-turnin-6102-taming-the-beast",
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
            useClientPin = false,
            classAction = "turnin-6102-taming-the-beast",
        },
        {
            priority = 570,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-6103-training-the-beast",
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
            useClientPin = false,
            classAction = "accept-6103-training-the-beast",
        },
        {
            priority = 580,
            route = {
                { y = 0.088, mapID = 1457, label = "Jocaste", x = 0.402, offMapText = "Travel to Jocaste in Darnassus." },
            },
            dependsOn = { "woven-class-hunter-accept-6103-training-the-beast" },
            id = "woven-class-hunter-turnin-6103-training-the-beast",
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
            useClientPin = false,
            classAction = "turnin-6103-training-the-beast",
        },
        {
            id = "level-before-woven-class-warlock-accept-1688-surena-caledon",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1688,
            priority = 590,
        },
        {
            priority = 600,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1688-surena-caledon",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1688-surena-caledon",
        },
        {
            priority = 610,
            route = {
                { mapID = 1429, x = 0.7101999999999999, y = 0.8078, label = "Surena's Choker", offMapText = "Travel to Surena's Choker." },
            },
            id = "woven-class-warlock-objective-1688-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            dependsOn = { "woven-class-warlock-accept-1688-surena-caledon" },
            classAction = "objective-1688-quest-work",
        },
        {
            priority = 620,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-1688-surena-caledon", "woven-class-warlock-objective-1688-quest-work" },
            id = "woven-class-warlock-turnin-1688-surena-caledon",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1688-surena-caledon",
        },
        {
            priority = 630,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1689-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1689-the-binding",
        },
        {
            priority = 640,
            route = {
                { mapID = 1453, x = 0.2511, y = 0.7746, label = "Summoned Voidwalker", offMapText = "Travel to Summoned Voidwalker." },
            },
            id = "woven-class-warlock-objective-1689-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            dependsOn = { "woven-class-warlock-accept-1689-the-binding" },
            classAction = "objective-1689-quest-work",
        },
        {
            priority = 650,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-1689-the-binding", "woven-class-warlock-objective-1689-quest-work" },
            id = "woven-class-warlock-turnin-1689-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1689-the-binding",
        },
        {
            priority = 660,
            route = {
                { y = 0.662, mapID = 1429, label = "Remen Marcot", x = 0.444, offMapText = "Travel to Remen Marcot in Elwynn Forest." },
            },
            id = "woven-class-warlock-accept-1685-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1685-gakins-summons",
        },
        {
            priority = 670,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-1685-gakins-summons" },
            id = "woven-class-warlock-turnin-1685-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1685-gakins-summons",
        },
        {
            priority = 680,
            route = {
                { y = 0.096, mapID = 1455, label = "Lago Blackwrench", x = 0.476, offMapText = "Travel to Lago Blackwrench in Ironforge." },
            },
            id = "woven-class-warlock-accept-1715-the-slaughtered-lamb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1715-the-slaughtered-lamb",
        },
        {
            priority = 690,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-1715-the-slaughtered-lamb" },
            id = "woven-class-warlock-turnin-1715-the-slaughtered-lamb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1715-the-slaughtered-lamb",
        },
        {
            priority = 700,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            id = "woven-class-warlock-accept-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1599-beginnings",
        },
        {
            priority = 710,
            route = {
                { y = 0.794, mapID = 1426, label = "Frostmane Novice", x = 0.304, offMapText = "Travel to Frostmane Novice in Dun Morogh." },
            },
            dependsOn = { "woven-class-warlock-accept-1599-beginnings" },
            id = "woven-class-warlock-objective-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "objective-1599-beginnings",
        },
        {
            priority = 720,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            dependsOn = { "woven-class-warlock-accept-1599-beginnings", "woven-class-warlock-objective-1599-beginnings" },
            id = "woven-class-warlock-turnin-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1599-beginnings",
        },
        {
            priority = 730,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            id = "woven-class-warlock-accept-1598-the-stolen-tome",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1598-the-stolen-tome",
        },
        {
            priority = 740,
            route = {
                { mapID = 1429, x = 0.5674, y = 0.43770000000000003, label = "Powers of the Void", offMapText = "Travel to Powers of the Void." },
            },
            id = "woven-class-warlock-objective-1598-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            dependsOn = { "woven-class-warlock-accept-1598-the-stolen-tome" },
            classAction = "objective-1598-quest-work",
        },
        {
            priority = 750,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warlock-accept-1598-the-stolen-tome", "woven-class-warlock-objective-1598-quest-work" },
            id = "woven-class-warlock-turnin-1598-the-stolen-tome",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1598-the-stolen-tome",
        },
        {
            id = "level-before-woven-class-priest-accept-5640-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
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
            checkpointQuest = 5640,
            alternativeQuests = { 5634, 5635, 5636, 5637, 5638, 5639 },
            priority = 760,
        },
        {
            priority = 770,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "woven-class-priest-accept-5640-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5640-desperate-prayer",
        },
        {
            priority = 780,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5640-desperate-prayer" },
            id = "woven-class-priest-turnin-5640-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5640-desperate-prayer",
        },
        {
            priority = 790,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "woven-class-priest-accept-5639-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5639-desperate-prayer",
        },
        {
            priority = 800,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5639-desperate-prayer" },
            id = "woven-class-priest-turnin-5639-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5639-desperate-prayer",
        },
        {
            priority = 810,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            id = "woven-class-priest-accept-5638-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5638-desperate-prayer",
        },
        {
            priority = 820,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5638-desperate-prayer" },
            id = "woven-class-priest-turnin-5638-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5638-desperate-prayer",
        },
        {
            id = "level-before-woven-class-priest-accept-5636-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5636,
            alternativeQuests = { 5634, 5635, 5637, 5638, 5639, 5640 },
            priority = 830,
        },
        {
            priority = 840,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            id = "woven-class-priest-accept-5636-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5636-desperate-prayer",
        },
        {
            priority = 850,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5636-desperate-prayer" },
            id = "woven-class-priest-turnin-5636-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5636-desperate-prayer",
        },
        {
            priority = 860,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "woven-class-priest-accept-5635-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5635-desperate-prayer",
        },
        {
            priority = 870,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5635-desperate-prayer" },
            id = "woven-class-priest-turnin-5635-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5635-desperate-prayer",
        },
        {
            id = "level-before-woven-class-priest-accept-5633-returning-home",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5633,
            alternativeQuests = { 5627, 5628, 5629, 5630, 5631, 5632 },
            priority = 880,
        },
        {
            priority = 890,
            route = {
                { y = 0.092, mapID = 1455, label = "Braenna Flintcrag", x = 0.246, offMapText = "Travel to Braenna Flintcrag in Ironforge." },
            },
            id = "woven-class-priest-accept-5633-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5633-returning-home",
        },
        {
            priority = 900,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5633-returning-home" },
            id = "woven-class-priest-turnin-5633-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5633-returning-home",
        },
        {
            priority = 910,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            id = "woven-class-priest-accept-5632-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5632-returning-home",
        },
        {
            priority = 920,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5632-returning-home" },
            id = "woven-class-priest-turnin-5632-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5632-returning-home",
        },
        {
            priority = 930,
            route = {
                { y = 0.268, mapID = 1453, label = "Brother Joshua", x = 0.388, offMapText = "Travel to Brother Joshua in Stormwind City." },
            },
            id = "woven-class-priest-accept-5631-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5631-returning-home",
        },
        {
            priority = 940,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5631-returning-home" },
            id = "woven-class-priest-turnin-5631-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5631-returning-home",
        },
        {
            priority = 950,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "woven-class-priest-accept-5630-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5630-returning-home",
        },
        {
            priority = 960,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5630-returning-home" },
            id = "woven-class-priest-turnin-5630-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5630-returning-home",
        },
        {
            priority = 970,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "woven-class-priest-accept-5628-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5628-returning-home",
        },
        {
            priority = 980,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5628-returning-home" },
            id = "woven-class-priest-turnin-5628-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5628-returning-home",
        },
        {
            id = "level-before-woven-class-priest-accept-5625-garments-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3, 7 },
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
            checkpointQuest = 5625,
            priority = 990,
        },
        {
            priority = 1000,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-5625-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5625-garments-of-the-light",
        },
        {
            priority = 1010,
            id = "woven-class-priest-objective-5625-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-priest-accept-5625-garments-of-the-light" },
            classAction = "objective-5625-quest-work",
        },
        {
            priority = 1020,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = { "woven-class-priest-accept-5625-garments-of-the-light", "woven-class-priest-objective-5625-quest-work" },
            id = "woven-class-priest-turnin-5625-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5625-garments-of-the-light",
        },
        {
            priority = 1030,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            id = "woven-class-priest-accept-5626-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5626-in-favor-of-the-light",
        },
        {
            priority = 1040,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = { "woven-class-priest-accept-5626-in-favor-of-the-light" },
            id = "woven-class-priest-turnin-5626-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5626-in-favor-of-the-light",
        },
        {
            id = "level-before-woven-class-priest-accept-5624-garments-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5624,
            priority = 1050,
        },
        {
            priority = 1060,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-5624-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5624-garments-of-the-light",
        },
        {
            priority = 1070,
            id = "woven-class-priest-objective-5624-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-priest-accept-5624-garments-of-the-light" },
            classAction = "objective-5624-quest-work",
        },
        {
            priority = 1080,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = { "woven-class-priest-accept-5624-garments-of-the-light", "woven-class-priest-objective-5624-quest-work" },
            id = "woven-class-priest-turnin-5624-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5624-garments-of-the-light",
        },
        {
            priority = 1090,
            route = {
                { y = 0.396, mapID = 1429, label = "Priestess Anetta", x = 0.498, offMapText = "Travel to Priestess Anetta in Elwynn Forest." },
            },
            id = "woven-class-priest-accept-5623-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5623-in-favor-of-the-light",
        },
        {
            priority = 1100,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = { "woven-class-priest-accept-5623-in-favor-of-the-light" },
            id = "woven-class-priest-turnin-5623-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5623-in-favor-of-the-light",
        },
        {
            priority = 1110,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-5621-garments-of-the-moon",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5621-garments-of-the-moon",
        },
        {
            priority = 1120,
            id = "woven-class-priest-objective-5621-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-priest-accept-5621-garments-of-the-moon" },
            classAction = "objective-5621-quest-work",
        },
        {
            priority = 1130,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = { "woven-class-priest-accept-5621-garments-of-the-moon", "woven-class-priest-objective-5621-quest-work" },
            id = "woven-class-priest-turnin-5621-garments-of-the-moon",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5621-garments-of-the-moon",
        },
        {
            priority = 1140,
            route = {
                { y = 0.404, mapID = 1438, label = "Shanda", x = 0.592, offMapText = "Travel to Shanda in Teldrassil." },
            },
            id = "woven-class-priest-accept-5622-in-favor-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5622-in-favor-of-elune",
        },
        {
            priority = 1150,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = { "woven-class-priest-accept-5622-in-favor-of-elune" },
            id = "woven-class-priest-turnin-5622-in-favor-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5622-in-favor-of-elune",
        },
        {
            id = "level-before-woven-class-priest-accept-94824-confounding-flash",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 7 },
                    {
                        race = { 7 },
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
            checkpointQuest = 94824,
            priority = 1160,
        },
        {
            priority = 1170,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "woven-class-priest-accept-94824-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94824-confounding-flash",
        },
        {
            priority = 1180,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = { "woven-class-priest-accept-94824-confounding-flash" },
            id = "woven-class-priest-turnin-94824-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94824-confounding-flash",
        },
        {
            priority = 1190,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-94817-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94817-confounding-flash",
        },
        {
            priority = 1200,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = { "woven-class-priest-accept-94817-confounding-flash" },
            id = "woven-class-priest-turnin-94817-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94817-confounding-flash",
        },
        {
            id = "level-before-woven-class-priest-accept-94774-divine-grace",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94774,
            priority = 1210,
        },
        {
            priority = 1220,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "woven-class-priest-accept-94774-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94774-divine-grace",
        },
        {
            priority = 1230,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-94774-divine-grace" },
            id = "woven-class-priest-turnin-94774-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94774-divine-grace",
        },
        {
            priority = 1240,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-94773-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94773-divine-grace",
        },
        {
            priority = 1250,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-94773-divine-grace" },
            id = "woven-class-priest-turnin-94773-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94773-divine-grace",
        },
        {
            priority = 1260,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            id = "woven-class-priest-accept-5629-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5629-returning-home",
        },
        {
            priority = 1270,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5629-returning-home" },
            id = "woven-class-priest-turnin-5629-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5629-returning-home",
        },
        {
            priority = 1280,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "woven-class-priest-accept-5627-stars-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            dependsOn = {},
            classAction = "accept-5627-stars-of-elune",
        },
        {
            priority = 1290,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "woven-class-priest-accept-5627-stars-of-elune" },
            id = "woven-class-priest-turnin-5627-stars-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5627-stars-of-elune",
        },
        {
            priority = 1300,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "woven-class-priest-accept-5637-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5637-desperate-prayer",
        },
        {
            priority = 1310,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "woven-class-priest-accept-5637-desperate-prayer" },
            id = "woven-class-priest-turnin-5637-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5637-desperate-prayer",
        },
        {
            priority = 1320,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-priest-accept-98574-hallowed-memorandum",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98574-hallowed-memorandum",
        },
        {
            priority = 1330,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            dependsOn = { "woven-class-priest-accept-98574-hallowed-memorandum" },
            id = "woven-class-priest-turnin-98574-hallowed-memorandum",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98574-hallowed-memorandum",
        },
        {
            id = "level-before-woven-class-rogue-accept-2241-the-apple-falls",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2241,
            priority = 1340,
        },
        {
            priority = 1350,
            route = {
                { y = 0.6, mapID = 1438, label = "Jannok Breezesong", x = 0.562, offMapText = "Travel to Jannok Breezesong in Teldrassil." },
            },
            id = "woven-class-rogue-accept-2241-the-apple-falls",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2241-the-apple-falls",
        },
        {
            priority = 1360,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "woven-class-rogue-accept-2241-the-apple-falls" },
            id = "woven-class-rogue-turnin-2241-the-apple-falls",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2241-the-apple-falls",
        },
        {
            priority = 1370,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            id = "woven-class-rogue-accept-2242-destiny-calls",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2242-destiny-calls",
        },
        {
            priority = 1380,
            route = {
                { mapID = 1438, x = 0.37520000000000003, y = 0.2429, label = "Sethir's Journal", offMapText = "Travel to Sethir's Journal." },
            },
            id = "woven-class-rogue-objective-2242-quest-work",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            dependsOn = { "woven-class-rogue-accept-2242-destiny-calls" },
            classAction = "objective-2242-quest-work",
        },
        {
            priority = 1390,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "woven-class-rogue-accept-2242-destiny-calls", "woven-class-rogue-objective-2242-quest-work" },
            id = "woven-class-rogue-turnin-2242-destiny-calls",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2242-destiny-calls",
        },
        {
            id = "level-before-woven-class-rogue-accept-2205-seek-out-si-7",
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
            checkpointQuest = 2205,
            priority = 1400,
        },
        {
            priority = 1410,
            route = {
                { y = 0.658, mapID = 1429, label = "Keryn Sylvius", x = 0.438, offMapText = "Travel to Keryn Sylvius in Elwynn Forest." },
            },
            id = "woven-class-rogue-accept-2205-seek-out-si-7",
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2205-seek-out-si-7",
        },
        {
            priority = 1420,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "woven-class-rogue-accept-2205-seek-out-si-7" },
            id = "woven-class-rogue-turnin-2205-seek-out-si-7",
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
            useClientPin = false,
            classAction = "turnin-2205-seek-out-si-7",
        },
        {
            priority = 1430,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            id = "woven-class-rogue-accept-2206-snatch-and-grab",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2206-snatch-and-grab",
        },
        {
            priority = 1440,
            id = "woven-class-rogue-objective-2206-quest-work",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-2206-snatch-and-grab" },
            classAction = "objective-2206-quest-work",
        },
        {
            priority = 1450,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "woven-class-rogue-accept-2206-snatch-and-grab", "woven-class-rogue-objective-2206-quest-work" },
            id = "woven-class-rogue-turnin-2206-snatch-and-grab",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2206-snatch-and-grab",
        },
        {
            priority = 1460,
            route = {
                { y = 0.526, mapID = 1426, label = "Hogral Bakkan", x = 0.476, offMapText = "Travel to Hogral Bakkan in Dun Morogh." },
            },
            id = "woven-class-rogue-accept-2218-road-to-salvation",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2218-road-to-salvation",
        },
        {
            priority = 1470,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "woven-class-rogue-accept-2218-road-to-salvation" },
            id = "woven-class-rogue-turnin-2218-road-to-salvation",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2218-road-to-salvation",
        },
        {
            priority = 1480,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-2238-simple-subterfugin",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "accept-2238-simple-subterfugin",
        },
        {
            priority = 1490,
            route = {
                { y = 0.444, mapID = 1426, label = "Onin MacHammar", x = 0.252, offMapText = "Travel to Onin MacHammar in Dun Morogh." },
            },
            dependsOn = { "woven-class-rogue-accept-2238-simple-subterfugin" },
            id = "woven-class-rogue-turnin-2238-simple-subterfugin",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2238-simple-subterfugin",
        },
        {
            priority = 1500,
            route = {
                { y = 0.444, mapID = 1426, label = "Onin MacHammar", x = 0.252, offMapText = "Travel to Onin MacHammar in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-2239-onins-report",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "accept-2239-onins-report",
        },
        {
            priority = 1510,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "woven-class-rogue-accept-2239-onins-report" },
            id = "woven-class-rogue-turnin-2239-onins-report",
            conditions = {
                all = {
                    { class = 4 },
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
            useClientPin = false,
            classAction = "turnin-2239-onins-report",
        },
        {
            id = "level-before-woven-class-shaman-accept-94473-fire-sapta",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94473,
            priority = 1520,
        },
        {
            priority = 1530,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            id = "woven-class-shaman-accept-94473-fire-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94473-fire-sapta",
        },
        {
            priority = 1540,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94473-fire-sapta" },
            id = "woven-class-shaman-turnin-94473-fire-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94473-fire-sapta",
        },
        {
            priority = 1550,
            route = {
                { y = 0.645, mapID = 1432, label = "Brazier of the Dormant Flame", x = 0.319, offMapText = "Travel to Brazier of the Dormant Flame in Loch Modan." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94468-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94468-call-of-fire",
        },
        {
            priority = 1560,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-94468-call-of-fire" },
            id = "woven-class-shaman-turnin-94468-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94468-call-of-fire",
        },
        {
            priority = 1570,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94467-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94467-call-of-fire",
        },
        {
            priority = 1580,
            id = "woven-class-shaman-objective-94467-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-94467-call-of-fire" },
            classAction = "objective-94467-quest-work",
        },
        {
            priority = 1590,
            route = {
                { y = 0.645, mapID = 1432, label = "Brazier of the Dormant Flame", x = 0.319, offMapText = "Travel to Brazier of the Dormant Flame in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94467-call-of-fire", "woven-class-shaman-objective-94467-quest-work" },
            id = "woven-class-shaman-turnin-94467-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94467-call-of-fire",
        },
        {
            priority = 1600,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94466-call-of-fire",
        },
        {
            priority = 1610,
            dependsOn = { "woven-class-shaman-accept-94466-call-of-fire" },
            id = "woven-class-shaman-objective-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            classAction = "objective-94466-call-of-fire",
        },
        {
            priority = 1620,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94466-call-of-fire", "woven-class-shaman-objective-94466-call-of-fire" },
            id = "woven-class-shaman-turnin-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94466-call-of-fire",
        },
        {
            priority = 1630,
            route = {
                { y = 0.136, mapID = 1455, label = "Eldrun Stormbreaker", x = 0.474, offMapText = "Travel to Eldrun Stormbreaker in Ironforge." },
            },
            id = "woven-class-shaman-accept-94449-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94449-call-of-fire",
        },
        {
            priority = 1640,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-94449-call-of-fire" },
            id = "woven-class-shaman-turnin-94449-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94449-call-of-fire",
        },
        {
            priority = 1650,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94465-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94465-call-of-fire",
        },
        {
            priority = 1660,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "woven-class-shaman-accept-94465-call-of-fire" },
            id = "woven-class-shaman-turnin-94465-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94465-call-of-fire",
        },
        {
            priority = 1670,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            id = "woven-class-shaman-accept-94472-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94472-earth-sapta",
        },
        {
            priority = 1680,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-94472-earth-sapta" },
            id = "woven-class-shaman-turnin-94472-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94472-earth-sapta",
        },
        {
            priority = 1690,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            id = "woven-class-shaman-accept-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94373-call-of-earth",
        },
        {
            priority = 1700,
            dependsOn = { "woven-class-shaman-accept-94373-call-of-earth" },
            id = "woven-class-shaman-objective-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94373-call-of-earth",
        },
        {
            priority = 1710,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-94373-call-of-earth", "woven-class-shaman-objective-94373-call-of-earth" },
            id = "woven-class-shaman-turnin-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94373-call-of-earth",
        },
        {
            priority = 1720,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-94374-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94374-call-of-earth",
        },
        {
            priority = 1730,
            dependsOn = { "woven-class-shaman-accept-94374-call-of-earth" },
            id = "woven-class-shaman-objective-94374-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94374-reviewed-mechanics",
        },
        {
            priority = 1740,
            dependsOn = { "woven-class-shaman-accept-94374-call-of-earth", "woven-class-shaman-objective-94374-reviewed-mechanics" },
            id = "woven-class-shaman-turnin-94374-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "turnin-94374-call-of-earth",
        },
        {
            priority = 1750,
            dependsOn = {},
            id = "woven-class-shaman-accept-94375-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "accept-94375-call-of-earth",
        },
        {
            priority = 1760,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-94375-call-of-earth" },
            id = "woven-class-shaman-turnin-94375-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94375-call-of-earth",
        },
        {
            priority = 1770,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-shaman-accept-98581-archaic-rune",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98581-archaic-rune",
        },
        {
            priority = 1780,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "woven-class-shaman-accept-98581-archaic-rune" },
            id = "woven-class-shaman-turnin-98581-archaic-rune",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98581-archaic-rune",
        },
        {
            id = "level-before-woven-class-warrior-accept-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
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
            checkpointQuest = 94003,
            priority = 1790,
        },
        {
            priority = 1800,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            id = "woven-class-warrior-accept-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94003-the-skybreaker-bulwark",
        },
        {
            priority = 1810,
            route = {
                { y = 0.504, mapID = 2521, label = "Zaal Stormshield", x = 0.566, offMapText = "Travel to Zaal Stormshield in Zephras Isle." },
            },
            dependsOn = { "woven-class-warrior-accept-94003-the-skybreaker-bulwark" },
            id = "woven-class-warrior-objective-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-94003-the-skybreaker-bulwark",
        },
        {
            priority = 1820,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-warrior-accept-94003-the-skybreaker-bulwark",
                "woven-class-warrior-objective-94003-the-skybreaker-bulwark",
            },
            id = "woven-class-warrior-turnin-94003-the-skybreaker-bulwark",
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
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94003-the-skybreaker-bulwark",
        },
        {
            id = "level-before-woven-class-warrior-accept-1683-vorlus-vilehoof",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
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
            checkpointQuest = 1683,
            alternativeQuests = { 1639, 1678 },
            priority = 1830,
        },
        {
            priority = 1840,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1683-vorlus-vilehoof",
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
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1683-vorlus-vilehoof",
        },
        {
            priority = 1850,
            route = {
                { mapID = 1438, x = 0.4725, y = 0.636, label = "Horn of Vorlus", offMapText = "Travel to Horn of Vorlus." },
            },
            id = "woven-class-warrior-objective-1683-quest-work",
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
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-warrior-accept-1683-vorlus-vilehoof" },
            classAction = "objective-1683-quest-work",
        },
        {
            priority = 1860,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1683-vorlus-vilehoof", "woven-class-warrior-objective-1683-quest-work" },
            id = "woven-class-warrior-turnin-1683-vorlus-vilehoof",
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
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1683-vorlus-vilehoof",
        },
        {
            priority = 1870,
            route = {
                { y = 0.584, mapID = 1438, label = "Moon Priestess Amara", x = 0.556, offMapText = "Travel to Moon Priestess Amara in Teldrassil." },
                { y = 0.592, mapID = 1438, label = "Kyra Windblade", x = 0.562, offMapText = "Travel to Kyra Windblade in Teldrassil." },
            },
            id = "woven-class-warrior-accept-1684-elanaria",
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
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1684-elanaria",
        },
        {
            priority = 1880,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1684-elanaria" },
            id = "woven-class-warrior-turnin-1684-elanaria",
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
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1684-elanaria",
        },
        {
            id = "level-before-woven-class-warrior-accept-1678-vejrek",
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
                    {
                        race = { 3, 7 },
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
            checkpointQuest = 1678,
            alternativeQuests = { 1639, 1683 },
            priority = 1890,
        },
        {
            priority = 1900,
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1678-vejrek",
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
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1678-vejrek",
        },
        {
            priority = 1910,
            id = "woven-class-warrior-objective-1678-quest-work",
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
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1678-vejrek" },
            classAction = "objective-1678-quest-work",
        },
        {
            priority = 1920,
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1678-vejrek", "woven-class-warrior-objective-1678-quest-work" },
            id = "woven-class-warrior-turnin-1678-vejrek",
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
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1678-vejrek",
        },
        {
            priority = 1930,
            route = {
                { y = 0.526, mapID = 1426, label = "Granis Swiftaxe", x = 0.472, offMapText = "Travel to Granis Swiftaxe in Dun Morogh." },
            },
            id = "woven-class-warrior-accept-1679-muren-stormpike",
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
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1679-muren-stormpike",
        },
        {
            priority = 1940,
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1679-muren-stormpike" },
            id = "woven-class-warrior-turnin-1679-muren-stormpike",
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
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1679-muren-stormpike",
        },
        {
            id = "level-before-woven-class-warrior-accept-1639-bartleby-the-drunk",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
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
            checkpointQuest = 1639,
            alternativeQuests = { 1678, 1683 },
            priority = 1950,
        },
        {
            priority = 1960,
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1639-bartleby-the-drunk",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1639-bartleby-the-drunk",
        },
        {
            priority = 1970,
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1639-bartleby-the-drunk" },
            id = "woven-class-warrior-turnin-1639-bartleby-the-drunk",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1639-bartleby-the-drunk",
        },
        {
            id = "level-before-woven-class-warrior-accept-1686-the-shade-of-elura",
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
                    {
                        race = { 1, 3, 4, 7 },
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
            checkpointQuest = 1686,
            priority = 1980,
        },
        {
            priority = 1990,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            id = "woven-class-warrior-accept-1686-the-shade-of-elura",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1686-the-shade-of-elura",
        },
        {
            priority = 2000,
            id = "woven-class-warrior-objective-1686-quest-work",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1686-the-shade-of-elura" },
            classAction = "objective-1686-quest-work",
        },
        {
            priority = 2010,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1686-the-shade-of-elura", "woven-class-warrior-objective-1686-quest-work" },
            id = "woven-class-warrior-turnin-1686-the-shade-of-elura",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1686-the-shade-of-elura",
        },
        {
            priority = 2020,
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1692-smith-mathiel",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1692-smith-mathiel",
        },
        {
            priority = 2030,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1692-smith-mathiel" },
            id = "woven-class-warrior-turnin-1692-smith-mathiel",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1692-smith-mathiel",
        },
        {
            priority = 2040,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            id = "woven-class-warrior-accept-1693-weapons-of-elunite",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1693-weapons-of-elunite",
        },
        {
            priority = 2050,
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "woven-class-warrior-accept-1693-weapons-of-elunite" },
            id = "woven-class-warrior-turnin-1693-weapons-of-elunite",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1693-weapons-of-elunite",
        },
        {
            priority = 2060,
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1681-ironbands-compound",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1681-ironbands-compound",
        },
        {
            priority = 2070,
            id = "woven-class-warrior-objective-1681-quest-work",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1681-ironbands-compound" },
            classAction = "objective-1681-quest-work",
        },
        {
            priority = 2080,
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1681-ironbands-compound", "woven-class-warrior-objective-1681-quest-work" },
            id = "woven-class-warrior-turnin-1681-ironbands-compound",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1681-ironbands-compound",
        },
        {
            priority = 2090,
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            id = "woven-class-warrior-accept-1682-grey-iron-weapons",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1682-grey-iron-weapons",
        },
        {
            priority = 2100,
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1682-grey-iron-weapons" },
            id = "woven-class-warrior-turnin-1682-grey-iron-weapons",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1682-grey-iron-weapons",
        },
        {
            priority = 2110,
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1680-tormus-deepforge",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1680-tormus-deepforge",
        },
        {
            priority = 2120,
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "woven-class-warrior-accept-1680-tormus-deepforge" },
            id = "woven-class-warrior-turnin-1680-tormus-deepforge",
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
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1680-tormus-deepforge",
        },
        {
            priority = 2130,
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1640-beat-bartleby",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1640-beat-bartleby",
        },
        {
            priority = 2140,
            id = "woven-class-warrior-objective-1640-quest-work",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-1640-beat-bartleby" },
            classAction = "objective-1640-quest-work",
        },
        {
            priority = 2150,
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1640-beat-bartleby", "woven-class-warrior-objective-1640-quest-work" },
            id = "woven-class-warrior-turnin-1640-beat-bartleby",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1640-beat-bartleby",
        },
        {
            priority = 2160,
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1665-bartlebys-mug",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1665-bartlebys-mug",
        },
        {
            priority = 2170,
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1665-bartlebys-mug" },
            id = "woven-class-warrior-turnin-1665-bartlebys-mug",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1665-bartlebys-mug",
        },
        {
            priority = 2180,
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1666-marshal-haggard",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1666-marshal-haggard",
        },
        {
            priority = 2190,
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warrior-accept-1666-marshal-haggard" },
            id = "woven-class-warrior-turnin-1666-marshal-haggard",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1666-marshal-haggard",
        },
        {
            priority = 2200,
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-1667-dead-tooth-jack",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1667-dead-tooth-jack",
        },
        {
            priority = 2210,
            route = {
                { y = 0.79, mapID = 1429, label = "Dead-Tooth Jack", x = 0.892, offMapText = "Travel to Dead-Tooth Jack in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warrior-accept-1667-dead-tooth-jack" },
            id = "woven-class-warrior-objective-1667-dead-tooth-jack",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1667-dead-tooth-jack",
        },
        {
            priority = 2220,
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warrior-accept-1667-dead-tooth-jack", "woven-class-warrior-objective-1667-dead-tooth-jack" },
            id = "woven-class-warrior-turnin-1667-dead-tooth-jack",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1667-dead-tooth-jack",
        },
        {
            priority = 2230,
            route = {
                { y = 0.456, mapID = 1453, label = "Ilsa Corbin", x = 0.786, offMapText = "Travel to Ilsa Corbin in Stormwind City." },
            },
            id = "woven-class-warrior-accept-1638-a-warriors-training",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1638-a-warriors-training",
        },
        {
            priority = 2240,
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = { "woven-class-warrior-accept-1638-a-warriors-training" },
            id = "woven-class-warrior-turnin-1638-a-warriors-training",
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
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1638-a-warriors-training",
        },
        {
            priority = 2250,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-warrior-accept-92479-a-scribbled-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-92479-a-scribbled-letter",
        },
        {
            priority = 2260,
            route = {
                { y = 0.408, mapID = 1429, label = "Tordrin Sternblade", x = 0.512, offMapText = "Travel to Tordrin Sternblade in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warrior-accept-92479-a-scribbled-letter" },
            id = "woven-class-warrior-turnin-92479-a-scribbled-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92479-a-scribbled-letter",
        },
        {
            id = "level-before-woven-class-mage-accept-1880-mage-tastic-gizmonitor",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1880,
            alternativeQuests = { 1861 },
            priority = 2270,
        },
        {
            priority = 2280,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1880-mage-tastic-gizmonitor",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1880-mage-tastic-gizmonitor",
        },
        {
            priority = 2290,
            id = "woven-class-mage-objective-1880-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1880-mage-tastic-gizmonitor" },
            classAction = "objective-1880-quest-work",
        },
        {
            priority = 2300,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = { "woven-class-mage-accept-1880-mage-tastic-gizmonitor", "woven-class-mage-objective-1880-quest-work" },
            id = "woven-class-mage-turnin-1880-mage-tastic-gizmonitor",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1880-mage-tastic-gizmonitor",
        },
        {
            priority = 2310,
            route = {
                { y = 0.52, mapID = 1426, label = "Magis Sparkmantle", x = 0.474, offMapText = "Travel to Magis Sparkmantle in Dun Morogh." },
            },
            id = "woven-class-mage-accept-1879-speak-with-bink",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1879-speak-with-bink",
        },
        {
            priority = 2320,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = { "woven-class-mage-accept-1879-speak-with-bink" },
            id = "woven-class-mage-turnin-1879-speak-with-bink",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1879-speak-with-bink",
        },
        {
            id = "level-before-woven-class-mage-accept-93791-speak-with-belann",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 93791,
            priority = 2330,
        },
        {
            priority = 2340,
            route = {
                { y = 0.804, mapID = 2521, label = "Anathamaas Aetherwind", x = 0.658, offMapText = "Travel to Anathamaas Aetherwind in Zephras Isle." },
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            id = "woven-class-mage-accept-93791-speak-with-belann",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-93791-speak-with-belann",
        },
        {
            priority = 2350,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = { "woven-class-mage-accept-93791-speak-with-belann" },
            id = "woven-class-mage-turnin-93791-speak-with-belann",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-93791-speak-with-belann",
        },
        {
            priority = 2360,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-93797-boughs-in-the-wind",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-93797-boughs-in-the-wind",
        },
        {
            priority = 2370,
            id = "woven-class-mage-objective-93797-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-93797-boughs-in-the-wind" },
            classAction = "objective-93797-quest-work",
        },
        {
            priority = 2380,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = { "woven-class-mage-accept-93797-boughs-in-the-wind", "woven-class-mage-objective-93797-quest-work" },
            id = "woven-class-mage-turnin-93797-boughs-in-the-wind",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-93797-boughs-in-the-wind",
        },
        {
            id = "level-before-woven-class-mage-accept-1861-mirror-lake",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
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
            checkpointQuest = 1861,
            alternativeQuests = { 1880 },
            priority = 2390,
        },
        {
            priority = 2400,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1861-mirror-lake",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1861-mirror-lake",
        },
        {
            priority = 2410,
            id = "woven-class-mage-objective-1861-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1861-mirror-lake" },
            classAction = "objective-1861-quest-work",
        },
        {
            priority = 2420,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1861-mirror-lake", "woven-class-mage-objective-1861-quest-work" },
            id = "woven-class-mage-turnin-1861-mirror-lake",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1861-mirror-lake",
        },
        {
            priority = 2430,
            route = {
                { y = 0.662, mapID = 1429, label = "Zaldimar Wefhellt", x = 0.432, offMapText = "Travel to Zaldimar Wefhellt in Elwynn Forest." },
            },
            id = "woven-class-mage-accept-1860-speak-with-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1860-speak-with-jennea",
        },
        {
            priority = 2440,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-1860-speak-with-jennea" },
            id = "woven-class-mage-turnin-1860-speak-with-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1860-speak-with-jennea",
        },
        {
            priority = 2450,
            route = {
                { y = 0.802, mapID = 1453, label = "Garion Wendell", x = 0.378, offMapText = "Travel to Garion Wendell in Stormwind City." },
            },
            id = "woven-class-mage-accept-97286-research-access",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            dependsOn = {},
            classAction = "accept-97286-research-access",
        },
        {
            priority = 2460,
            route = {
                { y = 0.802, mapID = 1453, label = "Garion Wendell", x = 0.378, offMapText = "Travel to Garion Wendell in Stormwind City." },
            },
            dependsOn = { "woven-class-mage-accept-97286-research-access" },
            id = "woven-class-mage-turnin-97286-research-access",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            classAction = "turnin-97286-research-access",
        },
        {
            priority = 2470,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.5869 },
            },
            id = "woven-class-druid-accept-456-the-balance-of-nature",
            conditions = {
                all = {
                    {
                        any = {
                            {
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
                        },
                    },
                    { class = 11 },
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
            priority = 2480,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            id = "woven-class-druid-objective-456-1-young-nightsaber",
            conditions = {
                all = {
                    {
                        any = {
                            {
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
                        },
                    },
                    { class = 11 },
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
            dependsOn = { "woven-class-druid-accept-456-the-balance-of-nature" },
            classAction = "objective-456-1-young-nightsaber",
        },
        {
            priority = 2490,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            dependsOn = { "woven-class-druid-accept-456-the-balance-of-nature" },
            id = "woven-class-druid-objective-456-1-young-nightsaber-2",
            conditions = {
                all = {
                    {
                        any = {
                            {
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
                        },
                    },
                    { class = 11 },
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
            priority = 2500,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Thistle Boar", offMapText = "Travel to Young Thistle Boar.", x = 0.582 },
            },
            dependsOn = { "woven-class-druid-accept-456-the-balance-of-nature" },
            id = "woven-class-druid-objective-456-2-young-thistle-boar",
            conditions = {
                all = {
                    {
                        any = {
                            {
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
                        },
                    },
                    { class = 11 },
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
            priority = 2510,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            dependsOn = {
                "woven-class-druid-accept-456-the-balance-of-nature",
                "woven-class-druid-objective-456-1-young-nightsaber",
                "woven-class-druid-objective-456-1-young-nightsaber-2",
                "woven-class-druid-objective-456-2-young-thistle-boar",
            },
            id = "woven-class-druid-turnin-456-the-balance-of-nature",
            conditions = {
                all = {
                    {
                        any = {
                            {
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
                        },
                    },
                    { class = 11 },
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
            priority = 2520,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "woven-class-hunter-accept-3117-etched-sigil",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3117-etched-sigil",
        },
        {
            priority = 2530,
            route = {
                { y = 0.404, mapID = 1438, label = "Ayanna Everstride", x = 0.586, offMapText = "Travel to Ayanna Everstride in Teldrassil." },
            },
            dependsOn = { "woven-class-hunter-accept-3117-etched-sigil" },
            id = "woven-class-hunter-turnin-3117-etched-sigil",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3117-etched-sigil",
        },
        {
            priority = 2540,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "woven-class-priest-accept-3119-hallowed-sigil",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3119-hallowed-sigil",
        },
        {
            priority = 2550,
            route = {
                { y = 0.404, mapID = 1438, label = "Shanda", x = 0.592, offMapText = "Travel to Shanda in Teldrassil." },
            },
            dependsOn = { "woven-class-priest-accept-3119-hallowed-sigil" },
            id = "woven-class-priest-turnin-3119-hallowed-sigil",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3119-hallowed-sigil",
        },
        {
            priority = 2560,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "woven-class-rogue-accept-3118-encrypted-sigil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3118-encrypted-sigil",
        },
        {
            priority = 2570,
            route = {
                { y = 0.386, mapID = 1438, label = "Frahun Shadewhisper", x = 0.596, offMapText = "Travel to Frahun Shadewhisper in Teldrassil." },
            },
            dependsOn = { "woven-class-rogue-accept-3118-encrypted-sigil" },
            id = "woven-class-rogue-turnin-3118-encrypted-sigil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3118-encrypted-sigil",
        },
        {
            priority = 2580,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "woven-class-warrior-accept-3116-simple-sigil",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3116-simple-sigil",
        },
        {
            priority = 2590,
            route = {
                { y = 0.384, mapID = 1438, label = "Alyissia", x = 0.596, offMapText = "Travel to Alyissia in Teldrassil." },
            },
            dependsOn = { "woven-class-warrior-accept-3116-simple-sigil" },
            id = "woven-class-warrior-turnin-3116-simple-sigil",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3116-simple-sigil",
        },
        {
            priority = 2600,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "woven-class-druid-accept-3120-verdant-sigil",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3120-verdant-sigil",
        },
        {
            priority = 2610,
            route = {
                { y = 0.404, mapID = 1438, label = "Mardant Strongoak", x = 0.586, offMapText = "Travel to Mardant Strongoak in Teldrassil." },
            },
            dependsOn = { "woven-class-druid-accept-3120-verdant-sigil" },
            id = "woven-class-druid-turnin-3120-verdant-sigil",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3120-verdant-sigil",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 2620,
            id = "woven-class-druid-accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-coming-of-age",
        },
        {
            priority = 2630,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "woven-class-druid-accept-coming-of-age" },
            id = "woven-class-druid-turnin-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 2640,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            id = "woven-class-druid-accept-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-92461-harmony-in-balance",
        },
        {
            priority = 2650,
            route = {
                { y = 0.256, mapID = 2521, label = "Juvenile Vuldren", x = 0.432, offMapText = "Travel to Juvenile Vuldren in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-92461-harmony-in-balance" },
            id = "woven-class-druid-objective-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 2660,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-druid-accept-92461-harmony-in-balance",
                "woven-class-druid-objective-92461-harmony-in-balance",
            },
            id = "woven-class-druid-turnin-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 11 },
                                    {
                                        class = { 11 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 11 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
            id = "level-before-woven-class-hunter-accept-92482-the-way-of-the-hunter",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 92482,
            priority = 2670,
        },
        {
            priority = 2680,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92482-the-way-of-the-hunter",
        },
        {
            priority = 2690,
            route = {
                { y = 0.236, mapID = 2521, label = "Tai'ree Farsight", x = 0.424, offMapText = "Travel to Tai'ree Farsight in Zephras Isle." },
            },
            dependsOn = { "woven-class-hunter-accept-92482-the-way-of-the-hunter" },
            id = "woven-class-hunter-turnin-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92482-the-way-of-the-hunter",
        },
        {
            id = "level-before-woven-class-rogue-accept-92483-at-home-in-the-shadows",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 92483,
            priority = 2700,
        },
        {
            priority = 2710,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92483-at-home-in-the-shadows",
        },
        {
            priority = 2720,
            route = {
                { y = 0.242, mapID = 2521, label = "Akeri Duskblade", x = 0.436, offMapText = "Travel to Akeri Duskblade in Zephras Isle." },
            },
            dependsOn = { "woven-class-rogue-accept-92483-at-home-in-the-shadows" },
            id = "woven-class-rogue-turnin-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92483-at-home-in-the-shadows",
        },
        {
            id = "level-before-woven-class-warrior-accept-92532-the-warriors-path",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 92532,
            priority = 2730,
        },
        {
            priority = 2740,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92532-the-warriors-path",
        },
        {
            priority = 2750,
            route = {
                { y = 0.242, mapID = 2521, label = "Blademaster Ren", x = 0.436, offMapText = "Travel to Blademaster Ren in Zephras Isle." },
            },
            dependsOn = { "woven-class-warrior-accept-92532-the-warriors-path" },
            id = "woven-class-warrior-turnin-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92532-the-warriors-path",
        },
        {
            priority = 2760,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-92481-a-student-of-the-arcane",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92481-a-student-of-the-arcane",
        },
        {
            priority = 2770,
            dependsOn = { "woven-class-mage-accept-92481-a-student-of-the-arcane" },
            id = "woven-class-mage-objective-92481-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92481-reviewed-mechanics",
        },
        {
            priority = 2780,
            route = {
                { y = 0.236, mapID = 2521, label = "Dorii Brightwhisper", x = 0.416, offMapText = "Travel to Dorii Brightwhisper in Zephras Isle." },
            },
            dependsOn = {
                "woven-class-mage-accept-92481-a-student-of-the-arcane",
                "woven-class-mage-objective-92481-reviewed-mechanics",
            },
            id = "woven-class-mage-turnin-92481-a-student-of-the-arcane",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92481-a-student-of-the-arcane",
        },
        {
            id = "level-before-woven-class-druid-accept-92485-a-student-of-nature",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 92485,
            priority = 2790,
        },
        {
            priority = 2800,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92485-a-student-of-nature",
        },
        {
            priority = 2810,
            route = {
                { y = 0.234, mapID = 2521, label = "Xyton Silverwind", x = 0.416, offMapText = "Travel to Xyton Silverwind in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-92485-a-student-of-nature" },
            id = "woven-class-druid-turnin-92485-a-student-of-nature",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92485-a-student-of-nature",
        },
        {
            id = "level-before-woven-class-druid-accept-94914-moonglade",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
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
            checkpointQuest = 94914,
            priority = 2820,
        },
        {
            priority = 2830,
            route = {
                { y = 0.554, mapID = 1453, label = "Sheldras Moontree", x = 0.21, offMapText = "Travel to Sheldras Moontree in Stormwind City." },
            },
            id = "woven-class-druid-accept-94914-moonglade",
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
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94914-moonglade",
        },
        {
            priority = 2840,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-94914-moonglade" },
            id = "woven-class-druid-turnin-94914-moonglade",
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
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94914-moonglade",
        },
        {
            priority = 2850,
            route = {
                { y = 0.786, mapID = 1416, label = "Archmage Ansirem Runeweaver", x = 0.188, offMapText = "Travel to Archmage Ansirem Runeweaver in Alterac Mountains." },
            },
            id = "woven-class-druid-accept-94912-child-of-nature",
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
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94912-child-of-nature",
        },
        {
            priority = 2860,
            route = {
                { y = 0.554, mapID = 1453, label = "Sheldras Moontree", x = 0.21, offMapText = "Travel to Sheldras Moontree in Stormwind City." },
            },
            dependsOn = { "woven-class-druid-accept-94912-child-of-nature" },
            id = "woven-class-druid-turnin-94912-child-of-nature",
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
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94912-child-of-nature",
        },
        {
            id = "level-before-woven-class-druid-accept-94006-the-great-ursera-spirit",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94006,
            priority = 2870,
        },
        {
            priority = 2880,
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", x = 0.64, offMapText = "Travel to Lotheluum Starbreeze in Zephras Isle." },
            },
            id = "woven-class-druid-accept-94006-the-great-ursera-spirit",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94006-the-great-ursera-spirit",
        },
        {
            priority = 2890,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-94006-the-great-ursera-spirit" },
            id = "woven-class-druid-turnin-94006-the-great-ursera-spirit",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94006-the-great-ursera-spirit",
        },
        {
            priority = 2900,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-94638-strength-and-mercy",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94638-strength-and-mercy",
        },
        {
            priority = 2910,
            id = "woven-class-druid-objective-94638-quest-work",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-94638-strength-and-mercy" },
            classAction = "objective-94638-quest-work",
        },
        {
            priority = 2920,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", x = 0.698, offMapText = "Travel to Urs'endris in Zephras Isle." },
            },
            dependsOn = { "woven-class-druid-accept-94638-strength-and-mercy", "woven-class-druid-objective-94638-quest-work" },
            id = "woven-class-druid-turnin-94638-strength-and-mercy",
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
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94638-strength-and-mercy",
        },
        {
            id = "level-before-woven-class-druid-accept-5921-moonglade",
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
            checkpointQuest = 5921,
            priority = 2930,
        },
        {
            priority = 2940,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5921-moonglade",
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
            classAction = "accept-5921-moonglade",
        },
        {
            priority = 2950,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-5921-moonglade" },
            id = "woven-class-druid-turnin-5921-moonglade",
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
            classAction = "turnin-5921-moonglade",
        },
        {
            priority = 2960,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5929-great-bear-spirit",
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
            classAction = "accept-5929-great-bear-spirit",
        },
        {
            priority = 2970,
            id = "woven-class-druid-objective-5929-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-5929-great-bear-spirit" },
            classAction = "objective-5929-quest-work",
        },
        {
            priority = 2980,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = { "woven-class-druid-accept-5929-great-bear-spirit", "woven-class-druid-objective-5929-quest-work" },
            id = "woven-class-druid-turnin-5929-great-bear-spirit",
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
            classAction = "turnin-5929-great-bear-spirit",
        },
        {
            priority = 2990,
            route = {
                { y = 0.304, mapID = 1450, label = "Dendrite Starblaze", x = 0.562, offMapText = "Travel to Dendrite Starblaze in Moonglade." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5931-back-to-darnassus",
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
            classAction = "accept-5931-back-to-darnassus",
        },
        {
            priority = 3000,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-5931-back-to-darnassus" },
            id = "woven-class-druid-turnin-5931-back-to-darnassus",
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
            classAction = "turnin-5931-back-to-darnassus",
        },
        {
            priority = 3010,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-6001-body-and-heart",
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
            classAction = "accept-6001-body-and-heart",
        },
        {
            priority = 3020,
            id = "woven-class-druid-objective-6001-quest-work",
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
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-6001-body-and-heart" },
            classAction = "objective-6001-quest-work",
        },
        {
            priority = 3030,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-6001-body-and-heart", "woven-class-druid-objective-6001-quest-work" },
            id = "woven-class-druid-turnin-6001-body-and-heart",
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
            classAction = "turnin-6001-body-and-heart",
        },
        {
            priority = 3040,
            route = {
                { y = 0.616, mapID = 1438, label = "Kal", x = 0.56, offMapText = "Travel to Kal in Teldrassil." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5925-heeding-the-call",
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
            classAction = "accept-5925-heeding-the-call",
        },
        {
            priority = 3050,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-5925-heeding-the-call" },
            id = "woven-class-druid-turnin-5925-heeding-the-call",
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
            classAction = "turnin-5925-heeding-the-call",
        },
        {
            priority = 3060,
            route = {
                { y = 0.514, mapID = 1453, label = "Theridran", x = 0.214, offMapText = "Travel to Theridran in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-5924-heeding-the-call",
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
            classAction = "accept-5924-heeding-the-call",
        },
        {
            priority = 3070,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-5924-heeding-the-call" },
            id = "woven-class-druid-turnin-5924-heeding-the-call",
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
            classAction = "turnin-5924-heeding-the-call",
        },
        {
            priority = 3080,
            route = {
                { y = 0.078, mapID = 1457, label = "Denatharion", x = 0.348, offMapText = "Travel to Denatharion in Darnassus." },
            },
            id = "woven-class-druid-accept-5923-heeding-the-call",
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
            dependsOn = {},
            classAction = "accept-5923-heeding-the-call",
        },
        {
            priority = 3090,
            route = {
                { y = 0.08, mapID = 1457, label = "Mathrengyl Bearwalker", x = 0.352, offMapText = "Travel to Mathrengyl Bearwalker in Darnassus." },
            },
            dependsOn = { "woven-class-druid-accept-5923-heeding-the-call" },
            id = "woven-class-druid-turnin-5923-heeding-the-call",
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
            classAction = "turnin-5923-heeding-the-call",
        },
        {
            priority = 3100,
            route = {
                { y = 0.4295, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            id = "woven-class-paladin-accept-783-a-threat-within",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 12,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-783-a-threat-within",
        },
        {
            priority = 3110,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "woven-class-paladin-accept-783-a-threat-within" },
            id = "woven-class-paladin-turnin-783-a-threat-within",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            classAction = "turnin-783-a-threat-within",
        },
        {
            priority = 3120,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            id = "woven-class-paladin-accept-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7-kobold-camp-cleanup",
        },
        {
            priority = 3130,
            route = {
                { y = 0.376, mapID = 1429, label = "Kobold Vermin", offMapText = "Travel to Kobold Vermin.", x = 0.48 },
            },
            dependsOn = { "woven-class-paladin-accept-7-kobold-camp-cleanup" },
            id = "woven-class-paladin-objective-7-1-kobold-vermin",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 18,
            useClientPin = false,
            classAction = "objective-7-1-kobold-vermin",
        },
        {
            priority = 3140,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "woven-class-paladin-accept-7-kobold-camp-cleanup", "woven-class-paladin-objective-7-1-kobold-vermin" },
            id = "woven-class-paladin-turnin-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 20,
            useClientPin = false,
            classAction = "turnin-7-kobold-camp-cleanup",
        },
        {
            priority = 3150,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-warlock-accept-3105-tainted-letter",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3105-tainted-letter",
        },
        {
            priority = 3160,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warlock-accept-3105-tainted-letter" },
            id = "woven-class-warlock-turnin-3105-tainted-letter",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3105-tainted-letter",
        },
        {
            priority = 3170,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-priest-accept-3103-hallowed-letter",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3103-hallowed-letter",
        },
        {
            priority = 3180,
            route = {
                { y = 0.396, mapID = 1429, label = "Priestess Anetta", x = 0.498, offMapText = "Travel to Priestess Anetta in Elwynn Forest." },
            },
            dependsOn = { "woven-class-priest-accept-3103-hallowed-letter" },
            id = "woven-class-priest-turnin-3103-hallowed-letter",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3103-hallowed-letter",
        },
        {
            priority = 3190,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-rogue-accept-3102-encrypted-letter",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3102-encrypted-letter",
        },
        {
            priority = 3200,
            route = {
                { y = 0.398, mapID = 1429, label = "Jorik Kerridan", x = 0.504, offMapText = "Travel to Jorik Kerridan in Elwynn Forest." },
            },
            dependsOn = { "woven-class-rogue-accept-3102-encrypted-letter" },
            id = "woven-class-rogue-turnin-3102-encrypted-letter",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3102-encrypted-letter",
        },
        {
            priority = 3210,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-warrior-accept-3100-simple-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3100-simple-letter",
        },
        {
            priority = 3220,
            route = {
                { y = 0.422, mapID = 1429, label = "Llane Beshere", x = 0.502, offMapText = "Travel to Llane Beshere in Elwynn Forest." },
            },
            dependsOn = { "woven-class-warrior-accept-3100-simple-letter" },
            id = "woven-class-warrior-turnin-3100-simple-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3100-simple-letter",
        },
        {
            priority = 3230,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-mage-accept-3104-glyphic-letter",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3104-glyphic-letter",
        },
        {
            priority = 3240,
            route = {
                { y = 0.394, mapID = 1429, label = "Khelden Bremen", x = 0.496, offMapText = "Travel to Khelden Bremen in Elwynn Forest." },
            },
            dependsOn = { "woven-class-mage-accept-3104-glyphic-letter" },
            id = "woven-class-mage-turnin-3104-glyphic-letter",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3104-glyphic-letter",
        },
        {
            priority = 3250,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "woven-class-paladin-accept-3101-consecrated-letter",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3101-consecrated-letter",
        },
        {
            priority = 3260,
            route = {
                { y = 0.42, mapID = 1429, label = "Brother Sammuel", x = 0.504, offMapText = "Travel to Brother Sammuel in Elwynn Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-3101-consecrated-letter" },
            id = "woven-class-paladin-turnin-3101-consecrated-letter",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3101-consecrated-letter",
        },
        {
            priority = 3270,
            route = {
                { mapID = 1426, x = 0.2993, y = 0.7120000000000001, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-paladin-accept-179-dwarven-outfitters",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
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
            dependsOn = {},
            classAction = "accept-179-dwarven-outfitters",
        },
        {
            priority = 3280,
            route = {
                { y = 0.744, mapID = 1426, label = "Ragged Young Wolf", offMapText = "Travel to Ragged Young Wolf.", x = 0.306 },
            },
            id = "woven-class-paladin-objective-179-1-ragged-young-wolf",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 9,
            useClientPin = false,
            dependsOn = { "woven-class-paladin-accept-179-dwarven-outfitters" },
            classAction = "objective-179-1-ragged-young-wolf",
        },
        {
            priority = 3290,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            dependsOn = {
                "woven-class-paladin-accept-179-dwarven-outfitters",
                "woven-class-paladin-objective-179-1-ragged-young-wolf",
            },
            id = "woven-class-paladin-turnin-179-dwarven-outfitters",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 2 },
                                    {
                                        class = { 2 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 2 },
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
            classAction = "turnin-179-dwarven-outfitters",
        },
        {
            priority = 3300,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-hunter-accept-3108-etched-rune",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3108-etched-rune",
        },
        {
            priority = 3310,
            route = {
                { y = 0.674, mapID = 1426, label = "Thorgas Grimson", x = 0.29, offMapText = "Travel to Thorgas Grimson in Dun Morogh." },
            },
            dependsOn = { "woven-class-hunter-accept-3108-etched-rune" },
            id = "woven-class-hunter-turnin-3108-etched-rune",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3108-etched-rune",
        },
        {
            priority = 3320,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-warlock-accept-3115-tainted-memorandum",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3115-tainted-memorandum",
        },
        {
            priority = 3330,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            dependsOn = { "woven-class-warlock-accept-3115-tainted-memorandum" },
            id = "woven-class-warlock-turnin-3115-tainted-memorandum",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3115-tainted-memorandum",
        },
        {
            priority = 3340,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-priest-accept-3110-hallowed-rune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3110-hallowed-rune",
        },
        {
            priority = 3350,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            dependsOn = { "woven-class-priest-accept-3110-hallowed-rune" },
            id = "woven-class-priest-turnin-3110-hallowed-rune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3110-hallowed-rune",
        },
        {
            priority = 3360,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-rogue-accept-3113-encrypted-memorandum",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3113-encrypted-memorandum",
        },
        {
            priority = 3370,
            route = {
                { y = 0.674, mapID = 1426, label = "Solm Hargrin", x = 0.284, offMapText = "Travel to Solm Hargrin in Dun Morogh." },
            },
            dependsOn = { "woven-class-rogue-accept-3113-encrypted-memorandum" },
            id = "woven-class-rogue-turnin-3113-encrypted-memorandum",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3113-encrypted-memorandum",
        },
        {
            priority = 3380,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-rogue-accept-3109-encrypted-rune",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3109-encrypted-rune",
        },
        {
            priority = 3390,
            route = {
                { y = 0.674, mapID = 1426, label = "Solm Hargrin", x = 0.284, offMapText = "Travel to Solm Hargrin in Dun Morogh." },
            },
            dependsOn = { "woven-class-rogue-accept-3109-encrypted-rune" },
            id = "woven-class-rogue-turnin-3109-encrypted-rune",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3109-encrypted-rune",
        },
        {
            priority = 3400,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-warrior-accept-3112-simple-memorandum",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3112-simple-memorandum",
        },
        {
            priority = 3410,
            route = {
                { y = 0.672, mapID = 1426, label = "Thran Khorman", x = 0.288, offMapText = "Travel to Thran Khorman in Dun Morogh." },
            },
            dependsOn = { "woven-class-warrior-accept-3112-simple-memorandum" },
            id = "woven-class-warrior-turnin-3112-simple-memorandum",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3112-simple-memorandum",
        },
        {
            priority = 3420,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-warrior-accept-3106-simple-rune",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3106-simple-rune",
        },
        {
            priority = 3430,
            route = {
                { y = 0.672, mapID = 1426, label = "Thran Khorman", x = 0.288, offMapText = "Travel to Thran Khorman in Dun Morogh." },
            },
            dependsOn = { "woven-class-warrior-accept-3106-simple-rune" },
            id = "woven-class-warrior-turnin-3106-simple-rune",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3106-simple-rune",
        },
        {
            priority = 3440,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-mage-accept-3114-glyphic-memorandum",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3114-glyphic-memorandum",
        },
        {
            priority = 3450,
            route = {
                { y = 0.664, mapID = 1426, label = "Marryk Nurribit", x = 0.286, offMapText = "Travel to Marryk Nurribit in Dun Morogh." },
            },
            dependsOn = { "woven-class-mage-accept-3114-glyphic-memorandum" },
            id = "woven-class-mage-turnin-3114-glyphic-memorandum",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3114-glyphic-memorandum",
        },
        {
            priority = 3460,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "woven-class-paladin-accept-3107-consecrated-rune",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3107-consecrated-rune",
        },
        {
            priority = 3470,
            route = {
                { y = 0.682, mapID = 1426, label = "Bromos Grummner", x = 0.288, offMapText = "Travel to Bromos Grummner in Dun Morogh." },
            },
            dependsOn = { "woven-class-paladin-accept-3107-consecrated-rune" },
            id = "woven-class-paladin-turnin-3107-consecrated-rune",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3107-consecrated-rune",
        },
        {
            id = "level-before-woven-class-paladin-accept-3681-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 3681,
            alternativeQuests = { 2998 },
            priority = 3480,
        },
        {
            priority = 3490,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "woven-class-paladin-accept-3681-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3681-tome-of-divinity",
        },
        {
            priority = 3500,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-3681-tome-of-divinity" },
            id = "woven-class-paladin-turnin-3681-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3681-tome-of-divinity",
        },
        {
            id = "level-before-woven-class-paladin-accept-3000-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
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
            checkpointQuest = 3000,
            alternativeQuests = { 2997, 2999 },
            priority = 3510,
        },
        {
            priority = 3520,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            id = "woven-class-paladin-accept-3000-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3000-tome-of-divinity",
        },
        {
            priority = 3530,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-3000-tome-of-divinity" },
            id = "woven-class-paladin-turnin-3000-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3000-tome-of-divinity",
        },
        {
            priority = 3540,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "woven-class-paladin-accept-2999-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2999-tome-of-divinity",
        },
        {
            priority = 3550,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-2999-tome-of-divinity" },
            id = "woven-class-paladin-turnin-2999-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2999-tome-of-divinity",
        },
        {
            priority = 3560,
            route = {
                { y = 0.66, mapID = 1429, label = "Brother Wilhelm", x = 0.41, offMapText = "Travel to Brother Wilhelm in Elwynn Forest." },
            },
            id = "woven-class-paladin-accept-2998-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2998-tome-of-divinity",
        },
        {
            priority = 3570,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-2998-tome-of-divinity" },
            id = "woven-class-paladin-turnin-2998-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2998-tome-of-divinity",
        },
        {
            id = "loot-starter-before-woven-class-paladin-accept-1646-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 3580,
            classAction = "loot-starter-before-accept-1646-the-tome-of-divinity",
        },
        {
            priority = 3590,
            dependsOn = {},
            id = "woven-class-paladin-accept-1646-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1646-the-tome-of-divinity",
        },
        {
            priority = 3600,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1646-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1646-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1646-the-tome-of-divinity",
        },
        {
            priority = 3610,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1647-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1647-the-tome-of-divinity",
        },
        {
            priority = 3620,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1647-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1647-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1647-the-tome-of-divinity",
        },
        {
            priority = 3630,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1648-the-tome-of-divinity",
        },
        {
            priority = 3640,
            route = {
                { y = 0.126, mapID = 1455, label = "Cut-throat Mugger", x = 0.518, offMapText = "Travel to Cut-throat Mugger in Ironforge." },
                { y = 0.124, mapID = 1455, label = "Cut-throat Mugger", x = 0.518, offMapText = "Travel to Cut-throat Mugger in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1648-the-tome-of-divinity" },
            id = "woven-class-paladin-objective-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1648-the-tome-of-divinity",
        },
        {
            priority = 3650,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = {
                "woven-class-paladin-accept-1648-the-tome-of-divinity",
                "woven-class-paladin-objective-1648-the-tome-of-divinity",
            },
            id = "woven-class-paladin-turnin-1648-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1648-the-tome-of-divinity",
        },
        {
            priority = 3660,
            route = {
                { y = 0.7, mapID = 1455, label = "John Turner", x = 0.278, offMapText = "Travel to John Turner in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1778-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1778-the-tome-of-divinity",
        },
        {
            priority = 3670,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1778-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1778-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1778-the-tome-of-divinity",
        },
        {
            priority = 3680,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1779-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1779-the-tome-of-divinity",
        },
        {
            priority = 3690,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1779-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1779-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1779-the-tome-of-divinity",
        },
        {
            priority = 3700,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            id = "woven-class-paladin-accept-1789-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1789-the-symbol-of-life",
        },
        {
            priority = 3710,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1789-the-symbol-of-life" },
            id = "woven-class-paladin-turnin-1789-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1789-the-symbol-of-life",
        },
        {
            priority = 3720,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1783-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1783-the-tome-of-divinity",
        },
        {
            priority = 3730,
            id = "woven-class-paladin-objective-1783-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-paladin-accept-1783-the-tome-of-divinity" },
            classAction = "objective-1783-quest-work",
        },
        {
            priority = 3740,
            route = {
                { y = 0.58, mapID = 1426, label = "Narm Faulk", x = 0.782, offMapText = "Travel to Narm Faulk in Dun Morogh." },
            },
            dependsOn = { "woven-class-paladin-accept-1783-the-tome-of-divinity", "woven-class-paladin-objective-1783-quest-work" },
            id = "woven-class-paladin-turnin-1783-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1783-the-tome-of-divinity",
        },
        {
            priority = 3750,
            route = {
                { y = 0.58, mapID = 1426, label = "Narm Faulk", x = 0.782, offMapText = "Travel to Narm Faulk in Dun Morogh." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1784-the-tome-of-divinity",
        },
        {
            priority = 3760,
            route = {
                { y = 0.624, mapID = 1426, label = "Dark Iron Spy", x = 0.778, offMapText = "Travel to Dark Iron Spy in Dun Morogh." },
            },
            dependsOn = { "woven-class-paladin-accept-1784-the-tome-of-divinity" },
            id = "woven-class-paladin-objective-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1784-the-tome-of-divinity",
        },
        {
            priority = 3770,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = {
                "woven-class-paladin-accept-1784-the-tome-of-divinity",
                "woven-class-paladin-objective-1784-the-tome-of-divinity",
            },
            id = "woven-class-paladin-turnin-1784-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1784-the-tome-of-divinity",
        },
        {
            priority = 3780,
            route = {
                { y = 0.086, mapID = 1455, label = "Muiredon Battleforge", x = 0.236, offMapText = "Travel to Muiredon Battleforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1785-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1785-the-tome-of-divinity",
        },
        {
            priority = 3790,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1785-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1785-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1785-the-tome-of-divinity",
        },
        {
            priority = 3800,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1645-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1645-the-tome-of-divinity",
        },
        {
            priority = 3810,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-1645-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1645-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1645-the-tome-of-divinity",
        },
        {
            priority = 3820,
            route = {
                { y = 0.52, mapID = 1426, label = "Azar Stronghammer", x = 0.476, offMapText = "Travel to Azar Stronghammer in Dun Morogh." },
            },
            id = "woven-class-paladin-accept-2997-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2997-tome-of-divinity",
        },
        {
            priority = 3830,
            route = {
                { y = 0.12, mapID = 1455, label = "Tiza Battleforge", x = 0.274, offMapText = "Travel to Tiza Battleforge in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-2997-tome-of-divinity" },
            id = "woven-class-paladin-turnin-2997-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2997-tome-of-divinity",
        },
        {
            id = "loot-starter-before-woven-class-paladin-accept-1642-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 3840,
            classAction = "loot-starter-before-accept-1642-the-tome-of-divinity",
        },
        {
            priority = 3850,
            dependsOn = {},
            id = "woven-class-paladin-accept-1642-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1642-the-tome-of-divinity",
        },
        {
            priority = 3860,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1642-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1642-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1642-the-tome-of-divinity",
        },
        {
            priority = 3870,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1643-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1643-the-tome-of-divinity",
        },
        {
            priority = 3880,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1643-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1643-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1643-the-tome-of-divinity",
        },
        {
            priority = 3890,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1644-the-tome-of-divinity",
        },
        {
            priority = 3900,
            route = {
                { y = 0.618, mapID = 1453, label = "Forlorn Spirit", x = 0.296, offMapText = "Travel to Forlorn Spirit in Stormwind City." },
                { y = 0.45, mapID = 1453, label = "Old Town Thug", x = 0.7, offMapText = "Travel to Old Town Thug in Stormwind City." },
                { y = 0.292, mapID = 1453, label = "Cut-throat Mugger", x = 0.618, offMapText = "Travel to Cut-throat Mugger in Stormwind City." },
                { y = 0.638, mapID = 1453, label = "Food Crate", x = 0.565, offMapText = "Travel to Food Crate in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1644-the-tome-of-divinity" },
            id = "woven-class-paladin-objective-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1644-the-tome-of-divinity",
        },
        {
            priority = 3910,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = {
                "woven-class-paladin-accept-1644-the-tome-of-divinity",
                "woven-class-paladin-objective-1644-the-tome-of-divinity",
            },
            id = "woven-class-paladin-turnin-1644-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1644-the-tome-of-divinity",
        },
        {
            priority = 3920,
            route = {
                { y = 0.618, mapID = 1453, label = "Stephanie Turner", x = 0.57, offMapText = "Travel to Stephanie Turner in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1780-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1780-the-tome-of-divinity",
        },
        {
            priority = 3930,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1780-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1780-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1780-the-tome-of-divinity",
        },
        {
            priority = 3940,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1781-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1781-the-tome-of-divinity",
        },
        {
            priority = 3950,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1781-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1781-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1781-the-tome-of-divinity",
        },
        {
            priority = 3960,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "woven-class-paladin-accept-1790-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1790-the-symbol-of-life",
        },
        {
            priority = 3970,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1790-the-symbol-of-life" },
            id = "woven-class-paladin-turnin-1790-the-symbol-of-life",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1790-the-symbol-of-life",
        },
        {
            priority = 3980,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1786-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1786-the-tome-of-divinity",
        },
        {
            priority = 3990,
            id = "woven-class-paladin-objective-1786-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-paladin-accept-1786-the-tome-of-divinity" },
            classAction = "objective-1786-quest-work",
        },
        {
            priority = 4000,
            route = {
                { y = 0.514, mapID = 1429, label = "Henze Faulk", x = 0.726, offMapText = "Travel to Henze Faulk in Elwynn Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-1786-the-tome-of-divinity", "woven-class-paladin-objective-1786-quest-work" },
            id = "woven-class-paladin-turnin-1786-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1786-the-tome-of-divinity",
        },
        {
            priority = 4010,
            route = {
                { y = 0.514, mapID = 1429, label = "Henze Faulk", x = 0.726, offMapText = "Travel to Henze Faulk in Elwynn Forest." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1787-the-tome-of-divinity",
        },
        {
            priority = 4020,
            route = {
                { y = 0.596, mapID = 1429, label = "Defias Rogue Wizard", x = 0.284, offMapText = "Travel to Defias Rogue Wizard in Elwynn Forest." },
                { y = 0.87, mapID = 1429, label = "Defias Bodyguard", x = 0.48, offMapText = "Travel to Defias Bodyguard in Elwynn Forest." },
            },
            dependsOn = { "woven-class-paladin-accept-1787-the-tome-of-divinity" },
            id = "woven-class-paladin-objective-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1787-the-tome-of-divinity",
        },
        {
            priority = 4030,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = {
                "woven-class-paladin-accept-1787-the-tome-of-divinity",
                "woven-class-paladin-objective-1787-the-tome-of-divinity",
            },
            id = "woven-class-paladin-turnin-1787-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1787-the-tome-of-divinity",
        },
        {
            priority = 4040,
            route = {
                { y = 0.266, mapID = 1453, label = "Gazin Tenorm", x = 0.386, offMapText = "Travel to Gazin Tenorm in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-1788-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1788-the-tome-of-divinity",
        },
        {
            priority = 4050,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1788-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1788-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1788-the-tome-of-divinity",
        },
        {
            priority = 4060,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "woven-class-paladin-accept-1641-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1641-the-tome-of-divinity",
        },
        {
            priority = 4070,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-1641-the-tome-of-divinity" },
            id = "woven-class-paladin-turnin-1641-the-tome-of-divinity",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1641-the-tome-of-divinity",
        },
        {
            id = "loot-starter-before-connector-accept-184-furlbrow-s-deed",
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
            text = "Loot Westfall Deed from Defias Bandit, Defias Rogue Wizard, Surena Caledon. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Westfall Deed", minCount = 1 },
                    },
                    {
                        quest = { id = 184, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.3406, y = 0.5559000000000001, label = "Defias Bandit", offMapText = "Travel to Defias Bandit." },
            },
            dependsOn = {},
            priority = 4080,
        },
        {
            id = "level-before-connector-accept-184-furlbrow-s-deed",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 184,
            priority = 4090,
        },
        {
            priority = 4100,
            text = "Use the Westfall Deed to accept Furlbrow's Deed.",
            id = "connector-accept-184-furlbrow-s-deed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 184, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-184-furlbrow-s-deed",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 184,
            priority = 4110,
        },
        {
            priority = 4120,
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            text = "Turn in Furlbrow's Deed to Farmer Furlbrow.",
            id = "turnin-184-furlbrow-s-deed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 184, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "connector-accept-184-furlbrow-s-deed" },
        },
        {
            id = "level-before-accept-64-the-forgotten-heirloom",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 64,
            priority = 4130,
        },
        {
            priority = 4140,
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            text = "Accept The Forgotten Heirloom from Farmer Furlbrow.",
            id = "accept-64-the-forgotten-heirloom",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 64, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-109-report-to-gryan-stoutmantle",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 109,
            priority = 4150,
        },
        {
            priority = 4160,
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            text = "Accept Report to Gryan Stoutmantle from Farmer Furlbrow.",
            id = "accept-109-report-to-gryan-stoutmantle",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 109, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4170,
            route = {
                { y = 0.1942, mapID = 1436, label = "Verna Furlbrow", offMapText = "Travel to Verna Furlbrow in Westfall.", x = 0.5992 },
            },
            text = "Accept Westfall Stew from Verna Furlbrow.",
            id = "accept-36-westfall-stew",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 36, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4180,
            route = {
                { y = 0.1942, mapID = 1436, label = "Verna Furlbrow", offMapText = "Travel to Verna Furlbrow in Westfall.", x = 0.5992 },
            },
            text = "Accept Poor Old Blanchy from Verna Furlbrow.",
            id = "accept-151-poor-old-blanchy",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 151, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4190,
            route = {
                { y = 0.3122, mapID = 1436, label = "Farmer Saldean", offMapText = "Travel to Farmer Saldean in Westfall.", x = 0.5605 },
            },
            text = "Accept The Killing Fields from Farmer Saldean.",
            id = "accept-9-the-killing-fields",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 9, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4200,
            text = "Turn in Westfall Stew to Salma Saldean.",
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            dependsOn = { "accept-36-westfall-stew" },
            id = "turnin-36-westfall-stew",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 36, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4210,
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            text = "Accept Westfall Stew from Salma Saldean.",
            id = "accept-38-westfall-stew",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 38, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4220,
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            text = "Accept Goretusk Liver Pie from Salma Saldean.",
            id = "accept-22-goretusk-liver-pie",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 22, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4230,
            text = "Turn in Report to Gryan Stoutmantle to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-109-report-to-gryan-stoutmantle" },
            id = "turnin-109-report-to-gryan-stoutmantle",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 109, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4240,
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The People's Militia from Gryan Stoutmantle.",
            id = "accept-12-the-people-s-militia",
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
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 12, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4250,
            route = {
                { y = 0.4762, mapID = 1436, label = "Captain Danuvin", offMapText = "Travel to Captain Danuvin in Westfall.", x = 0.5642 },
            },
            text = "Accept Patrolling Westfall from Captain Danuvin.",
            id = "accept-102-patrolling-westfall",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 102, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-153-red-leather-bandanas",
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
            checkpointQuest = 153,
            priority = 4260,
        },
        {
            priority = 4270,
            route = {
                { y = 0.5298, mapID = 1436, label = "Scout Galiaan", offMapText = "Travel to Scout Galiaan in Westfall.", x = 0.5398 },
            },
            text = "Accept Red Leather Bandanas from Scout Galiaan.",
            id = "accept-153-red-leather-bandanas",
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
                quest = { id = 153, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4280,
            text = "Collect 15 Red Leather Bandana.",
            route = {
                { y = 0.454, mapID = 1436, label = "Defias Trapper", offMapText = "Travel to Defias Trapper.", x = 0.484 },
            },
            dependsOn = { "accept-153-red-leather-bandanas" },
            id = "objective-153-1-defias-trapper",
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
                questObjective = { id = 153, text = "Defias Trapper", index = 1, count = 15 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-12-1-defias-trapper",
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
            text = "Kill 15 Defias Trapper.",
            complete = {
                questObjective = { id = 12, index = 1, text = "Defias Trapper", count = 15 },
            },
            route = {
                { mapID = 1436, x = 0.484, y = 0.45399999999999996, label = "Defias Trapper", offMapText = "Travel to Defias Trapper." },
            },
            sourceStep = 10,
            priority = 4290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-12-the-people-s-militia" },
        },
        {
            id = "objective-12-2-defias-smuggler",
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
            text = "Kill 15 Defias Smuggler.",
            complete = {
                questObjective = { id = 12, index = 2, text = "Defias Smuggler", count = 15 },
            },
            route = {
                { mapID = 1436, x = 0.484, y = 0.45399999999999996, label = "Defias Smuggler", offMapText = "Travel to Defias Smuggler." },
            },
            sourceStep = 10,
            priority = 4300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-12-the-people-s-militia" },
        },
        {
            priority = 4310,
            text = "Collect 1 Furlbrow's Pocket Watch.",
            route = {
                { y = 0.194, mapID = 1436, label = "Furlbrow's Wardrobe", offMapText = "Travel to Furlbrow's Wardrobe.", x = 0.4932 },
            },
            dependsOn = { "accept-64-the-forgotten-heirloom" },
            id = "objective-64-1-furlbrow-s-wardrobe",
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
                questObjective = { id = 64, text = "Furlbrow's Wardrobe", index = 1, count = 1 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4320,
            text = "Collect 8 Gnoll Paw.",
            route = {
                { y = 0.132, mapID = 1436, label = "Riverpaw Gnoll", offMapText = "Travel to Riverpaw Gnoll.", x = 0.562 },
            },
            dependsOn = { "accept-102-patrolling-westfall" },
            id = "objective-102-1-riverpaw-gnoll",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 102, text = "Riverpaw Gnoll", index = 1, count = 8 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4330,
            text = "Collect 3 Murloc Eye.",
            route = {
                { y = 0.118, mapID = 1436, label = "Murloc Raider", offMapText = "Travel to Murloc Raider.", x = 0.534 },
            },
            dependsOn = { "accept-38-westfall-stew" },
            id = "objective-38-2-murloc-raider",
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
                questObjective = { id = 38, text = "Murloc Raider", index = 2, count = 3 },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-151-1-handful-of-oats",
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
            text = "Collect 8 Handful of Oats.",
            complete = {
                questObjective = { id = 151, index = 1, text = "Handful of Oats", count = 8 },
            },
            route = {
                { mapID = 1436, x = 0.5660000000000001, y = 0.184, label = "Handful of Oats", offMapText = "Travel to Handful of Oats." },
            },
            sourceStep = 15,
            priority = 4340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-151-poor-old-blanchy" },
        },
        {
            priority = 4350,
            text = "Turn in The Forgotten Heirloom to Farmer Furlbrow.",
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            dependsOn = { "accept-64-the-forgotten-heirloom", "objective-64-1-furlbrow-s-wardrobe" },
            id = "turnin-64-the-forgotten-heirloom",
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
                quest = { id = 64, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4360,
            text = "Turn in Poor Old Blanchy to Verna Furlbrow.",
            route = {
                { y = 0.1942, mapID = 1436, label = "Verna Furlbrow", offMapText = "Travel to Verna Furlbrow in Westfall.", x = 0.5992 },
            },
            dependsOn = { "accept-151-poor-old-blanchy", "objective-151-1-handful-of-oats" },
            id = "turnin-151-poor-old-blanchy",
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
                quest = { id = 151, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4370,
            text = "Turn in Goretusk Liver Pie to Salma Saldean.",
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            dependsOn = { "accept-22-goretusk-liver-pie", "objective-22-1-goretusk-liver" },
            id = "turnin-22-goretusk-liver-pie",
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
                quest = { id = 22, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4380,
            text = "Collect 3 Okra.",
            route = {
                { y = 0.312, mapID = 1436, label = "Harvest Watcher", offMapText = "Travel to Harvest Watcher.", x = 0.56 },
            },
            dependsOn = { "accept-38-westfall-stew" },
            id = "objective-38-4-harvest-watcher",
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
                questObjective = { id = 38, text = "Harvest Watcher", index = 4, count = 3 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-9-1-harvest-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 20 Harvest Watcher.",
            complete = {
                questObjective = { id = 9, index = 1, text = "Harvest Watcher", count = 20 },
            },
            route = {
                { mapID = 1436, x = 0.56, y = 0.312, label = "Harvest Watcher", offMapText = "Travel to Harvest Watcher." },
            },
            sourceStep = 20,
            priority = 4390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-9-the-killing-fields" },
        },
        {
            id = "objective-38-1-stringy-vulture-meat",
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
            text = "Collect 3 Stringy Vulture Meat.",
            complete = {
                questObjective = { id = 38, index = 1, text = "Stringy Vulture Meat", count = 3 },
            },
            route = {
                { mapID = 1436, x = 0.616, y = 0.446, label = "Stringy Vulture Meat", offMapText = "Travel to Stringy Vulture Meat." },
            },
            sourceStep = 21,
            priority = 4400,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-38-westfall-stew" },
        },
        {
            id = "objective-38-3-goretusk-snout",
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
            text = "Collect 3 Goretusk Snout.",
            complete = {
                questObjective = { id = 38, index = 3, text = "Goretusk Snout", count = 3 },
            },
            route = {
                { mapID = 1436, x = 0.522, y = 0.426, label = "Goretusk Snout", offMapText = "Travel to Goretusk Snout." },
            },
            sourceStep = 22,
            priority = 4410,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-38-westfall-stew" },
        },
        {
            id = "objective-22-1-goretusk-liver",
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
            text = "Collect 8 Goretusk Liver.",
            complete = {
                questObjective = { id = 22, index = 1, text = "Goretusk Liver", count = 8 },
            },
            route = {
                { mapID = 1436, x = 0.522, y = 0.426, label = "Goretusk Liver", offMapText = "Travel to Goretusk Liver." },
            },
            sourceStep = 22,
            priority = 4420,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-22-goretusk-liver-pie" },
        },
        {
            priority = 4430,
            text = "Turn in The Killing Fields to Farmer Saldean.",
            route = {
                { y = 0.3122, mapID = 1436, label = "Farmer Saldean", offMapText = "Travel to Farmer Saldean in Westfall.", x = 0.5605 },
            },
            dependsOn = { "accept-9-the-killing-fields", "objective-9-1-harvest-watcher" },
            id = "turnin-9-the-killing-fields",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 9, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4440,
            text = "Turn in Westfall Stew to Salma Saldean.",
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            dependsOn = {
                "accept-38-westfall-stew",
                "objective-38-2-murloc-raider",
                "objective-38-4-harvest-watcher",
                "objective-38-1-stringy-vulture-meat",
                "objective-38-3-goretusk-snout",
            },
            id = "turnin-38-westfall-stew",
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
                quest = { id = 38, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4450,
            text = "Turn in The People's Militia to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-12-the-people-s-militia", "objective-12-1-defias-trapper", "objective-12-2-defias-smuggler" },
            id = "turnin-12-the-people-s-militia",
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
                quest = { id = 12, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-65-the-defias-brotherhood",
            kind = "note",
            text = "Reach level 14 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 65,
            priority = 4460,
        },
        {
            priority = 4470,
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "accept-65-the-defias-brotherhood",
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
                quest = { id = 65, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4480,
            text = "Turn in Patrolling Westfall to Captain Danuvin.",
            route = {
                { y = 0.4762, mapID = 1436, label = "Captain Danuvin", offMapText = "Travel to Captain Danuvin in Westfall.", x = 0.5642 },
            },
            dependsOn = { "accept-102-patrolling-westfall", "objective-102-1-riverpaw-gnoll" },
            id = "turnin-102-patrolling-westfall",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 102, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4490,
            text = "Turn in Red Leather Bandanas to Scout Galiaan.",
            route = {
                { y = 0.5298, mapID = 1436, label = "Scout Galiaan", offMapText = "Travel to Scout Galiaan in Westfall.", x = 0.5398 },
            },
            dependsOn = { "accept-153-red-leather-bandanas", "objective-153-1-defias-trapper" },
            id = "turnin-153-red-leather-bandanas",
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
                quest = { id = 153, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4500,
            route = {
                { y = 0.7467, mapID = 1455, label = "Darkshore Grouper", offMapText = "Travel to Darkshore Grouper.", x = 0.2416 },
            },
            text = "Collect 6 Darkshore Grouper. Keep 6 Darkshore Grouper for the later quest pickup.",
            id = "collect-before-pickup-objective-1141-1-darkshore-grouper",
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 1141,
        },
        {
            priority = 4510,
            route = {
                { y = 0.322, mapID = 1436, label = "Ozwin Ironsprocket", offMapText = "Travel to Ozwin Ironsprocket.", x = 0.516 },
            },
            text = "Accept Harvesting the Harvesters from Ozwin Ironsprocket at Saldean's Farm.",
            id = "woven-accept-92909-harvesting-the-harvesters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92909, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-92742-testing-the-wells",
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
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92742,
            priority = 4520,
        },
        {
            priority = 4530,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Accept Testing the Wells from Alba Fairmoon in Sentinel Hill.",
            id = "woven-accept-92742-testing-the-wells",
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
                quest = { id = 92742, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4540,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Accept Murloc Gills from Alba Fairmoon in Sentinel Hill.",
            id = "woven-accept-92744-murloc-gills",
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
                quest = { id = 92744, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4550,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Accept The State of the Mines from Alba Fairmoon in Sentinel Hill.",
            id = "woven-accept-92745-the-state-of-the-mines",
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
                quest = { id = 92745, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-98021-journey-to-sentinel-hill",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
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
            checkpointQuest = 98021,
            priority = 4560,
        },
        {
            priority = 4570,
            route = {
                { y = 0.18, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon.", x = 0.78 },
            },
            text = "Accept Journey to Sentinel Hill from Highlord Bolvar Fordragon in Stormwind Keep. This step is for Alliance Skyborne.",
            id = "woven-accept-98021-journey-to-sentinel-hill",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98021, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4580,
            route = {
                { y = 0.476, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle.", x = 0.562 },
            },
            text = "Turn in Journey to Sentinel Hill to Gryan Stoutmantle in Sentinel Hill. This step is for Alliance Skyborne.",
            id = "woven-turnin-98021-journey-to-sentinel-hill",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98021, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98021-journey-to-sentinel-hill" },
        },
        {
            priority = 4590,
            route = {
                { y = 0.234, mapID = 1436, label = "Kobold Digger", offMapText = "Travel to Kobold Digger.", x = 0.446 },
            },
            text = "The State of the Mines: slay 4 Kobold Diggers in the Jangolode Mine.",
            id = "woven-objective-92745-kobold-digger",
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
                questObjective = { id = 92745, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92745-the-state-of-the-mines" },
        },
        {
            text = "Testing the Wells: sample the wells at the Jansen Stead and the Molsen Farm. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 4600,
            route = {
                { y = 0.1937, mapID = 1436, label = "The Jansen Stead", offMapText = "Travel to The Jansen Stead.", x = 0.6 },
                { y = 0.312, mapID = 1436, label = "Saldean's Farm", offMapText = "Travel to Saldean's Farm.", x = 0.56 },
            },
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
            id = "woven-objective-92742-testing-the-wells",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 92742, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-92742-testing-the-wells" },
        },
        {
            priority = 4610,
            route = {
                { y = 0.504, mapID = 1436, label = "Murloc Warrior", offMapText = "Travel to Murloc Warrior.", x = 0.26 },
            },
            text = "Murloc Gills: collect 7 Longshore Murloc Gills from murlocs along the shore.",
            id = "woven-objective-92744-murloc-gills",
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
                quest = { id = 92744, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92744-murloc-gills" },
        },
        {
            priority = 4620,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Turn in Testing the Wells to Alba Fairmoon in Sentinel Hill.",
            id = "woven-turnin-92742-testing-the-wells",
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
                quest = { id = 92742, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92742-testing-the-wells", "woven-objective-92742-testing-the-wells" },
        },
        {
            priority = 4630,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Turn in Murloc Gills to Alba Fairmoon in Sentinel Hill.",
            id = "woven-turnin-92744-murloc-gills",
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
                quest = { id = 92744, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92744-murloc-gills", "woven-objective-92744-murloc-gills" },
        },
        {
            priority = 4640,
            route = {
                { y = 0.35, mapID = 1436, label = "Harvest Golem", offMapText = "Travel to Harvest Golem.", x = 0.564 },
            },
            text = "Harvesting the Harvesters: collect 14 Golem Isosprings and 5 Harvester Gyrostabilizers from the harvest golems.",
            id = "woven-objective-92909-harvesting-the-harvesters",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92909, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92909-harvesting-the-harvesters" },
        },
        {
            priority = 4650,
            route = {
                { y = 0.322, mapID = 1436, label = "Ozwin Ironsprocket", offMapText = "Travel to Ozwin Ironsprocket.", x = 0.516 },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket at Saldean's Farm.",
            id = "woven-turnin-92909-harvesting-the-harvesters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92909, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92909-harvesting-the-harvesters", "woven-objective-92909-harvesting-the-harvesters" },
        },
        {
            id = "loot-starter-before-accept-92910-authored-pickup",
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
            text = "Loot Precessive Autocognition Assembly from Broken Barrel, Harvest Watcher. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Precessive Autocognition Assembly", minCount = 1 },
                    },
                    {
                        quest = { id = 92910, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 4660,
        },
        {
            priority = 4670,
            text = "Use the Precessive Autocognition Assembly to accept Harvesting the Harvesters.",
            id = "accept-92910-authored-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92910, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4680,
            route = {
                { y = 0.322, mapID = 1436, label = "Ozwin Ironsprocket", offMapText = "Travel to Ozwin Ironsprocket.", x = 0.516 },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket if a harvester dropped a Precessive Autocognition Assembly.",
            id = "woven-turnin-92910-harvesting-the-harvesters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92910, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-92910-authored-pickup" },
        },
        {
            priority = 4690,
            route = {
                { y = 0.474, mapID = 1436, label = "Riverpaw Miner", offMapText = "Travel to Riverpaw Miner.", x = 0.3 },
            },
            text = "The State of the Mines: slay 6 Riverpaw Miners in the Gold Coast Quarry.",
            id = "woven-objective-92745-riverpaw-miner",
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
                questObjective = { id = 92745, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92745-the-state-of-the-mines" },
        },
        {
            id = "level-before-woven-accept-92109-my-first-alchemy-set",
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
            checkpointQuest = 92109,
            priority = 4700,
        },
        {
            text = "Accept My First Alchemy Set from the young alchemist in the Moonbrook barn. This step is for alchemists. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 4710,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            id = "woven-accept-92109-my-first-alchemy-set",
            kind = "accept",
            useClientPin = false,
            complete = {
                quest = { id = 92109, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
        },
        {
            priority = 4720,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            text = "My First Alchemy Set: gather 5 Empty Vials, 5 Peacebloom, and 5 Silverleaf for the young alchemist in the Moonbrook barn. This step is for alchemists.",
            id = "woven-objective-92109-my-first-alchemy-set",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92109, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92109-my-first-alchemy-set" },
        },
        {
            priority = 4730,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            text = "Turn in My First Alchemy Set to the young alchemist in the Moonbrook barn. This step is for alchemists.",
            id = "woven-turnin-92109-my-first-alchemy-set",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92109, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92109-my-first-alchemy-set", "woven-objective-92109-my-first-alchemy-set" },
        },
        {
            priority = 4740,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            text = "Accept My First Real Potion from the young alchemist in the Moonbrook barn. This step is for alchemists.",
            id = "woven-accept-92110-my-first-real-potion",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92110, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 4750,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            text = "My First Real Potion: gather 3 Murloc Eyes for the young alchemist in the Moonbrook barn. This step is for alchemists.",
            id = "woven-objective-92110-my-first-real-potion",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92110, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92110-my-first-real-potion" },
        },
        {
            priority = 4760,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
            text = "Turn in My First Real Potion to the young alchemist in the Moonbrook barn. This step is for alchemists.",
            id = "woven-turnin-92110-my-first-real-potion",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        profession = { skillLineID = 171 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92110, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92110-my-first-real-potion", "woven-objective-92110-my-first-real-potion" },
        },
        {
            priority = 4770,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Turn in The State of the Mines to Alba Fairmoon in Sentinel Hill.",
            id = "woven-turnin-92745-the-state-of-the-mines",
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
                quest = { id = 92745, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-92745-the-state-of-the-mines",
                "woven-objective-92745-kobold-digger",
                "woven-objective-92745-riverpaw-miner",
            },
        },
        {
            priority = 4780,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Accept Moonbrook Espionage from Alba Fairmoon in Sentinel Hill.",
            id = "woven-accept-92747-moonbrook-espionage",
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
                quest = { id = 92747, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-98407-show-of-force",
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
            checkpointQuest = 98407,
            priority = 4790,
        },
        {
            priority = 4800,
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon.", x = 0.308 },
            },
            text = "Accept Show of Force from Deputy Feldon.",
            id = "woven-accept-98407-show-of-force",
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
                quest = { id = 98407, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Moonbrook Espionage: collect 8 Suspicious Industrial Supplies in Moonbrook. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 4810,
            route = {
                { y = 0.6947, mapID = 1436, label = "Moonbrook", offMapText = "Travel to Moonbrook.", x = 0.4401 },
            },
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
            id = "woven-objective-92747-moonbrook-espionage",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 92747, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-92747-moonbrook-espionage" },
        },
        {
            priority = 4820,
            route = {
                { y = 0.53, mapID = 1436, label = "Alba Fairmoon", offMapText = "Travel to Alba Fairmoon.", x = 0.524 },
            },
            text = "Turn in Moonbrook Espionage to Alba Fairmoon in Sentinel Hill.",
            id = "woven-turnin-92747-moonbrook-espionage",
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
                quest = { id = 92747, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-92747-moonbrook-espionage", "woven-objective-92747-moonbrook-espionage" },
        },
        {
            priority = 4830,
            route = {
                { y = 0.812, mapID = 1433, label = "Redridge Thrasher", offMapText = "Travel to Redridge Thrasher.", x = 0.3 },
            },
            text = "Show of Force: collect 5 Spiked Collars from Redridge Thrashers.",
            id = "woven-objective-98407-show-of-force",
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
                quest = { id = 98407, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98407-show-of-force" },
        },
        {
            priority = 4840,
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon.", x = 0.308 },
            },
            text = "Turn in Show of Force to Deputy Feldon.",
            id = "woven-turnin-98407-show-of-force",
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
                quest = { id = 98407, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98407-show-of-force", "woven-objective-98407-show-of-force" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
