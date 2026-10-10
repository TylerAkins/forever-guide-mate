local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Badlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-badlands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 39 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-705-pearl-diving",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 705,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            text = "Accept Pearl Diving from Rigglefuzz.",
            id = "accept-705-pearl-diving",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 705, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-703-barbecued-buzzard-wings",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 703,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz.",
            id = "accept-703-barbecued-buzzard-wings",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 703, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "For Pearl Diving: Bring 9 Blue Pearls to Rigglefuzz in the Badlands. Keep 9 Blue Pearl for the later quest pickup.",
            id = "collect-before-pickup-objective-705-quest-work",
            kind = "note",
            conditions = { faction = "Horde" },
            complete = {
                item = { name = "Blue Pearl", minCount = 9 },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
            referenceQuest = 705,
        },
        {
            priority = 60,
            text = "Turn in Pearl Diving to Rigglefuzz.",
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            dependsOn = { "accept-705-pearl-diving" },
            id = "turnin-705-pearl-diving",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 705, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            route = {
                { y = 0.5269, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4222 },
            },
            text = "Turn in Martek the Exiled to Martek the Exiled.",
            id = "turnin-1106-martek-the-exiled",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 1106, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1104, 1105 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.5269, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4222 },
            },
            text = "Accept Indurium from Martek the Exiled.",
            id = "accept-1108-indurium",
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
                quest = { id = 1108, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-710-study-of-the-elements-rock",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 710,
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            id = "accept-710-study-of-the-elements-rock",
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
                quest = { id = 710, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Coolant Heads Prevail from Lotwil Veriatus.",
            id = "accept-713-coolant-heads-prevail",
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
                quest = { id = 713, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "For Coolant Heads Prevail: Find Frost Oil and bring it to Lotwil Veriatus in Badlands.",
            id = "objective-713-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 713, state = "complete" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-713-coolant-heads-prevail" },
        },
        {
            priority = 130,
            text = "Turn in Coolant Heads Prevail to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-713-coolant-heads-prevail", "objective-713-quest-work" },
            id = "turnin-713-coolant-heads-prevail",
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
                quest = { id = 713, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Gyro... What? from Lotwil Veriatus.",
            id = "accept-714-gyro-what",
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
                quest = { id = 714, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 713 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "For Gyro... What?: Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.",
            id = "objective-714-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 714, state = "complete" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 713 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-714-gyro-what" },
        },
        {
            priority = 160,
            text = "Turn in Gyro... What? to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-714-gyro-what", "objective-714-quest-work" },
            id = "turnin-714-gyro-what",
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
                quest = { id = 714, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 713 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.4423, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            text = "Accept Liquid Stone from Lucien Tosselwrench.",
            id = "accept-715-liquid-stone",
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
                quest = { id = 715, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 714 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "For Liquid Stone: Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.",
            id = "objective-715-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 715, state = "complete" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 714 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-715-liquid-stone" },
        },
        {
            priority = 190,
            text = "Turn in Liquid Stone to Lucien Tosselwrench.",
            route = {
                { y = 0.4423, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            dependsOn = { "accept-715-liquid-stone", "objective-715-quest-work" },
            id = "turnin-715-liquid-stone",
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
                quest = { id = 715, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 714 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1419-coyote-thieves",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1419,
            priority = 200,
        },
        {
            priority = 210,
            route = {
                { y = 0.4718, mapID = 1418, label = "Neeka Bloodscar", offMapText = "Travel to Neeka Bloodscar in Badlands.", x = 0.0648 },
            },
            text = "Accept Coyote Thieves from Neeka Bloodscar.",
            id = "accept-1419-coyote-thieves",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1419, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2258-badlands-reagent-run",
            kind = "note",
            text = "Reach level 36 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 36 },
            },
            requiredLevel = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2258,
            priority = 220,
        },
        {
            priority = 230,
            route = {
                { y = 0.4606, mapID = 1418, label = "Jarkal Mossmeld", offMapText = "Travel to Jarkal Mossmeld in Badlands.", x = 0.0242 },
            },
            text = "Accept Badlands Reagent Run from Jarkal Mossmeld.",
            id = "accept-2258-badlands-reagent-run",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2258, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-703-1-buzzard-wing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            text = "Collect 4 Buzzard Wing.",
            complete = {
                questObjective = { id = 703, index = 1, text = "Buzzard Wing", count = 4 },
            },
            route = {
                { mapID = 1418, x = 0.172, y = 0.61, label = "Buzzard Wing", offMapText = "Travel to Buzzard Wing." },
            },
            sourceStep = 12,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-703-barbecued-buzzard-wings" },
        },
        {
            id = "objective-710-1-small-stone-shard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Collect 10 Small Stone Shard.",
            complete = {
                questObjective = { id = 710, index = 1, text = "Small Stone Shard", count = 10 },
            },
            route = {
                { mapID = 1418, x = 0.214, y = 0.434, label = "Small Stone Shard", offMapText = "Travel to Small Stone Shard." },
            },
            sourceStep = 13,
            priority = 250,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-710-study-of-the-elements-rock" },
        },
        {
            priority = 260,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-710-study-of-the-elements-rock", "objective-710-1-small-stone-shard" },
            id = "turnin-710-study-of-the-elements-rock",
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
                quest = { id = 710, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            id = "accept-711-study-of-the-elements-rock",
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
                quest = { id = 711, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 710 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Collect 3 Large Stone Slab.",
            route = {
                { y = 0.378, mapID = 1418, label = "Rock Elemental", offMapText = "Travel to Rock Elemental.", x = 0.134 },
            },
            dependsOn = { "accept-711-study-of-the-elements-rock" },
            id = "objective-711-1-rock-elemental",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 711, text = "Rock Elemental", index = 1, count = 3 },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 710 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2258-3-rock-elemental-shard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Rock Elemental Shard.",
            complete = {
                questObjective = { id = 2258, index = 3, text = "Rock Elemental Shard", count = 5 },
            },
            route = {
                { mapID = 1418, x = 0.214, y = 0.434, label = "Rock Elemental Shard", offMapText = "Travel to Rock Elemental Shard." },
            },
            sourceStep = 16,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2258-badlands-reagent-run" },
        },
        {
            priority = 300,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-711-study-of-the-elements-rock", "objective-711-1-rock-elemental" },
            id = "turnin-711-study-of-the-elements-rock",
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
                quest = { id = 711, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 710 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2258-1-buzzard-gizzard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Buzzard Gizzard.",
            complete = {
                questObjective = { id = 2258, index = 1, text = "Buzzard Gizzard", count = 5 },
            },
            route = {
                { mapID = 1418, x = 0.172, y = 0.61, label = "Buzzard Gizzard", offMapText = "Travel to Buzzard Gizzard." },
            },
            sourceStep = 18,
            priority = 310,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2258-badlands-reagent-run" },
        },
        {
            id = "objective-2258-2-crag-coyote-fang",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Crag Coyote Fang.",
            complete = {
                questObjective = { id = 2258, index = 2, text = "Crag Coyote Fang", count = 10 },
            },
            route = {
                { mapID = 1418, x = 0.20800000000000002, y = 0.568, label = "Crag Coyote Fang", offMapText = "Travel to Crag Coyote Fang." },
            },
            sourceStep = 19,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2258-badlands-reagent-run" },
        },
        {
            id = "objective-1419-1-coyote-jawbone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 30 Coyote Jawbone.",
            complete = {
                questObjective = { id = 1419, index = 1, text = "Coyote Jawbone", count = 30 },
            },
            route = {
                { mapID = 1418, x = 0.20800000000000002, y = 0.568, label = "Coyote Jawbone", offMapText = "Travel to Coyote Jawbone." },
            },
            sourceStep = 19,
            priority = 330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1419-coyote-thieves" },
        },
        {
            priority = 340,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz.",
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            dependsOn = { "accept-703-barbecued-buzzard-wings", "objective-703-1-buzzard-wing" },
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 703, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Collect 10 Indurium Flake.",
            route = {
                { y = 0.686, mapID = 1418, label = "Stonevault Shaman", offMapText = "Travel to Stonevault Shaman.", x = 0.504 },
            },
            dependsOn = { "accept-1108-indurium" },
            id = "objective-1108-1-stonevault-shaman",
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
                questObjective = { id = 1108, text = "Stonevault Shaman", index = 1, count = 10 },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Indurium to Martek the Exiled.",
            route = {
                { y = 0.527, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4221 },
            },
            dependsOn = { "accept-1108-indurium", "objective-1108-1-stonevault-shaman" },
            id = "turnin-1108-indurium",
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
                quest = { id = 1108, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.527, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4221 },
            },
            text = "Accept News for Fizzle from Martek the Exiled.",
            id = "accept-1137-news-for-fizzle",
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
                quest = { id = 1137, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1108 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in Coyote Thieves to Neeka Bloodscar.",
            route = {
                { y = 0.4718, mapID = 1418, label = "Neeka Bloodscar", offMapText = "Travel to Neeka Bloodscar in Badlands.", x = 0.0648 },
            },
            dependsOn = { "accept-1419-coyote-thieves", "objective-1419-1-coyote-jawbone" },
            id = "turnin-1419-coyote-thieves",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1419, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.4718, mapID = 1418, label = "Neeka Bloodscar", offMapText = "Travel to Neeka Bloodscar in Badlands.", x = 0.0648 },
            },
            text = "Accept Report to Helgrum from Neeka Bloodscar.",
            id = "accept-1420-report-to-helgrum",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1420, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in Badlands Reagent Run to Jarkal Mossmeld.",
            route = {
                { y = 0.4606, mapID = 1418, label = "Jarkal Mossmeld", offMapText = "Travel to Jarkal Mossmeld in Badlands.", x = 0.0242 },
            },
            dependsOn = {
                "accept-2258-badlands-reagent-run",
                "objective-2258-3-rock-elemental-shard",
                "objective-2258-1-buzzard-gizzard",
                "objective-2258-2-crag-coyote-fang",
            },
            id = "turnin-2258-badlands-reagent-run",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2258, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.8077, mapID = 1456, label = "Mosarn", offMapText = "Travel to Mosarn in Thunder Bluff.", x = 0.5401 },
            },
            text = "Turn in The Black Shield to Mosarn.",
            id = "turnin-1276-the-black-shield",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1276, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1273 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { mapID = 1416, x = 0.3754, y = 0.6626000000000001, label = "Frostmaw's Mane", offMapText = "Travel to Frostmaw's Mane." },
            },
            text = "For Frostmaw: Bring Frostmaw's Mane to Melor Stonehoof in Thunder Bluff.",
            id = "objective-1136-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1136, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { y = 0.809, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6153 },
            },
            text = "Turn in Frostmaw to Melor Stonehoof.",
            id = "turnin-1136-frostmaw",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1136, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1136-quest-work" },
        },
        {
            priority = 440,
            route = {
                { y = 0.809, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6153 },
            },
            text = "Accept Deadmire from Melor Stonehoof.",
            id = "accept-1205-deadmire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1205, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
