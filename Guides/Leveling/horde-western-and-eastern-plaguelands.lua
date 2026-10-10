local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Western & Eastern Plaguelands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-western-and-eastern-plaguelands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 56 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-5094-a-call-to-arms-the-plaguelands",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 5094,
            alternativeQuests = { 5093, 5095 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.44, mapID = 1458, label = "Harbinger Balthazad", offMapText = "Travel to Harbinger Balthazad in Undercity.", x = 0.634 },
            },
            text = "Accept A Call to Arms: The Plaguelands! from Harbinger Balthazad.",
            id = "accept-5094-a-call-to-arms-the-plaguelands",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5094, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            alternativeQuests = { 5093, 5095 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "accept-5093-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Speak with Warcaller Gorlach to accept A Call to Arms: The Plaguelands!.",
            complete = {
                quest = { id = 5093, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1454, x = 0.3768, y = 0.7515999999999999, label = "Warcaller Gorlach", offMapText = "Travel to Warcaller Gorlach." },
            },
            priority = 30,
            requiredQuests = {},
            alternativeQuests = { 5094, 5095 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "turnin-5093-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            complete = {
                quest = { id = 5093, state = "completed" },
            },
            route = {
                { mapID = 1420, x = 0.8312999999999999, y = 0.6893, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades." },
            },
            sourceStep = 3,
            priority = 40,
            requiredQuests = {},
            alternativeQuests = { 5094, 5095 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5093-verified-pickup" },
        },
        {
            id = "turnin-5094-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            complete = {
                quest = { id = 5094, state = "completed" },
            },
            route = {
                { mapID = 1420, x = 0.8312999999999999, y = 0.6893, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades." },
            },
            sourceStep = 3,
            priority = 50,
            requiredQuests = {},
            alternativeQuests = { 5093, 5095 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5094-a-call-to-arms-the-plaguelands" },
        },
        {
            id = "accept-5095-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Accept A Call to Arms: The Plaguelands! from Bluff Runner Windstrider in Thunder Bluff.",
            complete = {
                quest = { id = 5095, state = "activeOrCompleted" },
            },
            priority = 60,
            requiredQuests = {},
            alternativeQuests = { 5093, 5094 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            id = "turnin-5095-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            complete = {
                quest = { id = 5095, state = "completed" },
            },
            route = {
                { mapID = 1420, x = 0.8312999999999999, y = 0.6893, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades." },
            },
            sourceStep = 3,
            priority = 70,
            requiredQuests = {},
            alternativeQuests = { 5093, 5094 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5095-verified-pickup" },
        },
        {
            priority = 80,
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            text = "Accept Scarlet Diversions from High Executor Derrington.",
            id = "accept-5096-scarlet-diversions",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5096, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.6845, mapID = 1420, label = "Argent Officer Garush", offMapText = "Travel to Argent Officer Garush in Tirisfal Glades.", x = 0.8319 },
            },
            text = "Turn in The Everlook Report to Argent Officer Garush.",
            id = "turnin-6029-the-everlook-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6029, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5405-argent-dawn-commission",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5405,
            alternativeQuests = { 5401, 5503 },
            priority = 100,
        },
        {
            priority = 110,
            route = {
                { y = 0.6845, mapID = 1420, label = "Argent Officer Garush", offMapText = "Travel to Argent Officer Garush in Tirisfal Glades.", x = 0.8319 },
            },
            text = "Accept Argent Dawn Commission from Argent Officer Garush.",
            id = "accept-5405-argent-dawn-commission",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5405, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            alternativeQuests = { 5401, 5503 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Use Scourge Banner.",
            route = {
                { y = 0.5198, mapID = 1422, label = "Scourge Banner", offMapText = "Travel to Scourge Banner.", x = 0.4068 },
            },
            dependsOn = { "accept-5096-scarlet-diversions" },
            id = "objective-5096-1-scourge-banner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5096, text = "Scourge Banner", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Turn in Scarlet Diversions to High Executor Derrington.",
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            dependsOn = { "accept-5096-scarlet-diversions", "objective-5096-1-scourge-banner" },
            id = "turnin-5096-scarlet-diversions",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5096, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            text = "Accept All Along the Watchtowers from High Executor Derrington.",
            id = "accept-5098-all-along-the-watchtowers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5098, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            text = "Accept The Scourge Cauldrons from High Executor Derrington.",
            id = "accept-5228-the-scourge-cauldrons",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5228, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Turn in The Scourge Cauldrons to Shadow Priestess Vandis.",
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8303 },
            },
            dependsOn = { "accept-5228-the-scourge-cauldrons" },
            id = "turnin-5228-the-scourge-cauldrons",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5228, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8303 },
            },
            text = "Accept Target: Felstone Field from Shadow Priestess Vandis.",
            id = "accept-5229-target-felstone-field",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5229, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5228 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Collect 1 Felstone Field Cauldron Key.",
            route = {
                { y = 0.5711, mapID = 1422, label = "Cauldron Lord Bilemaw", offMapText = "Travel to Cauldron Lord Bilemaw.", x = 0.3703 },
            },
            dependsOn = { "accept-5229-target-felstone-field" },
            id = "objective-5229-1-cauldron-lord-bilemaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5229, text = "Cauldron Lord Bilemaw", index = 1, count = 1 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5228 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Turn in Target: Felstone Field.",
            route = {
                { y = 0.5687, mapID = 1422, label = "Target: Felstone Field", offMapText = "Travel to Target: Felstone Field.", x = 0.3719 },
            },
            dependsOn = { "accept-5229-target-felstone-field", "objective-5229-1-cauldron-lord-bilemaw" },
            id = "turnin-5229-target-felstone-field",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5229, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5228 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            route = {
                { y = 0.5687, mapID = 1422, label = "Return to the Bulwark", offMapText = "Travel to the Bulwark.", x = 0.3719 },
            },
            text = "Accept Return to the Bulwark.",
            id = "accept-5230-return-to-the-bulwark",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5230, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5229 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            text = "Accept Better Late Than Never from Janice Felstone.",
            id = "accept-5021-better-late-than-never",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5021, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in Better Late Than Never.",
            route = {
                { y = 0.5524, mapID = 1422, label = "Better Late Than Never", offMapText = "Travel to Better Late Than Never.", x = 0.3873 },
            },
            dependsOn = { "accept-5021-better-late-than-never" },
            id = "turnin-5021-better-late-than-never",
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
                quest = { id = 5021, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.5524, mapID = 1422, label = "Better Late Than Never", offMapText = "Travel to Better Late Than Never.", x = 0.3873 },
            },
            text = "Accept Better Late Than Never.",
            id = "accept-5023-better-late-than-never",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5023, state = "activeOrCompleted" },
            },
            sourceStep = 14,
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
            priority = 240,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            dependsOn = { "accept-5230-return-to-the-bulwark" },
            id = "turnin-5230-return-to-the-bulwark",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5230, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5229 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            text = "Accept Target: Dalson's Tears from Shadow Priestess Vandis.",
            id = "accept-5231-target-dalson-s-tears",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5231, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5230 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Collect 1 Dalson's Tears Cauldron Key.",
            route = {
                { y = 0.5238, mapID = 1422, label = "Cauldron Lord Malvinious", offMapText = "Travel to Cauldron Lord Malvinious.", x = 0.4618 },
            },
            dependsOn = { "accept-5231-target-dalson-s-tears" },
            id = "objective-5231-1-cauldron-lord-malvinious",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5231, text = "Cauldron Lord Malvinious", index = 1, count = 1 },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5230 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Turn in Target: Dalson's Tears.",
            route = {
                { y = 0.5202, mapID = 1422, label = "Target: Dalson's Tears", offMapText = "Travel to Target: Dalson's Tears.", x = 0.4618 },
            },
            dependsOn = { "accept-5231-target-dalson-s-tears", "objective-5231-1-cauldron-lord-malvinious" },
            id = "turnin-5231-target-dalson-s-tears",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5231, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5230 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.5202, mapID = 1422, label = "Return to the Bulwark", offMapText = "Travel to the Bulwark.", x = 0.4618 },
            },
            text = "Accept Return to the Bulwark.",
            id = "accept-5232-return-to-the-bulwark",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5232, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5231 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5058-mrs-dalson-s-diary",
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
            checkpointQuest = 5058,
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.5067, mapID = 1422, label = "Mrs. Dalson's Diary", offMapText = "Travel to Mrs. Dalson's Diary.", x = 0.4779 },
            },
            text = "Accept Mrs. Dalson's Diary.",
            id = "accept-5058-mrs-dalson-s-diary",
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
                quest = { id = 5058, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            route = {
                { y = 0.4927, mapID = 1422, label = "Wandering Skeleton", offMapText = "Travel to Wandering Skeleton.", x = 0.4834 },
            },
            text = "Kill Wandering Skeleton. Loot the starter item here, then use it to accept the quest.",
            id = "objective-5060-1-wandering-skeleton",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5060, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            route = {
                { y = 0.4971, mapID = 1422, label = "Farmer Dalson", offMapText = "Travel to Farmer Dalson.", x = 0.4811 },
            },
            text = "Kill Farmer Dalson. Loot the starter item here, then use it to accept the quest.",
            id = "objective-5060-1-farmer-dalson",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5060, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.4965, mapID = 1422, label = "Locked Away", offMapText = "Travel to Locked Away.", x = 0.4737 },
            },
            text = "Accept Locked Away.",
            id = "accept-5060-locked-away",
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
                quest = { id = 5060, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4971-a-matter-of-time",
            kind = "note",
            text = "Reach level 53 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 53 },
            },
            requiredLevel = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4971,
            priority = 340,
        },
        {
            priority = 350,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept A Matter of Time from Chromie.",
            id = "accept-4971-a-matter-of-time",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4971, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.7152, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4013 },
            },
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            id = "objective-5098-1-beacon-torch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5098, text = "Beacon Torch", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.711, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.467 },
            },
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            id = "objective-5098-4-beacon-torch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5098, text = "Beacon Torch", index = 4 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Use the Temporal Displacer beside the ruined silos in Andorhal to reveal Temporal Parasites. Kill 10 Temporal Parasites.",
            route = {
                { y = 0.63, mapID = 1422, label = "Temporal Displacer", offMapText = "Travel to Temporal Displacer.", x = 0.45 },
            },
            dependsOn = { "accept-4971-a-matter-of-time" },
            id = "objective-4971-1-temporal-displacer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4971, index = 1, count = 10 },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.6337, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4422 },
            },
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            id = "objective-5098-3-beacon-torch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5098, text = "Beacon Torch", index = 3 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.6627, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4244 },
            },
            dependsOn = { "accept-5098-all-along-the-watchtowers" },
            id = "objective-5098-2-beacon-torch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5098, text = "Beacon Torch", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in A Matter of Time to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-4971-a-matter-of-time", "objective-4971-1-temporal-displacer" },
            id = "turnin-4971-a-matter-of-time",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4971, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept Counting Out Time from Chromie.",
            id = "accept-4972-counting-out-time",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4972, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4971 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4972-1-andorhal-watch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            text = "Collect 5 Andorhal Watch.",
            complete = {
                questObjective = { id = 4972, index = 1, text = "Andorhal Watch", count = 5 },
            },
            route = {
                { mapID = 1422, x = 0.423, y = 0.688, label = "Andorhal Watch", offMapText = "Travel to Andorhal Watch." },
            },
            sourceStep = 29,
            priority = 430,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4971 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4972-counting-out-time" },
        },
        {
            priority = 440,
            text = "Turn in All Along the Watchtowers to High Executor Derrington.",
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            dependsOn = {
                "accept-5098-all-along-the-watchtowers",
                "objective-5098-1-beacon-torch",
                "objective-5098-4-beacon-torch",
                "objective-5098-3-beacon-torch",
                "objective-5098-2-beacon-torch",
            },
            id = "turnin-5098-all-along-the-watchtowers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5098, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5096 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-838-scholomance",
            kind = "note",
            text = "Reach level 55 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 55 },
            },
            requiredLevel = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 838,
            priority = 450,
        },
        {
            priority = 460,
            route = {
                { y = 0.6893, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            text = "Accept Scholomance from High Executor Derrington.",
            id = "accept-838-scholomance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 838, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5098 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Scholomance to Apothecary Dithers.",
            route = {
                { y = 0.6923, mapID = 1420, label = "Apothecary Dithers", offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.", x = 0.8328 },
            },
            dependsOn = { "accept-838-scholomance" },
            id = "turnin-838-scholomance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 838, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5098 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.6923, mapID = 1420, label = "Apothecary Dithers", offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.", x = 0.8328 },
            },
            text = "Accept Skeletal Fragments from Apothecary Dithers.",
            id = "accept-964-skeletal-fragments",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 964, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 838 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            dependsOn = { "accept-5232-return-to-the-bulwark" },
            id = "turnin-5232-return-to-the-bulwark",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5232, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5231 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            text = "Accept Target: Writhing Haunt from Shadow Priestess Vandis.",
            id = "accept-5233-target-writhing-haunt",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5233, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5232 },
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
                { y = 0.7233, mapID = 1420, label = "Mickey Levine", offMapText = "Travel to Mickey Levine in Tirisfal Glades.", x = 0.8329 },
            },
            text = "Accept A Plague Upon Thee from Mickey Levine.",
            id = "accept-5901-a-plague-upon-thee",
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
                quest = { id = 5901, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Collect 15 Skeletal Fragments.",
            route = {
                { y = 0.586, mapID = 1422, label = "Skeletal Sorcerer", offMapText = "Travel to Skeletal Sorcerer.", x = 0.362 },
            },
            dependsOn = { "accept-964-skeletal-fragments" },
            id = "objective-964-1-skeletal-sorcerer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 964, text = "Skeletal Sorcerer", index = 1, count = 15 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 838 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Collect 1 Writhing Haunt Cauldron Key.",
            route = {
                { y = 0.6606, mapID = 1422, label = "Cauldron Lord Razarch", offMapText = "Travel to Cauldron Lord Razarch.", x = 0.5302 },
            },
            dependsOn = { "accept-5233-target-writhing-haunt" },
            id = "objective-5233-1-cauldron-lord-razarch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5233, text = "Cauldron Lord Razarch", index = 1, count = 1 },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5232 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Turn in Target: Writhing Haunt.",
            route = {
                { y = 0.6572, mapID = 1422, label = "Target: Writhing Haunt", offMapText = "Travel to Target: Writhing Haunt.", x = 0.5302 },
            },
            dependsOn = { "accept-5233-target-writhing-haunt", "objective-5233-1-cauldron-lord-razarch" },
            id = "turnin-5233-target-writhing-haunt",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5233, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5232 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.6572, mapID = 1422, label = "Return to the Bulwark", offMapText = "Travel to the Bulwark.", x = 0.5302 },
            },
            text = "Accept Return to the Bulwark.",
            id = "accept-5234-return-to-the-bulwark",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5234, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5233 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4984, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            id = "accept-6004-unfinished-business",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6004, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            text = "Kill 2 Scarlet Mage.",
            route = {
                { y = 0.4112, mapID = 1422, label = "Scarlet Mage", offMapText = "Travel to Scarlet Mage.", x = 0.5047 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-3-scarlet-mage",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Mage", index = 3, count = 2 },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Kill 2 Scarlet Knight.",
            route = {
                { y = 0.4112, mapID = 1422, label = "Scarlet Knight", offMapText = "Travel to Scarlet Knight.", x = 0.5047 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-4-scarlet-knight",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Knight", index = 4, count = 2 },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Kill 2 Scarlet Medic.",
            route = {
                { y = 0.446, mapID = 1422, label = "Scarlet Medic", offMapText = "Travel to Scarlet Medic.", x = 0.516 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-1-scarlet-medic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Medic", index = 1, count = 2 },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Kill 2 Scarlet Hunter.",
            route = {
                { y = 0.446, mapID = 1422, label = "Scarlet Hunter", offMapText = "Travel to Scarlet Hunter.", x = 0.516 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-2-scarlet-hunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Hunter", index = 2, count = 2 },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            dependsOn = {
                "accept-6004-unfinished-business",
                "objective-6004-3-scarlet-mage",
                "objective-6004-4-scarlet-knight",
                "objective-6004-1-scarlet-medic",
                "objective-6004-2-scarlet-hunter",
            },
            id = "turnin-6004-unfinished-business",
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
                quest = { id = 6004, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            id = "accept-6023-unfinished-business",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6023, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6004 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "Kill Huntsman Radley.",
            route = {
                { y = 0.3609, mapID = 1422, label = "Huntsman Radley", offMapText = "Travel to Huntsman Radley.", x = 0.5783 },
            },
            dependsOn = { "accept-6023-unfinished-business" },
            id = "objective-6023-1-huntsman-radley",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6023, text = "Huntsman Radley", index = 1 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6004 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            text = "Kill Cavalier Durgen.",
            route = {
                { y = 0.2365, mapID = 1422, label = "Cavalier Durgen", offMapText = "Travel to Cavalier Durgen.", x = 0.5471 },
            },
            dependsOn = { "accept-6023-unfinished-business" },
            id = "objective-6023-2-cavalier-durgen",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6023, text = "Cavalier Durgen", index = 2 },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6004 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            dependsOn = { "accept-6023-unfinished-business", "objective-6023-1-huntsman-radley", "objective-6023-2-cavalier-durgen" },
            id = "turnin-6023-unfinished-business",
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
                quest = { id = 6023, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6004 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4984-1-diseased-wolf",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            text = "Kill 8 Diseased Wolf.",
            complete = {
                questObjective = { id = 4984, index = 1, text = "Diseased Wolf", count = 8 },
            },
            route = {
                { mapID = 1422, x = 0.46799999999999997, y = 0.39399999999999996, label = "Diseased Wolf", offMapText = "Travel to Diseased Wolf." },
            },
            sourceStep = 46,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4984-the-wildlife-suffers-too" },
        },
        {
            priority = 680,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            dependsOn = { "accept-4984-the-wildlife-suffers-too", "objective-4984-1-diseased-wolf" },
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4984, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            id = "accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4985, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4984 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Demon Dogs from Tirion Fordring.",
            id = "accept-5542-demon-dogs",
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
                quest = { id = 5542, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Blood Tinged Skies from Tirion Fordring.",
            id = "accept-5543-blood-tinged-skies",
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
                quest = { id = 5543, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Carrion Grubbage from Tirion Fordring.",
            id = "accept-5544-carrion-grubbage",
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
                quest = { id = 5544, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            route = {
                { y = 0.7474, mapID = 1423, label = "Nathanos Blightcaller", offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.", x = 0.2654 },
            },
            text = "Accept To Kill With Purpose from Nathanos Blightcaller.",
            id = "accept-6022-to-kill-with-purpose",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6022, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            route = {
                { y = 0.7474, mapID = 1423, label = "Nathanos Blightcaller", offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.", x = 0.2654 },
            },
            text = "Accept Un-Life's Little Annoyances from Nathanos Blightcaller.",
            id = "accept-6042-un-life-s-little-annoyances",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6042, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Turn in Sister Pamela to Pamela Redpath.",
            id = "turnin-5601-sister-pamela",
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
                quest = { id = 5601, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            alternativeQuests = { 5142 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Pamela's Doll from Pamela Redpath.",
            id = "accept-5149-pamela-s-doll",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5149, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            text = "Search the ruined houses of Darrowshire for Pamela's Doll's Head, Left Side and Right Side. Spirits attack when you take the pieces.",
            route = {
                { mapID = 1423, x = 0.381, y = 0.9229999999999999, label = "Darrowshire houses", offMapText = "Travel to Darrowshire houses." },
            },
            dependsOn = { "accept-5149-pamela-s-doll" },
            id = "objective-5149-1-pamela-s-doll-s-head",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Pamela's Doll's Head", minCount = 1 },
                            },
                            {
                                item = { name = "Pamela's Doll's Left Side", minCount = 1 },
                            },
                            {
                                item = { name = "Pamela's Doll's Right Side", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 5149, state = "complete" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 54,
            sourceInstructionIndex = 1,
            checkpointQuest = 5149,
            instructionOnly = true,
            rememberPreparation = 5149,
        },
        {
            dependsOn = { "accept-5149-pamela-s-doll" },
            id = "objective-5149-1-pamela-s-doll-s-head-2",
            text = "Use Pamela's Doll's Head with the two sides in your bags to assemble Pamela's Doll.",
            useClientPin = false,
            complete = {
                questObjective = { id = 5149, index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            priority = 780,
            requiredQuests = {},
            useClientText = false,
            route = {
                { mapID = 1423, x = 0.381, y = 0.9229999999999999, label = "Darrowshire houses", offMapText = "Travel to Darrowshire houses." },
            },
        },
        {
            priority = 790,
            text = "Turn in Pamela's Doll to Pamela Redpath.",
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            dependsOn = {
                "accept-5149-pamela-s-doll",
                "objective-5149-1-pamela-s-doll-s-head",
                "objective-5149-1-pamela-s-doll-s-head-2",
            },
            id = "turnin-5149-pamela-s-doll",
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
                quest = { id = 5149, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Auntie Marlene from Pamela Redpath.",
            id = "accept-5152-auntie-marlene",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5152, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Uncle Carlin from Pamela Redpath.",
            id = "accept-5241-uncle-carlin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5241, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5544-1-slab-of-carrion-worm-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Collect 15 Slab of Carrion Worm Meat.",
            complete = {
                questObjective = { id = 5544, index = 1, text = "Slab of Carrion Worm Meat", count = 15 },
            },
            route = {
                { mapID = 1423, x = 0.402, y = 0.836, label = "Slab of Carrion Worm Meat", offMapText = "Travel to Slab of Carrion Worm Meat." },
            },
            sourceStep = 56,
            priority = 820,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5544-carrion-grubbage" },
        },
        {
            id = "objective-5542-1-plaguehound-runt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 20 Plaguehound Runt.",
            complete = {
                questObjective = { id = 5542, index = 1, text = "Plaguehound Runt", count = 20 },
            },
            route = {
                { mapID = 1423, x = 0.402, y = 0.836, label = "Plaguehound Runt", offMapText = "Travel to Plaguehound Runt." },
            },
            sourceStep = 57,
            priority = 830,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5542-demon-dogs" },
        },
        {
            id = "objective-5543-1-plaguebat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 30 Plaguebat.",
            complete = {
                questObjective = { id = 5543, index = 1, text = "Plaguebat", count = 30 },
            },
            route = {
                { mapID = 1423, x = 0.402, y = 0.836, label = "Plaguebat", offMapText = "Travel to Plaguebat." },
            },
            sourceStep = 57,
            priority = 840,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5543-blood-tinged-skies" },
        },
        {
            priority = 850,
            text = "Kill undead around Corins Crossing and collect 7 Living Rot. Use the Mortar and Pestle to combine them into Coagulated Rot before the Living Rot expires after 10 minutes.",
            route = {
                { mapID = 1423, x = 0.5760000000000001, y = 0.708, label = "To Kill With Purpose", offMapText = "Travel to To Kill With Purpose." },
            },
            dependsOn = { "accept-6022-to-kill-with-purpose" },
            id = "objective-6022-1-hate-shrieker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6022, index = 1, count = 1 },
            },
            sourceStep = 59,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            text = "Kill 5 Plaguehound.",
            route = {
                { y = 0.756, mapID = 1423, label = "Plaguehound", offMapText = "Travel to Plaguehound.", x = 0.68 },
            },
            dependsOn = { "accept-5542-demon-dogs" },
            id = "objective-5542-2-plaguehound",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5542, text = "Plaguehound", index = 2, count = 5 },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "Kill 20 Noxious Plaguebat.",
            route = {
                { y = 0.756, mapID = 1423, label = "Noxious Plaguebat", offMapText = "Travel to Noxious Plaguebat.", x = 0.68 },
            },
            dependsOn = { "accept-6042-un-life-s-little-annoyances" },
            id = "objective-6042-1-noxious-plaguebat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6042, text = "Noxious Plaguebat", index = 1, count = 20 },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            route = {
                { y = 0.5982, mapID = 1423, label = "Duke Nicholas Zverenhoff", offMapText = "Travel to Duke Nicholas Zverenhoff in Eastern Plaguelands.", x = 0.8143 },
            },
            text = "Turn in Duke Nicholas Zverenhoff to Duke Nicholas Zverenhoff.",
            id = "turnin-6030-duke-nicholas-zverenhoff",
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
                quest = { id = 6030, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            text = "Turn in Uncle Carlin to Carlin Redpath.",
            route = {
                { y = 0.5977, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5241-uncle-carlin" },
            id = "turnin-5241-uncle-carlin",
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
                quest = { id = 5241, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 900,
            route = {
                { y = 0.5977, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            text = "Accept Defenders of Darrowshire from Carlin Redpath.",
            id = "accept-5211-defenders-of-darrowshire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5211, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 910,
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            text = "Accept Zaeldarr the Outcast from Caretaker Alen.",
            id = "accept-6021-zaeldarr-the-outcast",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6021, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5281-the-restless-souls",
            kind = "note",
            text = "Reach level 55 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 55 },
            },
            requiredLevel = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5281,
            priority = 920,
        },
        {
            priority = 930,
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            text = "Accept The Restless Souls from Caretaker Alen.",
            id = "accept-5281-the-restless-souls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                },
            },
            complete = {
                quest = { id = 5281, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 940,
            text = "Collect 100 Plagueland Termites.",
            route = {
                { y = 0.341, mapID = 1423, label = "Large Termite Mound", offMapText = "Travel to Large Termite Mound.", x = 0.459 },
            },
            dependsOn = { "accept-5901-a-plague-upon-thee" },
            id = "objective-5901-1-large-termite-mound",
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
                questObjective = { id = 5901, text = "Large Termite Mound", index = 1, count = 100 },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            text = "Turn in The Restless Souls to Egan.",
            route = {
                { y = 0.3374, mapID = 1423, label = "Egan", offMapText = "Travel to Egan in Eastern Plaguelands.", x = 0.1445 },
            },
            dependsOn = { "accept-5281-the-restless-souls" },
            id = "turnin-5281-the-restless-souls",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                },
            },
            complete = {
                quest = { id = 5281, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            route = {
                { y = 0.3348, mapID = 1423, label = "Augustus the Touched", offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.", x = 0.1445 },
            },
            text = "Accept Augustus' Receipt Book from Augustus the Touched.",
            id = "accept-6164-augustus-receipt-book",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6164, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-6164-1-augustus-receipt-book",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Augustus' Receipt Book.",
            complete = {
                questObjective = { id = 6164, index = 1, text = "Augustus' Receipt Book", count = 1 },
            },
            route = {
                { mapID = 1423, x = 0.1743, y = 0.3109, label = "Augustus' Receipt Book", offMapText = "Travel to Augustus' Receipt Book." },
            },
            sourceStep = 69,
            priority = 970,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6164-augustus-receipt-book" },
        },
        {
            priority = 980,
            text = "Turn in Augustus' Receipt Book to Augustus the Touched.",
            route = {
                { y = 0.3348, mapID = 1423, label = "Augustus the Touched", offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.", x = 0.1445 },
            },
            dependsOn = { "accept-6164-augustus-receipt-book", "objective-6164-1-augustus-receipt-book" },
            id = "turnin-6164-augustus-receipt-book",
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
                quest = { id = 6164, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5542-3-frenzied-plaguehound",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            text = "Kill 5 Frenzied Plaguehound.",
            complete = {
                questObjective = { id = 5542, index = 3, text = "Frenzied Plaguehound", count = 5 },
            },
            route = {
                { mapID = 1423, x = 0.45, y = 0.386, label = "Frenzied Plaguehound", offMapText = "Travel to Frenzied Plaguehound." },
            },
            sourceStep = 71,
            priority = 990,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5542-demon-dogs" },
        },
        {
            id = "objective-6042-2-monstrous-plaguebat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Monstrous Plaguebat.",
            complete = {
                questObjective = { id = 6042, index = 2, text = "Monstrous Plaguebat", count = 10 },
            },
            route = {
                { mapID = 1423, x = 0.45, y = 0.386, label = "Monstrous Plaguebat", offMapText = "Travel to Monstrous Plaguebat." },
            },
            sourceStep = 71,
            priority = 1000,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6042-un-life-s-little-annoyances" },
        },
        {
            priority = 1010,
            text = "Collect 1 Zaeldarr's Head.",
            route = {
                { y = 0.8548, mapID = 1423, label = "Zaeldarr the Outcast", offMapText = "Travel to Zaeldarr the Outcast.", x = 0.2786 },
            },
            dependsOn = { "accept-6021-zaeldarr-the-outcast" },
            id = "objective-6021-1-zaeldarr-the-outcast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6021, text = "Zaeldarr the Outcast", index = 1, count = 1 },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            text = "Turn in To Kill With Purpose to Nathanos Blightcaller.",
            route = {
                { y = 0.7474, mapID = 1423, label = "Nathanos Blightcaller", offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.", x = 0.2654 },
            },
            dependsOn = { "accept-6022-to-kill-with-purpose", "objective-6022-1-hate-shrieker" },
            id = "turnin-6022-to-kill-with-purpose",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6022, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            text = "Turn in Un-Life's Little Annoyances to Nathanos Blightcaller.",
            route = {
                { y = 0.7474, mapID = 1423, label = "Nathanos Blightcaller", offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.", x = 0.2654 },
            },
            dependsOn = {
                "accept-6042-un-life-s-little-annoyances",
                "objective-6042-1-noxious-plaguebat",
                "objective-6042-2-monstrous-plaguebat",
            },
            id = "turnin-6042-un-life-s-little-annoyances",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6042, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            text = "Turn in Demon Dogs to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = {
                "accept-5542-demon-dogs",
                "objective-5542-1-plaguehound-runt",
                "objective-5542-2-plaguehound",
                "objective-5542-3-frenzied-plaguehound",
            },
            id = "turnin-5542-demon-dogs",
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
                quest = { id = 5542, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Turn in Blood Tinged Skies to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5543-blood-tinged-skies", "objective-5543-1-plaguebat" },
            id = "turnin-5543-blood-tinged-skies",
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
                quest = { id = 5543, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Carrion Grubbage to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5544-carrion-grubbage", "objective-5544-1-slab-of-carrion-worm-meat" },
            id = "turnin-5544-carrion-grubbage",
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
                quest = { id = 5544, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            text = "Accept Redemption from Tirion Fordring.",
            id = "accept-5742-redemption",
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
                quest = { id = 5742, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5542, 5543, 5544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "For Redemption: Listen to what Tirion Fordring has to say.",
            id = "objective-5742-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5742, state = "complete" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5542, 5543, 5544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-5742-redemption" },
        },
        {
            priority = 1090,
            text = "Turn in Redemption to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5742-redemption", "objective-5742-quest-work" },
            id = "turnin-5742-redemption",
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
                quest = { id = 5742, state = "completed" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5542, 5543, 5544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4985-1-diseased-grizzly",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            text = "Kill 8 Diseased Grizzly.",
            complete = {
                questObjective = { id = 4985, index = 1, text = "Diseased Grizzly", count = 8 },
            },
            route = {
                { mapID = 1422, x = 0.664, y = 0.51, label = "Diseased Grizzly", offMapText = "Travel to Diseased Grizzly." },
            },
            sourceStep = 78,
            priority = 1100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4984 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4985-the-wildlife-suffers-too" },
        },
        {
            priority = 1110,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            dependsOn = { "accept-4985-the-wildlife-suffers-too", "objective-4985-1-diseased-grizzly" },
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4985, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4984 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver.",
            id = "accept-4987-glyphed-oaken-branch",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4987, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4985 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1130,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            route = {
                { y = 0.7858, mapID = 1422, label = "Marlene Redpath", offMapText = "Travel to Marlene Redpath in Western Plaguelands.", x = 0.4917 },
            },
            dependsOn = { "accept-5152-auntie-marlene" },
            id = "turnin-5152-auntie-marlene",
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
                quest = { id = 5152, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5149 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1140,
            route = {
                { y = 0.7858, mapID = 1422, label = "Marlene Redpath", offMapText = "Travel to Marlene Redpath in Western Plaguelands.", x = 0.4917 },
            },
            text = "Accept A Strange Historian from Marlene Redpath.",
            id = "accept-5153-a-strange-historian",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5153, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5152 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5153-1-joseph-s-wedding-ring",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Joseph's Wedding Ring.",
            complete = {
                questObjective = { id = 5153, index = 1, text = "Joseph's Wedding Ring", count = 1 },
            },
            route = {
                { mapID = 1422, x = 0.4968, y = 0.7676999999999999, label = "Joseph's Wedding Ring", offMapText = "Travel to Joseph's Wedding Ring." },
            },
            sourceStep = 81,
            priority = 1150,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5152 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5153-a-strange-historian" },
        },
        {
            priority = 1160,
            text = "Turn in Counting Out Time to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-4972-counting-out-time", "objective-4972-1-andorhal-watch" },
            id = "turnin-4972-counting-out-time",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4972, state = "completed" },
            },
            sourceStep = 82,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4971 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            text = "Turn in A Strange Historian to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-5153-a-strange-historian", "objective-5153-1-joseph-s-wedding-ring" },
            id = "turnin-5153-a-strange-historian",
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
                quest = { id = 5153, state = "completed" },
            },
            sourceStep = 82,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5152 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1180,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept The Annals of Darrowshire from Chromie.",
            id = "accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5154, state = "activeOrCompleted" },
            },
            sourceStep = 82,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5153 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5154-1-annals-of-darrowshire",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Annals of Darrowshire.",
            complete = {
                questObjective = { id = 5154, index = 1, text = "Annals of Darrowshire", count = 1 },
            },
            route = {
                { mapID = 1422, x = 0.43520000000000003, y = 0.6955, label = "Annals of Darrowshire", offMapText = "Travel to Annals of Darrowshire." },
            },
            sourceStep = 84,
            priority = 1190,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5153 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5154-the-annals-of-darrowshire" },
        },
        {
            priority = 1200,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-5154-the-annals-of-darrowshire", "objective-5154-1-annals-of-darrowshire" },
            id = "turnin-5154-the-annals-of-darrowshire",
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
                quest = { id = 5154, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5153 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept Brother Carlin from Chromie.",
            id = "accept-5210-brother-carlin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5210, state = "activeOrCompleted" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5154 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1220,
            text = "Turn in Skeletal Fragments to Apothecary Dithers.",
            route = {
                { y = 0.6923, mapID = 1420, label = "Apothecary Dithers", offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.", x = 0.8328 },
            },
            dependsOn = { "accept-964-skeletal-fragments", "objective-964-1-skeletal-sorcerer" },
            id = "turnin-964-skeletal-fragments",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 964, state = "completed" },
            },
            sourceStep = 87,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 838 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            dependsOn = { "accept-5234-return-to-the-bulwark" },
            id = "turnin-5234-return-to-the-bulwark",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5234, state = "completed" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5233 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1240,
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8304 },
            },
            text = "Accept Target: Gahrron's Withering from Shadow Priestess Vandis.",
            id = "accept-5235-target-gahrron-s-withering",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5235, state = "activeOrCompleted" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5234 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1250,
            text = "Turn in A Plague Upon Thee to Mickey Levine.",
            route = {
                { y = 0.7233, mapID = 1420, label = "Mickey Levine", offMapText = "Travel to Mickey Levine in Tirisfal Glades.", x = 0.8329 },
            },
            dependsOn = { "accept-5901-a-plague-upon-thee", "objective-5901-1-large-termite-mound" },
            id = "turnin-5901-a-plague-upon-thee",
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
                quest = { id = 5901, state = "completed" },
            },
            sourceStep = 89,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
            route = {
                { y = 0.7233, mapID = 1420, label = "Mickey Levine", offMapText = "Travel to Mickey Levine in Tirisfal Glades.", x = 0.8329 },
            },
            text = "Accept A Plague Upon Thee from Mickey Levine.",
            id = "accept-5902-a-plague-upon-thee",
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
                quest = { id = 5902, state = "activeOrCompleted" },
            },
            sourceStep = 89,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5901 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1270,
            text = "Turn in Better Late Than Never to Royal Overseer Bauhaus.",
            route = {
                { y = 0.4315, mapID = 1458, label = "Royal Overseer Bauhaus", offMapText = "Travel to Royal Overseer Bauhaus in Undercity.", x = 0.6978 },
            },
            dependsOn = { "accept-5023-better-late-than-never" },
            id = "turnin-5023-better-late-than-never",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5023, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1280,
            route = {
                { y = 0.4315, mapID = 1458, label = "Royal Overseer Bauhaus", offMapText = "Travel to Royal Overseer Bauhaus in Undercity.", x = 0.6978 },
            },
            text = "Accept The Jeremiah Blues from Royal Overseer Bauhaus.",
            id = "accept-5049-the-jeremiah-blues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5049, state = "activeOrCompleted" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1290,
            text = "Turn in The Jeremiah Blues to Jeremiah Payson.",
            route = {
                { y = 0.4416, mapID = 1458, label = "Jeremiah Payson", offMapText = "Travel to Jeremiah Payson in Undercity.", x = 0.676 },
            },
            dependsOn = { "accept-5049-the-jeremiah-blues" },
            id = "turnin-5049-the-jeremiah-blues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5049, state = "completed" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1300,
            route = {
                { y = 0.4416, mapID = 1458, label = "Jeremiah Payson", offMapText = "Travel to Jeremiah Payson in Undercity.", x = 0.676 },
            },
            text = "Accept Good Luck Charm from Jeremiah Payson.",
            id = "accept-5050-good-luck-charm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5050, state = "activeOrCompleted" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5048, 5049 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1310,
            text = "Turn in Zaeldarr the Outcast to Caretaker Alen.",
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            dependsOn = { "accept-6021-zaeldarr-the-outcast", "objective-6021-1-zaeldarr-the-outcast" },
            id = "turnin-6021-zaeldarr-the-outcast",
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
                quest = { id = 6021, state = "completed" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1320,
            text = "Turn in Brother Carlin to Carlin Redpath.",
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5210-brother-carlin" },
            id = "turnin-5210-brother-carlin",
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
                quest = { id = 5210, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5154 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1330,
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            text = "Accept Villains of Darrowshire from Carlin Redpath.",
            id = "accept-5181-villains-of-darrowshire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5181, state = "activeOrCompleted" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1340,
            text = "Kill Cannibal Ghouls, Diseased Flayers and Gibbering Ghouls in Eastern Plaguelands. Speak with the Darrowshire Spirits that appear at their corpses to free them. Continue until the quest log reports enough freed spirits.",
            id = "objective-5211-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5211, state = "complete" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5211-defenders-of-darrowshire" },
            route = {
                { mapID = 1423, x = 0.67, y = 0.408, label = "Defenders of Darrowshire", offMapText = "Travel to Defenders of Darrowshire." },
            },
        },
        {
            priority = 1350,
            text = "Turn in Defenders of Darrowshire to Carlin Redpath.",
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5211-defenders-of-darrowshire", "objective-5211-quest-work" },
            id = "turnin-5211-defenders-of-darrowshire",
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
                quest = { id = 5211, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Collect 1 Skull of Horgus.",
            route = {
                { y = 0.4993, mapID = 1423, label = "Horgus' Skull", offMapText = "Travel to Horgus' Skull.", x = 0.5111 },
            },
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            id = "objective-5181-1-horgus-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5181, text = "Horgus' Skull", index = 1, count = 1 },
            },
            sourceStep = 101,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            text = "Collect 1 Shattered Sword of Marduk.",
            route = {
                { y = 0.6576, mapID = 1423, label = "Shattered Sword of Marduk", offMapText = "Travel to Shattered Sword of Marduk.", x = 0.5391 },
            },
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            id = "objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5181, text = "Shattered Sword of Marduk", index = 2, count = 1 },
            },
            sourceStep = 102,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-5225-1-cauldron-lord-soulwrath",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { faction = "Horde" },
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
            checkpointQuest = 5225,
            priority = 1380,
        },
        {
            priority = 1390,
            route = {
                { y = 0.5875, mapID = 1422, label = "Cauldron Lord Soulwrath", offMapText = "Travel to Cauldron Lord Soulwrath.", x = 0.6278 },
            },
            text = "Collect 1 Gahrron's Withering Cauldron Key.",
            id = "objective-5225-1-cauldron-lord-soulwrath",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5225, text = "Cauldron Lord Soulwrath", index = 1, count = 1 },
            },
            sourceStep = 103,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1400,
            text = "For Target: Gahrron's Withering: Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.",
            id = "objective-5235-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5235, state = "complete" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5234 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-5235-target-gahrron-s-withering" },
        },
        {
            priority = 1410,
            text = "Turn in Target: Gahrron's Withering.",
            route = {
                { y = 0.5857, mapID = 1422, label = "Target: Gahrron's Withering", offMapText = "Travel to Target: Gahrron's Withering.", x = 0.6256 },
            },
            dependsOn = { "accept-5235-target-gahrron-s-withering", "objective-5235-quest-work" },
            id = "turnin-5235-target-gahrron-s-withering",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5235, state = "completed" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5234 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1420,
            route = {
                { y = 0.5857, mapID = 1422, label = "Return to the Bulwark", offMapText = "Travel to the Bulwark.", x = 0.6256 },
            },
            text = "Accept Return to the Bulwark.",
            id = "accept-5236-return-to-the-bulwark",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5236, state = "activeOrCompleted" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5235 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1430,
            text = "Turn in A Plague Upon Thee.",
            route = {
                { y = 0.32, mapID = 1422, label = "A Plague Upon Thee", offMapText = "Travel to A Plague Upon Thee.", x = 0.4835 },
            },
            dependsOn = { "accept-5902-a-plague-upon-thee" },
            id = "turnin-5902-a-plague-upon-thee",
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
                quest = { id = 5902, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5901 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1440,
            route = {
                { y = 0.32, mapID = 1422, label = "A Plague Upon Thee", offMapText = "Travel to A Plague Upon Thee.", x = 0.4835 },
            },
            text = "Accept A Plague Upon Thee.",
            id = "accept-6390-a-plague-upon-thee",
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
                quest = { id = 6390, state = "activeOrCompleted" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1450,
            text = "Turn in Good Luck Charm to Janice Felstone.",
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            dependsOn = { "accept-5050-good-luck-charm" },
            id = "turnin-5050-good-luck-charm",
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
                quest = { id = 5050, state = "completed" },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5048, 5049 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1460,
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            text = "Accept Two Halves Become One from Janice Felstone.",
            id = "accept-5051-two-halves-become-one",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5051, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5050 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1470,
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            route = {
                { mapID = 1422, x = 0.37799999999999995, y = 0.5760000000000001, label = "Jabbering Ghouls", offMapText = "Travel to Jabbering Ghouls." },
            },
            dependsOn = { "accept-5051-two-halves-become-one" },
            id = "objective-5051-1-jabbering-ghoul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5051, index = 1, count = 1 },
            },
            sourceStep = 108,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5050 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-5051-two-halves-become-one" },
            id = "objective-5051-1-good-luck-other-half-charm",
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            useClientPin = false,
            complete = {
                questObjective = { id = 5051, index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            priority = 1480,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5050 },
                    conditions = {},
                },
            },
            useClientText = false,
            route = {
                { mapID = 1422, x = 0.37799999999999995, y = 0.5760000000000001, label = "Jabbering Ghouls", offMapText = "Travel to Jabbering Ghouls." },
            },
        },
        {
            priority = 1490,
            text = "Turn in Two Halves Become One to Janice Felstone.",
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            dependsOn = {
                "accept-5051-two-halves-become-one",
                "objective-5051-1-jabbering-ghoul",
                "objective-5051-1-good-luck-other-half-charm",
            },
            id = "turnin-5051-two-halves-become-one",
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
                quest = { id = 5051, state = "completed" },
            },
            sourceStep = 109,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5050 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1500,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            route = {
                { y = 0.7191, mapID = 1420, label = "Shadow Priestess Vandis", offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.", x = 0.8303 },
            },
            dependsOn = { "accept-5236-return-to-the-bulwark" },
            id = "turnin-5236-return-to-the-bulwark",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5236, state = "completed" },
            },
            sourceStep = 111,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5235 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
            text = "Turn in A Plague Upon Thee to Mickey Levine.",
            route = {
                { y = 0.7233, mapID = 1420, label = "Mickey Levine", offMapText = "Travel to Mickey Levine in Tirisfal Glades.", x = 0.8329 },
            },
            dependsOn = { "accept-6390-a-plague-upon-thee" },
            id = "turnin-6390-a-plague-upon-thee",
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
                quest = { id = 6390, state = "completed" },
            },
            sourceStep = 112,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            route = {
                { y = 0.6894, mapID = 1420, label = "High Executor Derrington", offMapText = "Travel to High Executor Derrington in Tirisfal Glades.", x = 0.8313 },
            },
            text = "Accept Mission Accomplished! from High Executor Derrington.",
            id = "accept-5238-mission-accomplished",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5238, state = "activeOrCompleted" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5236 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1530,
            text = "Turn in Villains of Darrowshire to Carlin Redpath.",
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = {
                "accept-5181-villains-of-darrowshire",
                "objective-5181-1-horgus-skull",
                "objective-5181-2-shattered-sword-of-marduk",
            },
            id = "turnin-5181-villains-of-darrowshire",
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
                quest = { id = 5181, state = "completed" },
            },
            sourceStep = 115,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1540,
            route = {
                { y = 0.6577, mapID = 1454, label = "Cenarion Emissary Blackhoof", offMapText = "Travel to Cenarion Emissary Blackhoof in Orgrimmar.", x = 0.4764 },
            },
            text = "Accept Taking Back Silithus from Cenarion Emissary Blackhoof.",
            id = "accept-8276-taking-back-silithus",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 8276, state = "activeOrCompleted" },
            },
            sourceStep = 133,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1550,
            route = {
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            text = "Turn in Andron's Payment to Jediga to Jediga.",
            id = "turnin-3564-andron-s-payment-to-jediga",
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
                quest = { id = 3564, state = "completed" },
            },
            sourceStep = 141,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3542 },
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
