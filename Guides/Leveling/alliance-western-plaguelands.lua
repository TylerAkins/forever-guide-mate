local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Western Plaguelands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-western-plaguelands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 51 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-5066-verified-pickup",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 5066,
            alternativeQuests = { 5090, 5091 },
            priority = 10,
        },
        {
            priority = 20,
            text = "Accept A Call to Arms: The Plaguelands! from Crier Goodman in Stormwind City.",
            id = "accept-5066-verified-pickup",
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
                quest = { id = 5066, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 5090, 5091 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            id = "turnin-5066-a-call-to-arms-the-plaguelands",
            kind = "turnin",
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
                quest = { id = 5066, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            alternativeQuests = { 5090, 5091 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5066-verified-pickup" },
        },
        {
            priority = 40,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            id = "turnin-5090-a-call-to-arms-the-plaguelands",
            kind = "turnin",
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
                quest = { id = 5090, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            alternativeQuests = { 5066, 5091 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "Accept A Call to Arms: The Plaguelands! from Herald Moonstalker in Darnassus.",
            id = "accept-5091-verified-pickup",
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
                quest = { id = 5091, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 5066, 5090 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            id = "turnin-5091-a-call-to-arms-the-plaguelands",
            kind = "turnin",
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
                quest = { id = 5091, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            alternativeQuests = { 5066, 5090 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5091-verified-pickup" },
        },
        {
            priority = 70,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Accept Clear the Way from Commander Ashlam Valorfist.",
            id = "accept-5092-clear-the-way",
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
                quest = { id = 5092, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5401-argent-dawn-commission",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5401,
            alternativeQuests = { 5405, 5503 },
            priority = 80,
        },
        {
            priority = 90,
            route = {
                { y = 0.8355, mapID = 1422, label = "Argent Officer Pureheart", offMapText = "Travel to Argent Officer Pureheart in Western Plaguelands.", x = 0.4297 },
            },
            text = "Accept Argent Dawn Commission from Argent Officer Pureheart.",
            id = "accept-5401-argent-dawn-commission",
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
                quest = { id = 5401, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            alternativeQuests = { 5405, 5503 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Kill 10 Skeletal Flayer.",
            route = {
                { y = 0.794, mapID = 1422, label = "Skeletal Flayer", offMapText = "Travel to Skeletal Flayer.", x = 0.508 },
            },
            dependsOn = { "accept-5092-clear-the-way" },
            id = "objective-5092-1-skeletal-flayer",
            kind = "objective",
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
                questObjective = { id = 5092, text = "Skeletal Flayer", index = 1, count = 10 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Kill 10 Slavering Ghoul.",
            route = {
                { y = 0.794, mapID = 1422, label = "Slavering Ghoul", offMapText = "Travel to Slavering Ghoul.", x = 0.508 },
            },
            dependsOn = { "accept-5092-clear-the-way" },
            id = "objective-5092-2-slavering-ghoul",
            kind = "objective",
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
                questObjective = { id = 5092, text = "Slavering Ghoul", index = 2, count = 10 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            text = "Turn in Clear the Way to Commander Ashlam Valorfist.",
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            dependsOn = { "accept-5092-clear-the-way", "objective-5092-1-skeletal-flayer", "objective-5092-2-slavering-ghoul" },
            id = "turnin-5092-clear-the-way",
            kind = "turnin",
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
                quest = { id = 5092, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Accept The Scourge Cauldrons from Commander Ashlam Valorfist.",
            id = "accept-5215-the-scourge-cauldrons",
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
                quest = { id = 5215, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5092 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in The Scourge Cauldrons to High Priestess MacDonnell.",
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            dependsOn = { "accept-5215-the-scourge-cauldrons" },
            id = "turnin-5215-the-scourge-cauldrons",
            kind = "turnin",
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
                quest = { id = 5215, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5092 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            text = "Accept Target: Felstone Field from High Priestess MacDonnell.",
            id = "accept-5216-target-felstone-field",
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
                quest = { id = 5216, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5215 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Collect 1 Felstone Field Cauldron Key.",
            route = {
                { y = 0.5711, mapID = 1422, label = "Cauldron Lord Bilemaw", offMapText = "Travel to Cauldron Lord Bilemaw.", x = 0.3703 },
            },
            dependsOn = { "accept-5216-target-felstone-field" },
            id = "objective-5216-1-cauldron-lord-bilemaw",
            kind = "objective",
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
                questObjective = { id = 5216, text = "Cauldron Lord Bilemaw", index = 1, count = 1 },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5215 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Target: Felstone Field.",
            route = {
                { y = 0.5687, mapID = 1422, label = "Target: Felstone Field", offMapText = "Travel to Target: Felstone Field.", x = 0.3719 },
            },
            dependsOn = { "accept-5216-target-felstone-field", "objective-5216-1-cauldron-lord-bilemaw" },
            id = "turnin-5216-target-felstone-field",
            kind = "turnin",
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
                quest = { id = 5216, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5215 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.5687, mapID = 1422, label = "Return to Chillwind Camp", offMapText = "Travel to Chillwind Camp.", x = 0.3719 },
            },
            text = "Accept Return to Chillwind Camp.",
            id = "accept-5217-return-to-chillwind-camp",
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
                quest = { id = 5217, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5216 },
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
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            text = "Accept Better Late Than Never from Janice Felstone.",
            id = "accept-5021-better-late-than-never",
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
                quest = { id = 5021, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in Better Late Than Never.",
            route = {
                { y = 0.5524, mapID = 1422, label = "Better Late Than Never", offMapText = "Travel to Better Late Than Never.", x = 0.3873 },
            },
            dependsOn = { "accept-5021-better-late-than-never" },
            id = "turnin-5021-better-late-than-never",
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
                quest = { id = 5021, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.5524, mapID = 1422, label = "Better Late Than Never", offMapText = "Travel to Better Late Than Never.", x = 0.3873 },
            },
            text = "Accept Better Late Than Never.",
            id = "accept-5022-better-late-than-never",
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
                quest = { id = 5022, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            dependsOn = { "accept-5217-return-to-chillwind-camp" },
            id = "turnin-5217-return-to-chillwind-camp",
            kind = "turnin",
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
                quest = { id = 5217, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5216 },
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
