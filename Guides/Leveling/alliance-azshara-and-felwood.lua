local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Azshara & Felwood",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-azshara-and-felwood",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 52 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-3661-quest-work",
            kind = "note",
            text = "Reach level 42 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 42 },
            },
            requiredLevel = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3661,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { mapID = 1425, x = 0.22899999999999998, y = 0.5489999999999999, label = "Wildkin Feather", offMapText = "Travel to Wildkin Feather." },
            },
            text = "For Favored of Elune?: Collect 15 Wildkin Feathers from the Hinterlands for Erelas Ambersky in Rut'theran Village.",
            id = "objective-3661-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3661, state = "complete" },
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
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            text = "Turn in Favored of Elune? to Erelas Ambersky.",
            id = "turnin-3661-favored-of-elune",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3661, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3661-quest-work" },
        },
        {
            id = "level-before-accept-978-moontouched-wildkin",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 978,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.9205, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            text = "Accept Moontouched Wildkin from Erelas Ambersky.",
            id = "accept-978-moontouched-wildkin",
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
                quest = { id = 978, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "For The Super Snapper FX: Use the Super Snapper FX to take a snapshot of Gammerita.",
            id = "objective-2944-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2944, state = "complete" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2941 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            text = "Turn in The Super Snapper FX to Daryn Lightwind.",
            id = "turnin-2944-the-super-snapper-fx",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2944, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2941 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2944-quest-work" },
        },
        {
            priority = 80,
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            text = "Accept Return to Troyas from Daryn Lightwind.",
            id = "accept-2943-return-to-troyas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2943, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2944 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.4198, mapID = 1457, label = "Un'Goro Soil", offMapText = "Travel to Un'Goro Soil.", x = 0.396 },
            },
            text = "Collect 20 Un'Goro Soil. Keep the required materials for the quest.",
            id = "objective-3764-1-un-goro-soil",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3764, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Accept Assisting Arch Druid Staghelm from Innkeeper Saelienne in Darnassus.",
            id = "accept-3763-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3763, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 3789, 3790 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            text = "Turn in Assisting Arch Druid Staghelm to Arch Druid Fandral Staghelm.",
            id = "turnin-3763-assisting-arch-druid-staghelm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3763, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            alternativeQuests = { 3789, 3790 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3763-verified-pickup" },
        },
        {
            priority = 120,
            text = "Accept Assisting Arch Druid Staghelm from Innkeeper Allison in Stormwind City.",
            id = "accept-3789-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3789, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 3763, 3790 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            text = "Turn in Assisting Arch Druid Staghelm to Arch Druid Fandral Staghelm.",
            id = "turnin-3789-assisting-arch-druid-staghelm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3789, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            alternativeQuests = { 3763, 3790 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3789-verified-pickup" },
        },
        {
            priority = 140,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            text = "Turn in Assisting Arch Druid Staghelm to Arch Druid Fandral Staghelm.",
            id = "turnin-3790-assisting-arch-druid-staghelm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3790, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            alternativeQuests = { 3763, 3789 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            text = "Accept Un'Goro Soil from Arch Druid Fandral Staghelm.",
            id = "accept-3764-un-goro-soil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3764, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Turn in Un'Goro Soil to Jenal.",
            route = {
                { y = 0.0823, mapID = 1457, label = "Jenal", offMapText = "Travel to Jenal in Darnassus.", x = 0.3149 },
            },
            dependsOn = { "accept-3764-un-goro-soil" },
            id = "turnin-3764-un-goro-soil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3764, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.8562, mapID = 1457, label = "Gracina Spiritmight", offMapText = "Travel to Gracina Spiritmight in Darnassus.", x = 0.4184 },
            },
            text = "Turn in Rise of the Silithid to Gracina Spiritmight.",
            id = "turnin-162-rise-of-the-silithid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 162, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 113 },
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
                { y = 0.8562, mapID = 1457, label = "Gracina Spiritmight", offMapText = "Travel to Gracina Spiritmight in Darnassus.", x = 0.4184 },
            },
            text = "Accept March of the Silithid from Gracina Spiritmight.",
            id = "accept-4493-march-of-the-silithid",
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
                quest = { id = 4493, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 162 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5535-spiritual-unrest",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5535,
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.7816, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            text = "Accept Spiritual Unrest from Loh'atu.",
            id = "accept-5535-spiritual-unrest",
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
                quest = { id = 5535, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.7816, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            text = "Accept A Land Filled with Hatred from Loh'atu.",
            id = "accept-5536-a-land-filled-with-hatred",
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
                quest = { id = 5536, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Kill 6 Highborne Apparition.",
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Apparition", offMapText = "Travel to Highborne Apparition.", x = 0.134 },
            },
            dependsOn = { "accept-5535-spiritual-unrest" },
            id = "objective-5535-1-highborne-apparition",
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
                questObjective = { id = 5535, text = "Highborne Apparition", index = 1, count = 6 },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Kill 6 Highborne Lichling.",
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Lichling", offMapText = "Travel to Highborne Lichling.", x = 0.134 },
            },
            dependsOn = { "accept-5535-spiritual-unrest" },
            id = "objective-5535-2-highborne-lichling",
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
                questObjective = { id = 5535, text = "Highborne Lichling", index = 2, count = 6 },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Kill 2 Haldarr Trickster.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Trickster", offMapText = "Travel to Haldarr Trickster.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-2-haldarr-trickster",
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
                questObjective = { id = 5536, text = "Haldarr Trickster", index = 2, count = 2 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Kill 2 Haldarr Felsworn.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Felsworn", offMapText = "Travel to Haldarr Felsworn.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-3-haldarr-felsworn",
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
                questObjective = { id = 5536, text = "Haldarr Felsworn", index = 3, count = 2 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Kill 6 Haldarr Satyr.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Satyr", offMapText = "Travel to Haldarr Satyr.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-1-haldarr-satyr",
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
                questObjective = { id = 5536, text = "Haldarr Satyr", index = 1, count = 6 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Turn in Spiritual Unrest to Loh'atu.",
            route = {
                { y = 0.7817, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            dependsOn = {
                "accept-5535-spiritual-unrest",
                "objective-5535-1-highborne-apparition",
                "objective-5535-2-highborne-lichling",
            },
            id = "turnin-5535-spiritual-unrest",
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
                quest = { id = 5535, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            text = "Turn in A Land Filled with Hatred to Loh'atu.",
            route = {
                { y = 0.7817, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            dependsOn = {
                "accept-5536-a-land-filled-with-hatred",
                "objective-5536-2-haldarr-trickster",
                "objective-5536-3-haldarr-felsworn",
                "objective-5536-1-haldarr-satyr",
            },
            id = "turnin-5536-a-land-filled-with-hatred",
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
                quest = { id = 5536, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.8683, mapID = 1448, label = "Arathandris Silversky", offMapText = "Travel to Arathandris Silversky in Felwood.", x = 0.5415 },
            },
            text = "Accept Cleansing Felwood from Arathandris Silversky.",
            id = "accept-4101-cleansing-felwood",
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
                quest = { id = 4101, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5155-forces-of-jaedenar",
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
            checkpointQuest = 5155,
            priority = 300,
        },
        {
            priority = 310,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Forces of Jaedenar from Greta Mosshoof.",
            id = "accept-5155-forces-of-jaedenar",
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
                quest = { id = 5155, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept The Corruption of the Jadefire from Eridan Bluewind.",
            id = "accept-4421-the-corruption-of-the-jadefire",
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
                quest = { id = 4421, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.8501, mapID = 1448, label = "Grazle", offMapText = "Travel to Grazle in Felwood.", x = 0.5093 },
            },
            text = "Accept Timbermaw Ally from Grazle.",
            id = "accept-8460-timbermaw-ally",
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
                quest = { id = 8460, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Kill 6 Deadwood Warrior.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Warrior", offMapText = "Travel to Deadwood Warrior.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-1-deadwood-warrior",
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
                questObjective = { id = 8460, text = "Deadwood Warrior", index = 1, count = 6 },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Kill 6 Deadwood Pathfinder.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Pathfinder", offMapText = "Travel to Deadwood Pathfinder.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-2-deadwood-pathfinder",
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
                questObjective = { id = 8460, text = "Deadwood Pathfinder", index = 2, count = 6 },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Kill 6 Deadwood Gardener.",
            route = {
                { y = 0.892, mapID = 1448, label = "Deadwood Gardener", offMapText = "Travel to Deadwood Gardener.", x = 0.484 },
            },
            dependsOn = { "accept-8460-timbermaw-ally" },
            id = "objective-8460-3-deadwood-gardener",
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
                questObjective = { id = 8460, text = "Deadwood Gardener", index = 3, count = 6 },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 8460, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            route = {
                { y = 0.8502, mapID = 1448, label = "Grazle", offMapText = "Travel to Grazle in Felwood.", x = 0.5093 },
            },
            text = "Accept Speak to Nafien from Grazle.",
            id = "accept-8462-speak-to-nafien",
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
                quest = { id = 8462, state = "activeOrCompleted" },
            },
            sourceStep = 20,
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
            priority = 390,
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
            text = "Open the Package of Empty Ooze Containers to obtain 6 Empty Cursed Ooze Jars and 6 Empty Tainted Ooze Jars.",
            id = "objective-4512-1-package-of-empty-ooze-containers",
            kind = "note",
            useClientPin = false,
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Empty Cursed Ooze Jar", minCount = 6 },
                            },
                            {
                                item = { name = "Empty Tainted Ooze Jar", minCount = 6 },
                            },
                        },
                    },
                    {
                        quest = { id = 4512, state = "complete" },
                    },
                },
            },
            route = {
                { mapID = 1448, x = 0.41600000000000004, y = 0.716, label = "Filled Cursed Ooze Jar", offMapText = "Travel to Filled Cursed Ooze Jar." },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
            sourceInstructionStep = 23,
            sourceInstructionIndex = 1,
            checkpointQuest = 4512,
            instructionOnly = true,
            rememberPreparation = 4512,
        },
        {
            id = "objective-4421-reviewed-4",
            kind = "objective",
            text = "Kill Xavathras at the southern Jadefire ruins.",
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
            requiredQuests = {},
            complete = {
                questObjective = { id = 4421, index = 4, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1448, x = 0.3224, y = 0.6709999999999999, label = "Xavathras", offMapText = "Travel to Xavathras." },
            },
            sourceStep = 24,
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
            priority = 400,
        },
        {
            id = "objective-4421-2-jadefire-shadowstalker",
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
            text = "Kill 9 Jadefire Shadowstalker.",
            complete = {
                questObjective = { id = 4421, index = 2, text = "Jadefire Shadowstalker", count = 9 },
            },
            route = {
                { mapID = 1448, x = 0.344, y = 0.664, label = "Jadefire Shadowstalker", offMapText = "Travel to Jadefire Shadowstalker." },
            },
            sourceStep = 25,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
        },
        {
            priority = 420,
            route = {
                { mapID = 1448, x = 0.41600000000000004, y = 0.716, label = "Cursed Oozes", offMapText = "Travel to Cursed Oozes." },
            },
            text = "Kill Cursed Oozes in Felwood. Use an Empty Cursed Ooze Jar on each corpse to make 6 Filled Cursed Ooze Jars.",
            id = "objective-4512-1-cursed-ooze",
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
                questObjective = { id = 4512, index = 1, count = 6 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4421-3-jadefire-rogue",
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
            text = "Kill 9 Jadefire Rogue.",
            complete = {
                questObjective = { id = 4421, index = 3, text = "Jadefire Rogue", count = 9 },
            },
            route = {
                { mapID = 1448, x = 0.344, y = 0.664, label = "Jadefire Rogue", offMapText = "Travel to Jadefire Rogue." },
            },
            sourceStep = 25,
            priority = 430,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
        },
        {
            id = "objective-4421-1-jadefire-felsworn",
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
            text = "Kill 11 Jadefire Felsworn.",
            complete = {
                questObjective = { id = 4421, index = 1, text = "Jadefire Felsworn", count = 11 },
            },
            route = {
                { mapID = 1448, x = 0.344, y = 0.664, label = "Jadefire Felsworn", offMapText = "Travel to Jadefire Felsworn." },
            },
            sourceStep = 25,
            priority = 440,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
        },
        {
            priority = 450,
            route = {
                { mapID = 1448, x = 0.408, y = 0.59, label = "Tainted Oozes", offMapText = "Travel to Tainted Oozes." },
            },
            text = "Kill Tainted Oozes in Felwood. Use an Empty Tainted Ooze Jar on each corpse to make 6 Filled Tainted Ooze Jars.",
            id = "objective-4512-2-tainted-ooze",
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
                questObjective = { id = 4512, index = 2, count = 6 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Kill 4 Jaedenar Hound.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Hound", offMapText = "Travel to Jaedenar Hound.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-1-jaedenar-hound",
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
                questObjective = { id = 5155, text = "Jaedenar Hound", index = 1, count = 4 },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Kill 4 Jaedenar Guardian.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Guardian", offMapText = "Travel to Jaedenar Guardian.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-2-jaedenar-guardian",
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
                questObjective = { id = 5155, text = "Jaedenar Guardian", index = 2, count = 4 },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Kill 6 Jaedenar Adept.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Adept", offMapText = "Travel to Jaedenar Adept.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-3-jaedenar-adept",
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
                questObjective = { id = 5155, text = "Jaedenar Adept", index = 3, count = 6 },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Kill 6 Jaedenar Cultist.",
            route = {
                { y = 0.576, mapID = 1448, label = "Jaedenar Cultist", offMapText = "Travel to Jaedenar Cultist.", x = 0.404 },
            },
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            id = "objective-5155-4-jaedenar-cultist",
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
                questObjective = { id = 5155, text = "Jaedenar Cultist", index = 4, count = 6 },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 5155, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof.",
            id = "accept-5157-collection-of-the-corrupt-water",
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
                quest = { id = 5157, state = "activeOrCompleted" },
            },
            sourceStep = 28,
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
            priority = 520,
            text = "Turn in The Corruption of the Jadefire to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = {
                "accept-4421-the-corruption-of-the-jadefire",
                "objective-4421-2-jadefire-shadowstalker",
                "objective-4421-3-jadefire-rogue",
                "objective-4421-1-jadefire-felsworn",
                "objective-4421-reviewed-4",
            },
            id = "turnin-4421-the-corruption-of-the-jadefire",
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
                quest = { id = 4421, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Further Corruption from Eridan Bluewind.",
            id = "accept-4906-further-corruption",
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
                quest = { id = 4906, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            route = {
                { y = 0.8162, mapID = 1448, label = "Taronn Redfeather", offMapText = "Travel to Taronn Redfeather in Felwood.", x = 0.5089 },
            },
            text = "Accept Verifying the Corruption from Taronn Redfeather.",
            id = "accept-5156-verifying-the-corruption",
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
                quest = { id = 5156, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5156-1-entropic-beast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 33,
            priority = 550,
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
                    { faction = "Alliance" },
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
            sourceStep = 33,
            priority = 560,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5156-verifying-the-corruption" },
        },
        {
            id = "loot-starter-before-accept-939-flute-of-xavaric",
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
            text = "Loot Flute of Xavaric from Xavaric. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Flute of Xavaric", minCount = 1 },
                    },
                    {
                        quest = { id = 939, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 570,
        },
        {
            id = "objective-4906-reviewed-4",
            kind = "objective",
            text = "Kill Xavaric at Jadefire Run.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            complete = {
                questObjective = { id = 4906, index = 4, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1448, x = 0.3907, y = 0.2235, label = "Xavaric", offMapText = "Travel to Xavaric." },
            },
            sourceStep = 34,
            dependsOn = { "accept-4906-further-corruption" },
            priority = 580,
        },
        {
            priority = 590,
            text = "Use the Flute of Xavaric to accept Flute of Xavaric.",
            id = "accept-939-flute-of-xavaric",
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
                quest = { id = 939, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            text = "Collect 5 Jadefire Felbind.",
            route = {
                { y = 0.2, mapID = 1448, label = "Jadefire Hellcaller", offMapText = "Travel to Jadefire Hellcaller.", x = 0.404 },
            },
            dependsOn = { "accept-939-flute-of-xavaric" },
            id = "objective-939-1-jadefire-hellcaller",
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
                questObjective = { id = 939, text = "Jadefire Hellcaller", index = 1, count = 5 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4906-1-jadefire-hellcaller",
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
            text = "Kill 8 Jadefire Hellcaller.",
            complete = {
                questObjective = { id = 4906, index = 1, text = "Jadefire Hellcaller", count = 8 },
            },
            route = {
                { mapID = 1448, x = 0.40399999999999997, y = 0.2, label = "Jadefire Hellcaller", offMapText = "Travel to Jadefire Hellcaller." },
            },
            sourceStep = 37,
            priority = 610,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4906-further-corruption" },
        },
        {
            id = "objective-4906-2-jadefire-betrayer",
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
            text = "Kill 8 Jadefire Betrayer.",
            complete = {
                questObjective = { id = 4906, index = 2, text = "Jadefire Betrayer", count = 8 },
            },
            route = {
                { mapID = 1448, x = 0.40399999999999997, y = 0.2, label = "Jadefire Betrayer", offMapText = "Travel to Jadefire Betrayer." },
            },
            sourceStep = 37,
            priority = 620,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4906-further-corruption" },
        },
        {
            id = "objective-4906-3-jadefire-trickster",
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
            text = "Kill 8 Jadefire Trickster.",
            complete = {
                questObjective = { id = 4906, index = 3, text = "Jadefire Trickster", count = 8 },
            },
            route = {
                { mapID = 1448, x = 0.40399999999999997, y = 0.2, label = "Jadefire Trickster", offMapText = "Travel to Jadefire Trickster." },
            },
            sourceStep = 37,
            priority = 630,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4906-further-corruption" },
        },
        {
            priority = 640,
            text = "Collect 15 Blood Amber.",
            route = {
                { y = 0.1685, mapID = 1448, label = "Warpwood Moss Flayer", offMapText = "Travel to Warpwood Moss Flayer.", x = 0.5578 },
            },
            dependsOn = { "accept-4101-cleansing-felwood" },
            id = "objective-4101-1-warpwood-moss-flayer",
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
                questObjective = { id = 4101, text = "Warpwood Moss Flayer", index = 1, count = 15 },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            text = "Turn in Speak to Nafien to Nafien.",
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            dependsOn = { "accept-8462-speak-to-nafien" },
            id = "turnin-8462-speak-to-nafien",
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
                quest = { id = 8462, state = "completed" },
            },
            sourceStep = 40,
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
            priority = 660,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Turn in It's a Secret to Everybody to Donova Snowden.",
            id = "turnin-3908-it-s-a-secret-to-everybody",
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
                quest = { id = 3908, state = "completed" },
            },
            sourceStep = 41,
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
            priority = 670,
            route = {
                { y = 0.4516, mapID = 1452, label = "Donova Snowden", offMapText = "Travel to Donova Snowden in Winterspring.", x = 0.3127 },
            },
            text = "Accept The Videre Elixir from Donova Snowden.",
            id = "accept-3909-the-videre-elixir",
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
                quest = { id = 3909, state = "activeOrCompleted" },
            },
            sourceStep = 41,
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
            priority = 680,
            text = "Collect 10 Moontouched Feather.",
            route = {
                { y = 0.467, mapID = 1452, label = "Moontouched Feather", offMapText = "Travel to Moontouched Feather.", x = 0.294 },
            },
            dependsOn = { "accept-978-moontouched-wildkin" },
            id = "objective-978-1-moontouched-feather",
            kind = "objective",
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
                questObjective = { id = 978, text = "Moontouched Feather", index = 1, count = 10 },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Verifying the Corruption to Taronn Redfeather.",
            route = {
                { y = 0.8162, mapID = 1448, label = "Taronn Redfeather", offMapText = "Travel to Taronn Redfeather in Felwood.", x = 0.5089 },
            },
            dependsOn = { "accept-5156-verifying-the-corruption", "objective-5156-1-entropic-beast", "objective-5156-2-entropic-horror" },
            id = "turnin-5156-verifying-the-corruption",
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
                quest = { id = 5156, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            text = "Turn in Flute of Xavaric to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "accept-939-flute-of-xavaric", "objective-939-1-jadefire-hellcaller" },
            id = "turnin-939-flute-of-xavaric",
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
                quest = { id = 939, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Felbound Ancients from Eridan Bluewind.",
            id = "accept-4441-felbound-ancients",
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
                quest = { id = 4441, state = "activeOrCompleted" },
            },
            sourceStep = 47,
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
            priority = 720,
            text = "Turn in Further Corruption to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = {
                "accept-4906-further-corruption",
                "objective-4906-1-jadefire-hellcaller",
                "objective-4906-2-jadefire-betrayer",
                "objective-4906-3-jadefire-trickster",
                "objective-4906-reviewed-4",
            },
            id = "turnin-4906-further-corruption",
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
                quest = { id = 4906, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            text = "Follow the path into Jaedenar. Use the Empty Canteen at the corrupted moonwell to obtain Corrupt Moonwell Water.",
            id = "objective-5157-quest-work",
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
                questObjective = { id = 5157, index = 1, count = 1 },
            },
            sourceStep = 48,
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
            priority = 740,
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof.",
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            dependsOn = { "accept-5157-collection-of-the-corrupt-water", "objective-5157-quest-work" },
            id = "turnin-5157-collection-of-the-corrupt-water",
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
                quest = { id = 5157, state = "completed" },
            },
            sourceStep = 48,
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
            priority = 750,
            route = {
                { y = 0.8211, mapID = 1448, label = "Greta Mosshoof", offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121 },
            },
            text = "Accept Seeking Spiritual Aid from Greta Mosshoof.",
            id = "accept-5158-seeking-spiritual-aid",
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
                quest = { id = 5158, state = "activeOrCompleted" },
            },
            sourceStep = 48,
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
            priority = 760,
            text = "Turn in Cleansing Felwood to Arathandris Silversky.",
            route = {
                { y = 0.8683, mapID = 1448, label = "Arathandris Silversky", offMapText = "Travel to Arathandris Silversky in Felwood.", x = 0.5415 },
            },
            dependsOn = { "accept-4101-cleansing-felwood", "objective-4101-1-warpwood-moss-flayer" },
            id = "turnin-4101-cleansing-felwood",
            kind = "turnin",
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
                quest = { id = 4101, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
