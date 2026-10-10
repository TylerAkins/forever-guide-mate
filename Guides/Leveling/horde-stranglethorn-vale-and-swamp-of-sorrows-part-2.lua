local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale & Swamp of Sorrows",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 50 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-hunter-accept-8151-the-hunters-charm-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8151,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.182, mapID = 1454, label = "Ormak Grimshot", x = 0.662, offMapText = "Travel to Ormak Grimshot in Orgrimmar." },
            },
            id = "woven-class-hunter-accept-8151-the-hunters-charm-horde",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8151-the-hunters-charm-horde",
        },
        {
            priority = 30,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "woven-class-hunter-accept-8151-the-hunters-charm-horde" },
            id = "woven-class-hunter-turnin-8151-the-hunters-charm",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8151-the-hunters-charm",
        },
        {
            priority = 40,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8153-courser-antlers",
        },
        {
            priority = 50,
            route = {
                { y = 0.692, mapID = 1447, label = "Mosshoof Courser", x = 0.378, offMapText = "Travel to Mosshoof Courser in Azshara." },
            },
            dependsOn = { "woven-class-hunter-accept-8153-courser-antlers" },
            id = "woven-class-hunter-objective-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8153-courser-antlers",
        },
        {
            priority = 60,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "woven-class-hunter-accept-8153-courser-antlers", "woven-class-hunter-objective-8153-courser-antlers" },
            id = "woven-class-hunter-turnin-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8153-courser-antlers",
        },
        {
            priority = 70,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8231-wavethrashing",
        },
        {
            priority = 80,
            route = {
                { y = 0.086, mapID = 1447, label = "Young Wavethrasher", x = 0.654, offMapText = "Travel to Young Wavethrasher in Azshara." },
                { y = 0.346, mapID = 1447, label = "Wavethrasher", x = 0.712, offMapText = "Travel to Wavethrasher in Azshara." },
                { y = 0.722, mapID = 1447, label = "Great Wavethrasher", x = 0.558, offMapText = "Travel to Great Wavethrasher in Azshara." },
            },
            dependsOn = { "woven-class-hunter-accept-8231-wavethrashing" },
            id = "woven-class-hunter-objective-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8231-wavethrashing",
        },
        {
            priority = 90,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "woven-class-hunter-accept-8231-wavethrashing", "woven-class-hunter-objective-8231-wavethrashing" },
            id = "woven-class-hunter-turnin-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8231-wavethrashing",
        },
        {
            id = "level-before-woven-class-warlock-accept-8420-hot-and-itchy",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8420,
            alternativeQuests = { 8419 },
            priority = 100,
        },
        {
            priority = 110,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8420-hot-and-itchy",
        },
        {
            priority = 120,
            route = {
                { y = 0.666, mapID = 1448, label = "Jadefire Rogue", x = 0.334, offMapText = "Travel to Jadefire Rogue in Felwood." },
                { y = 0.19, mapID = 1448, label = "Jadefire Trickster", x = 0.41, offMapText = "Travel to Jadefire Trickster in Felwood." },
                { y = 0.214, mapID = 1448, label = "Jadefire Betrayer", x = 0.392, offMapText = "Travel to Jadefire Betrayer in Felwood." },
                { y = 0.668, mapID = 1448, label = "Jadefire Felsworn", x = 0.354, offMapText = "Travel to Jadefire Felsworn in Felwood." },
                { y = 0.666, mapID = 1448, label = "Jadefire Shadowstalker", x = 0.35, offMapText = "Travel to Jadefire Shadowstalker in Felwood." },
                { y = 0.17, mapID = 1448, label = "Jadefire Hellcaller", x = 0.422, offMapText = "Travel to Jadefire Hellcaller in Felwood." },
                { y = 0.67, mapID = 1448, label = "Xavathras", x = 0.324, offMapText = "Travel to Xavathras in Felwood." },
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
                { y = 0.506, mapID = 1448, label = "Rakaiah", x = 0.38, offMapText = "Travel to Rakaiah in Felwood." },
                { y = 0.468, mapID = 1448, label = "Salia", x = 0.388, offMapText = "Travel to Salia in Felwood." },
                { y = 0.468, mapID = 1448, label = "Moora", x = 0.388, offMapText = "Travel to Moora in Felwood." },
                { y = 0.532, mapID = 1448, label = "Jaedenar Legionnaire", x = 0.374, offMapText = "Travel to Jaedenar Legionnaire in Felwood." },
                { y = 0.566, mapID = 1448, label = "Prince Xavalis", x = 0.366, offMapText = "Travel to Prince Xavalis in Felwood." },
                { y = 0.222, mapID = 1448, label = "Xavaric", x = 0.39, offMapText = "Travel to Xavaric in Felwood." },
                { y = 0.862, mapID = 1448, label = "Alshirr Banebreath", x = 0.42, offMapText = "Travel to Alshirr Banebreath in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-8420-hot-and-itchy" },
            id = "woven-class-warlock-objective-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8420-hot-and-itchy",
        },
        {
            priority = 130,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-8420-hot-and-itchy", "woven-class-warlock-objective-8420-hot-and-itchy" },
            id = "woven-class-warlock-turnin-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8420-hot-and-itchy",
        },
        {
            priority = 140,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "woven-class-warlock-accept-8419-an-imps-request-horde",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8419-an-imps-request-horde",
        },
        {
            priority = 150,
            id = "woven-class-warlock-objective-8419-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-8419-an-imps-request-horde" },
            classAction = "objective-8419-quest-work",
        },
        {
            priority = 160,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "woven-class-warlock-objective-8419-quest-work", "woven-class-warlock-accept-8419-an-imps-request-horde" },
            id = "woven-class-warlock-turnin-8419-an-imps-request",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8419-an-imps-request",
        },
        {
            priority = 170,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8421-the-wrong-stuff",
        },
        {
            priority = 180,
            route = {
                { y = 0.564, mapID = 1448, label = "Tainted Ooze", x = 0.4, offMapText = "Travel to Tainted Ooze in Felwood." },
                { y = 0.146, mapID = 1448, label = "Irontree Wanderer", x = 0.494, offMapText = "Travel to Irontree Wanderer in Felwood." },
                { y = 0.298, mapID = 1448, label = "Irontree Stomper", x = 0.486, offMapText = "Travel to Irontree Stomper in Felwood." },
                { y = 0.182, mapID = 1448, label = "Withered Protector", x = 0.506, offMapText = "Travel to Withered Protector in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-8421-the-wrong-stuff" },
            id = "woven-class-warlock-objective-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8421-the-wrong-stuff",
        },
        {
            priority = 190,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-8421-the-wrong-stuff", "woven-class-warlock-objective-8421-the-wrong-stuff" },
            id = "woven-class-warlock-turnin-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8421-the-wrong-stuff",
        },
        {
            priority = 200,
            route = {
                { y = 0.448, mapID = 1448, label = "Niby the Almighty", x = 0.414, offMapText = "Travel to Niby the Almighty in Felwood." },
            },
            id = "woven-class-warlock-accept-7601-what-niby-commands",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7601-what-niby-commands",
        },
        {
            priority = 210,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-7601-what-niby-commands" },
            id = "woven-class-warlock-turnin-7601-what-niby-commands",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7601-what-niby-commands",
        },
        {
            priority = 220,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7602-flawless-fel-essence",
        },
        {
            priority = 230,
            dependsOn = { "woven-class-warlock-accept-7602-flawless-fel-essence" },
            id = "woven-class-warlock-objective-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7602-flawless-fel-essence",
        },
        {
            priority = 240,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7602-flawless-fel-essence",
                "woven-class-warlock-objective-7602-flawless-fel-essence",
            },
            id = "woven-class-warlock-turnin-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7602-flawless-fel-essence",
        },
        {
            priority = 250,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7603-kroshius-infernal-core",
        },
        {
            priority = 260,
            dependsOn = { "woven-class-warlock-accept-7603-kroshius-infernal-core" },
            id = "woven-class-warlock-objective-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7603-kroshius-infernal-core",
        },
        {
            priority = 270,
            route = {
                { y = 0.448, mapID = 1448, label = "Niby the Almighty", x = 0.414, offMapText = "Travel to Niby the Almighty in Felwood." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7603-kroshius-infernal-core",
                "woven-class-warlock-objective-7603-kroshius-infernal-core",
            },
            id = "woven-class-warlock-turnin-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7603-kroshius-infernal-core",
        },
        {
            id = "level-before-woven-class-priest-accept-8254-cenarion-aid-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8254,
            priority = 280,
        },
        {
            priority = 290,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "woven-class-priest-accept-8254-cenarion-aid-horde",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8254-cenarion-aid-horde",
        },
        {
            priority = 300,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "woven-class-priest-accept-8254-cenarion-aid-horde" },
            id = "woven-class-priest-turnin-8254-cenarion-aid",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8254-cenarion-aid",
        },
        {
            priority = 310,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8255-of-coursers-we-know",
        },
        {
            priority = 320,
            route = {
                { y = 0.692, mapID = 1447, label = "Mosshoof Courser", x = 0.378, offMapText = "Travel to Mosshoof Courser in Azshara." },
            },
            dependsOn = { "woven-class-priest-accept-8255-of-coursers-we-know" },
            id = "woven-class-priest-objective-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8255-of-coursers-we-know",
        },
        {
            priority = 330,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {
                "woven-class-priest-accept-8255-of-coursers-we-know",
                "woven-class-priest-objective-8255-of-coursers-we-know",
            },
            id = "woven-class-priest-turnin-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8255-of-coursers-we-know",
        },
        {
            priority = 340,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-priest-accept-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8256-the-ichor-of-undeath",
        },
        {
            priority = 350,
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Apparition", x = 0.134, offMapText = "Travel to Highborne Apparition in Azshara." },
                { y = 0.732, mapID = 1447, label = "Highborne Lichling", x = 0.134, offMapText = "Travel to Highborne Lichling in Azshara." },
                { y = 0.692, mapID = 1447, label = "Varo'then's Ghost", x = 0.176, offMapText = "Travel to Varo'then's Ghost in Azshara." },
                { y = 0.502, mapID = 1447, label = "Lingering Highborne", x = 0.394, offMapText = "Travel to Lingering Highborne in Azshara." },
            },
            dependsOn = { "woven-class-priest-accept-8256-the-ichor-of-undeath" },
            id = "woven-class-priest-objective-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8256-the-ichor-of-undeath",
        },
        {
            priority = 360,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = {
                "woven-class-priest-accept-8256-the-ichor-of-undeath",
                "woven-class-priest-objective-8256-the-ichor-of-undeath",
            },
            id = "woven-class-priest-turnin-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8256-the-ichor-of-undeath",
        },
        {
            id = "level-before-woven-class-rogue-accept-8234-sealed-azure-bag",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8234,
            priority = 370,
        },
        {
            priority = 380,
            route = {
                { y = 0.79, mapID = 1416, label = "Lord Jorach Ravenholdt", x = 0.86, offMapText = "Travel to Lord Jorach Ravenholdt in Alterac Mountains." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-8234-sealed-azure-bag",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8234-sealed-azure-bag",
        },
        {
            priority = 390,
            id = "woven-class-rogue-objective-8234-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-8234-sealed-azure-bag" },
            classAction = "objective-8234-quest-work",
        },
        {
            priority = 400,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-rogue-accept-8234-sealed-azure-bag", "woven-class-rogue-objective-8234-quest-work" },
            id = "woven-class-rogue-turnin-8234-sealed-azure-bag",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8234-sealed-azure-bag",
        },
        {
            id = "level-before-woven-class-rogue-travel-3503-xylem-teleport",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8235,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { y = 0.5, mapID = 1447, label = "Sanath Lim-yo", x = 0.28, offMapText = "Travel to Sanath Lim-yo in Azshara." },
            },
            id = "woven-class-rogue-travel-3503-xylem-teleport",
            conditions = {
                all = {
                    { class = 4 },
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            contextQuest = 8235,
            classAction = "travel-3503-xylem-teleport",
        },
        {
            priority = 430,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-rogue-accept-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8235-encoded-fragments",
        },
        {
            priority = 440,
            route = {
                { y = 0.656, mapID = 1447, label = "The Evalcharr", x = 0.184, offMapText = "Travel to The Evalcharr in Azshara." },
                { y = 0.29, mapID = 1447, label = "Forest Ooze", x = 0.714, offMapText = "Travel to Forest Ooze in Azshara." },
            },
            dependsOn = { "woven-class-rogue-accept-8235-encoded-fragments" },
            id = "woven-class-rogue-objective-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8235-encoded-fragments",
        },
        {
            priority = 450,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-rogue-accept-8235-encoded-fragments", "woven-class-rogue-objective-8235-encoded-fragments" },
            id = "woven-class-rogue-turnin-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8235-encoded-fragments",
        },
        {
            priority = 460,
            route = {
                { y = 0.462, mapID = 1447, label = "Nyrill", x = 0.264, offMapText = "Travel to Nyrill in Azshara." },
            },
            id = "woven-class-rogue-travel-3421-xylem-teleport",
            conditions = {
                all = {
                    { class = 4 },
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            contextQuest = 8235,
            classAction = "travel-3421-xylem-teleport",
        },
        {
            priority = 470,
            route = {
                { y = 0.712, mapID = 1458, label = "Miles Dexter", x = 0.85, offMapText = "Travel to Miles Dexter in Undercity." },
            },
            id = "woven-class-rogue-accept-8233-a-simple-request-horde",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8233-a-simple-request-horde",
        },
        {
            priority = 480,
            route = {
                { y = 0.79, mapID = 1416, label = "Lord Jorach Ravenholdt", x = 0.86, offMapText = "Travel to Lord Jorach Ravenholdt in Alterac Mountains." },
            },
            dependsOn = { "woven-class-rogue-accept-8233-a-simple-request-horde" },
            id = "woven-class-rogue-turnin-8233-a-simple-request",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8233-a-simple-request",
        },
        {
            id = "level-before-woven-class-shaman-accept-8411-mastering-the-elements",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8411,
            alternativeQuests = { 8410 },
            priority = 490,
        },
        {
            priority = 500,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8411-mastering-the-elements",
        },
        {
            priority = 510,
            dependsOn = { "woven-class-shaman-accept-8411-mastering-the-elements" },
            id = "woven-class-shaman-objective-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-8411-mastering-the-elements",
        },
        {
            priority = 520,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = {
                "woven-class-shaman-accept-8411-mastering-the-elements",
                "woven-class-shaman-objective-8411-mastering-the-elements",
            },
            id = "woven-class-shaman-turnin-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8411-mastering-the-elements",
        },
        {
            id = "level-before-woven-class-shaman-accept-8410-elemental-mastery",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8410,
            alternativeQuests = { 8411 },
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            id = "woven-class-shaman-accept-8410-elemental-mastery",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8410-elemental-mastery",
        },
        {
            priority = 550,
            id = "woven-class-shaman-objective-8410-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-8410-elemental-mastery" },
            classAction = "objective-8410-quest-work",
        },
        {
            priority = 560,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "woven-class-shaman-accept-8410-elemental-mastery", "woven-class-shaman-objective-8410-quest-work" },
            id = "woven-class-shaman-turnin-8410-elemental-mastery",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8410-elemental-mastery",
        },
        {
            priority = 570,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = {},
            id = "woven-class-shaman-accept-8412-spirit-totem",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8412-spirit-totem",
        },
        {
            priority = 580,
            id = "woven-class-shaman-objective-8412-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-shaman-accept-8412-spirit-totem" },
            classAction = "objective-8412-quest-work",
        },
        {
            priority = 590,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "woven-class-shaman-accept-8412-spirit-totem", "woven-class-shaman-objective-8412-quest-work" },
            id = "woven-class-shaman-turnin-8412-spirit-totem",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8412-spirit-totem",
        },
        {
            id = "level-before-woven-class-warrior-accept-8423-warrior-kinship",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8423,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-8423-warrior-kinship",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8423-warrior-kinship",
        },
        {
            priority = 620,
            id = "woven-class-warrior-objective-8423-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-8423-warrior-kinship" },
            classAction = "objective-8423-quest-work",
        },
        {
            priority = 630,
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "woven-class-warrior-accept-8423-warrior-kinship", "woven-class-warrior-objective-8423-quest-work" },
            id = "woven-class-warrior-turnin-8423-warrior-kinship",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8423-warrior-kinship",
        },
        {
            priority = 640,
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = {},
            id = "woven-class-warrior-accept-8424-war-on-the-shadowsworn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8424-war-on-the-shadowsworn",
        },
        {
            priority = 650,
            id = "woven-class-warrior-objective-8424-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warrior-accept-8424-war-on-the-shadowsworn" },
            classAction = "objective-8424-quest-work",
        },
        {
            priority = 660,
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "woven-class-warrior-accept-8424-war-on-the-shadowsworn", "woven-class-warrior-objective-8424-quest-work" },
            id = "woven-class-warrior-turnin-8424-war-on-the-shadowsworn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8424-war-on-the-shadowsworn",
        },
        {
            priority = 670,
            route = {
                { y = 0.15, mapID = 1458, label = "Christoph Walker", x = 0.472, offMapText = "Travel to Christoph Walker in Undercity." },
            },
            id = "woven-class-warrior-accept-8417-a-troubled-spirit-horde",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8417-a-troubled-spirit-horde",
        },
        {
            priority = 680,
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "woven-class-warrior-accept-8417-a-troubled-spirit-horde" },
            id = "woven-class-warrior-turnin-8417-a-troubled-spirit",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8417-a-troubled-spirit",
        },
        {
            id = "level-before-woven-class-mage-accept-8251-magic-dust",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8251,
            priority = 690,
        },
        {
            priority = 700,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            id = "woven-class-mage-accept-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8251-magic-dust",
        },
        {
            priority = 710,
            route = {
                { y = 0.286, mapID = 1447, label = "Blood Elf Surveyor", x = 0.554, offMapText = "Travel to Blood Elf Surveyor in Azshara." },
                { y = 0.288, mapID = 1447, label = "Blood Elf Reclaimer", x = 0.564, offMapText = "Travel to Blood Elf Reclaimer in Azshara." },
                { y = 0.314, mapID = 1447, label = "Blood Elf Defender", x = 0.594, offMapText = "Travel to Blood Elf Defender in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-8251-magic-dust" },
            id = "woven-class-mage-objective-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8251-magic-dust",
        },
        {
            priority = 720,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-8251-magic-dust", "woven-class-mage-objective-8251-magic-dust" },
            id = "woven-class-mage-turnin-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8251-magic-dust",
        },
        {
            priority = 730,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8252-the-sirens-coral",
        },
        {
            priority = 740,
            route = {
                { y = 0.53, mapID = 1447, label = "Spitelash Siren", x = 0.402, offMapText = "Travel to Spitelash Siren in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-8252-the-sirens-coral" },
            id = "woven-class-mage-objective-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8252-the-sirens-coral",
        },
        {
            priority = 750,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-8252-the-sirens-coral", "woven-class-mage-objective-8252-the-sirens-coral" },
            id = "woven-class-mage-turnin-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8252-the-sirens-coral",
        },
        {
            priority = 760,
            route = {
                { y = 0.138, mapID = 1458, label = "Pierce Shackleton", x = 0.854, offMapText = "Travel to Pierce Shackleton in Undercity." },
            },
            id = "woven-class-mage-accept-8250-magecraft-horde",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8250-magecraft-horde",
        },
        {
            priority = 770,
            route = {
                { y = 0.5, mapID = 1447, label = "Sanath Lim-yo", x = 0.28, offMapText = "Travel to Sanath Lim-yo in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-8250-magecraft-horde" },
            id = "woven-class-mage-turnin-8250-magecraft",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8250-magecraft",
        },
        {
            id = "level-before-woven-class-druid-accept-9052-bloodpetal-poison",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 9052,
            priority = 780,
        },
        {
            priority = 790,
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9052-bloodpetal-poison",
        },
        {
            priority = 800,
            route = {
                { y = 0.788, mapID = 1449, label = "Gorishi Wasp", x = 0.504, offMapText = "Travel to Gorishi Wasp in Un'Goro Crater." },
                { y = 0.808, mapID = 1449, label = "Gorishi Stinger", x = 0.5, offMapText = "Travel to Gorishi Stinger in Un'Goro Crater." },
                { y = 0.814, mapID = 1449, label = "Gorishi Hive Queen", x = 0.436, offMapText = "Travel to Gorishi Hive Queen in Un'Goro Crater." },
            },
            dependsOn = { "woven-class-druid-accept-9052-bloodpetal-poison" },
            id = "woven-class-druid-objective-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-9052-bloodpetal-poison",
        },
        {
            priority = 810,
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "woven-class-druid-accept-9052-bloodpetal-poison", "woven-class-druid-objective-9052-bloodpetal-poison" },
            id = "woven-class-druid-turnin-9052-bloodpetal-poison",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9052-bloodpetal-poison",
        },
        {
            priority = 820,
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-9051-toxic-test",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9051-toxic-test",
        },
        {
            priority = 830,
            id = "woven-class-druid-objective-9051-quest-work",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-druid-accept-9051-toxic-test" },
            classAction = "objective-9051-quest-work",
        },
        {
            priority = 840,
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "woven-class-druid-accept-9051-toxic-test", "woven-class-druid-objective-9051-quest-work" },
            id = "woven-class-druid-turnin-9051-toxic-test",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9051-toxic-test",
        },
        {
            priority = 850,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", x = 0.764, offMapText = "Travel to Turak Runetotem in Thunder Bluff." },
            },
            dependsOn = {},
            id = "woven-class-druid-accept-9063-torwa-pathfinder-horde",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9063-torwa-pathfinder-horde",
        },
        {
            priority = 860,
            route = {
                { y = 0.76, mapID = 1449, label = "Torwa Pathfinder", x = 0.716, offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "woven-class-druid-accept-9063-torwa-pathfinder-horde" },
            id = "woven-class-druid-turnin-9063-torwa-pathfinder",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9063-torwa-pathfinder",
        },
        {
            id = "level-before-turnin-2874-deliver-to-mackinley",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2874,
            priority = 870,
        },
        {
            priority = 880,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Turn in Deliver to MacKinley to \"Sea Wolf\" MacKinley.",
            id = "turnin-2874-deliver-to-mackinley",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2874, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2873 },
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
                { mapID = 1425, x = 0.778, y = 0.654, label = "Pupellyverbos Port", offMapText = "Travel to Pupellyverbos Port." },
            },
            text = "For Whiskey Slim's Lost Grog: Whiskey Slim in Booty Bay wants you to bring him the bottles of Pupellyverbos Port he lost.",
            id = "objective-580-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 580, state = "complete" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            route = {
                { y = 0.7745, mapID = 1434, label = "Whiskey Slim", offMapText = "Travel to Whiskey Slim in Stranglethorn Vale.", x = 0.2713 },
            },
            text = "Turn in Whiskey Slim's Lost Grog to Whiskey Slim.",
            id = "turnin-580-whiskey-slim-s-lost-grog",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 580, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-580-quest-work" },
        },
        {
            priority = 910,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Turn in Report Back to Fizzlebub to Crank Fizzlebub.",
            id = "turnin-1122-report-back-to-fizzlebub",
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
                quest = { id = 1122, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1120, 1121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            route = {
                { y = 0.406, mapID = 1434, label = "Tethis", offMapText = "Travel to Tethis.", x = 0.304 },
            },
            text = "Collect 1 Talon of Tethis.",
            id = "objective-197-1-tethis",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 197, text = "Tethis", index = 1, count = 1 },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 930,
            text = "Turn in Raptor Mastery to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "objective-197-1-tethis" },
            id = "turnin-197-raptor-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 197, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Big Game Hunter from Hemet Nesingwary.",
            id = "accept-208-big-game-hunter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 208, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 188, 193, 197 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 950,
            text = "Collect 1 Head of Bangalash.",
            route = {
                { y = 0.3555, mapID = 1434, label = "King Bangalash", offMapText = "Travel to King Bangalash.", x = 0.3835 },
            },
            dependsOn = { "accept-208-big-game-hunter" },
            id = "objective-208-1-king-bangalash",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 208, text = "King Bangalash", index = 1, count = 1 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 188, 193, 197 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            text = "Turn in Big Game Hunter to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-208-big-game-hunter", "objective-208-1-king-bangalash" },
            id = "turnin-208-big-game-hunter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 208, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 188, 193, 197 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 970,
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn.",
            id = "accept-608-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 608, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 604 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-594-message-in-a-bottle",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Carefully Folded Note from Half-Buried Bottle. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Carefully Folded Note", minCount = 1 },
                    },
                    {
                        quest = { id = 594, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 980,
        },
        {
            id = "level-before-accept-594-message-in-a-bottle",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 594,
            priority = 990,
        },
        {
            priority = 1000,
            text = "Use the Carefully Folded Note to accept Message in a Bottle.",
            id = "accept-594-message-in-a-bottle",
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
                quest = { id = 594, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1010,
            text = "Kill Captain Keelhaul.",
            route = {
                { y = 0.8834, mapID = 1434, label = "Captain Keelhaul", offMapText = "Travel to Captain Keelhaul.", x = 0.292 },
            },
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            id = "objective-608-2-captain-keelhaul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                questObjective = { id = 608, text = "Captain Keelhaul", index = 2 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 604 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-624-cortello-s-riddle",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Cortello's Riddle from Cortello's Riddle. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Cortello's Riddle", minCount = 1 },
                    },
                    {
                        quest = { id = 624, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 1020,
        },
        {
            priority = 1030,
            text = "Use the Cortello's Riddle to accept Cortello's Riddle.",
            id = "accept-624-cortello-s-riddle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 624, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1040,
            text = "Kill Fleet Master Firallon.",
            route = {
                { y = 0.9064, mapID = 1434, label = "Fleet Master Firallon", offMapText = "Travel to Fleet Master Firallon.", x = 0.3058 },
            },
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            id = "objective-608-3-fleet-master-firallon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                questObjective = { id = 608, text = "Fleet Master Firallon", index = 3 },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 604 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Kill Captain Stillwater.",
            route = {
                { y = 0.882, mapID = 1434, label = "Captain Stillwater", offMapText = "Travel to Captain Stillwater.", x = 0.3287 },
            },
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            id = "objective-608-1-captain-stillwater",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                questObjective = { id = 608, text = "Captain Stillwater", index = 1 },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 604 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Message in a Bottle to Princess Poobah.",
            route = {
                { y = 0.8058, mapID = 1434, label = "Princess Poobah", offMapText = "Travel to Princess Poobah in Stranglethorn Vale.", x = 0.3853 },
            },
            dependsOn = { "accept-594-message-in-a-bottle" },
            id = "turnin-594-message-in-a-bottle",
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
                quest = { id = 594, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn.",
            route = {
                { mapID = 1434, x = 0.2717, y = 0.7701, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale." },
            },
            dependsOn = {
                "accept-608-the-bloodsail-buccaneers",
                "objective-608-2-captain-keelhaul",
                "objective-608-3-fleet-master-firallon",
                "objective-608-1-captain-stillwater",
            },
            id = "turnin-608-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 608, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 604 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2623-the-swamp-talker",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2623,
            priority = 1080,
        },
        {
            priority = 1090,
            route = {
                { y = 0.5734, mapID = 1435, label = "Bengor", offMapText = "Travel to Bengor in Swamp of Sorrows.", x = 0.4498 },
            },
            text = "Accept The Swamp Talker from Bengor.",
            id = "accept-2623-the-swamp-talker",
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
                quest = { id = 2623, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2622 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1100,
            route = {
                { y = 0.5479, mapID = 1435, label = "Fel'zerul", offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793 },
            },
            text = "Turn in Return to Fel'Zerul to Fel'zerul.",
            id = "turnin-1444-return-to-fel-zerul",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1444, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1429 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1110,
            text = "Collect 1 Warchief's Orders.",
            route = {
                { mapID = 1435, x = 0.626, y = 0.8808, label = "Warchief's Orders", offMapText = "Travel to Warchief's Orders." },
            },
            dependsOn = { "accept-2623-the-swamp-talker" },
            id = "objective-2623-1-swamp-talker",
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
                questObjective = { id = 2623, text = "Swamp Talker", index = 1, count = 1 },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2622 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Turn in Cortello's Riddle.",
            route = {
                { mapID = 1435, x = 0.2286, y = 0.4819, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle." },
            },
            dependsOn = { "accept-624-cortello-s-riddle" },
            id = "turnin-624-cortello-s-riddle",
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
                quest = { id = 624, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1130,
            route = {
                { mapID = 1435, x = 0.2286, y = 0.4819, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle." },
            },
            text = "Accept Cortello's Riddle.",
            id = "accept-625-cortello-s-riddle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 625, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 624 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1140,
            route = {
                { y = 0.3142, mapID = 1445, label = "Overlord Mok'Morokk", offMapText = "Travel to Overlord Mok'Morokk in Dustwallow Marsh.", x = 0.363 },
            },
            text = "Accept Challenge Overlord Mok'Morokk from Overlord Mok'Morokk.",
            id = "accept-1173-challenge-overlord-mok-morokk",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1173, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1172 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1150,
            text = "Turn in Challenge Overlord Mok'Morokk to Draz'Zilb.",
            route = {
                { y = 0.3308, mapID = 1445, label = "Draz'Zilb", offMapText = "Travel to Draz'Zilb in Dustwallow Marsh.", x = 0.3715 },
            },
            dependsOn = { "accept-1173-challenge-overlord-mok-morokk" },
            id = "turnin-1173-challenge-overlord-mok-morokk",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1173, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1172 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1160,
            text = "Turn in Cortello's Riddle.",
            route = {
                { y = 0.6615, mapID = 1445, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle.", x = 0.311 },
            },
            dependsOn = { "accept-625-cortello-s-riddle" },
            id = "turnin-625-cortello-s-riddle",
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
                quest = { id = 625, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 624 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            route = {
                { y = 0.6615, mapID = 1445, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle.", x = 0.311 },
            },
            text = "Accept Cortello's Riddle.",
            id = "accept-626-cortello-s-riddle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 626, state = "activeOrCompleted" },
            },
            sourceStep = 29,
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
            priority = 1180,
            route = {
                { y = 0.3742, mapID = 1413, label = "Silk Cloth", offMapText = "Travel to Silk Cloth.", x = 0.6264 },
            },
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            id = "collect-before-pickup-objective-4449-1-silk-cloth",
            kind = "note",
            conditions = { faction = "Horde" },
            complete = {
                item = { name = "Silk Cloth", minCount = 15 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 4449,
        },
        {
            priority = 1190,
            text = "Turn in The Swamp Talker to Fallen Hero of the Horde.",
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            dependsOn = { "accept-2623-the-swamp-talker", "objective-2623-1-swamp-talker" },
            id = "turnin-2623-the-swamp-talker",
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
                quest = { id = 2623, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2622 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1200,
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            text = "Accept A Tale of Sorrow from Fallen Hero of the Horde.",
            id = "accept-2801-a-tale-of-sorrow",
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
                quest = { id = 2801, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1210,
            text = "For A Tale of Sorrow: Listen to the Fallen Hero of the Horde tell his story.",
            id = "objective-2801-quest-work",
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
                quest = { id = 2801, state = "complete" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
        },
        {
            priority = 1220,
            text = "Turn in A Tale of Sorrow to Fallen Hero of the Horde.",
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            dependsOn = { "accept-2801-a-tale-of-sorrow", "objective-2801-quest-work" },
            id = "turnin-2801-a-tale-of-sorrow",
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
                quest = { id = 2801, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
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
