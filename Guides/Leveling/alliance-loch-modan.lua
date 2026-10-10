local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Loch Modan",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-loch-modan",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 18 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-436-ironband-s-excavation",
            kind = "note",
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 13 },
            },
            requiredLevel = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 436,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4739, mapID = 1432, label = "Jern Hornhelm", offMapText = "Travel to Jern Hornhelm in Loch Modan.", x = 0.3724 },
            },
            text = "Accept Ironband's Excavation from Jern Hornhelm.",
            id = "accept-436-ironband-s-excavation",
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
                quest = { id = 436, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-353-stormpike-s-delivery",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 4 },
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
            checkpointQuest = 353,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.1839, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            text = "Turn in Stormpike's Delivery to Mountaineer Stormpike.",
            id = "turnin-353-stormpike-s-delivery",
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
                        race = { 4 },
                    },
                },
            },
            complete = {
                quest = { id = 353, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.1839, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            text = "Accept Filthy Paws from Mountaineer Stormpike.",
            id = "accept-307-filthy-paws",
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
                quest = { id = 307, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Collect 4 Miners' Gear.",
            route = {
                { y = 0.1886, mapID = 1432, label = "Miners' League Crates", offMapText = "Travel to Miners' League Crates.", x = 0.3548 },
            },
            dependsOn = { "accept-307-filthy-paws" },
            id = "objective-307-1-miners-league-crates",
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
                questObjective = { id = 307, text = "Miners' League Crates", index = 1, count = 4 },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            text = "Turn in Filthy Paws to Mountaineer Stormpike.",
            route = {
                { mapID = 1432, x = 0.24760000000000001, y = 0.1839, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan." },
            },
            dependsOn = { "accept-307-filthy-paws", "objective-307-1-miners-league-crates" },
            id = "turnin-307-filthy-paws",
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
                quest = { id = 307, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-250-a-dark-threat-looms",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 250,
            priority = 80,
        },
        {
            priority = 90,
            route = {
                { mapID = 1432, x = 0.46049999999999996, y = 0.1362, label = "Chief Engineer Hinderweir VII", offMapText = "Travel to Chief Engineer Hinderweir VII in Loch Modan." },
            },
            text = "Accept A Dark Threat Looms from Chief Engineer Hinderweir VII.",
            id = "accept-250-a-dark-threat-looms",
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
                quest = { id = 250, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in A Dark Threat Looms.",
            route = {
                { y = 0.1324, mapID = 1432, label = "A Dark Threat Looms", offMapText = "Travel to A Dark Threat Looms.", x = 0.5605 },
            },
            dependsOn = { "accept-250-a-dark-threat-looms" },
            id = "turnin-250-a-dark-threat-looms",
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
                quest = { id = 250, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.1324, mapID = 1432, label = "A Dark Threat Looms", offMapText = "Travel to A Dark Threat Looms.", x = 0.5605 },
            },
            text = "Accept A Dark Threat Looms.",
            id = "accept-199-a-dark-threat-looms",
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
                quest = { id = 199, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 250 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in A Dark Threat Looms to Chief Engineer Hinderweir VII.",
            route = {
                { mapID = 1432, x = 0.46049999999999996, y = 0.1362, label = "Chief Engineer Hinderweir VII", offMapText = "Travel to Chief Engineer Hinderweir VII in Loch Modan." },
            },
            dependsOn = { "accept-199-a-dark-threat-looms" },
            id = "turnin-199-a-dark-threat-looms",
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
                quest = { id = 199, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 250 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.6166, mapID = 1432, label = "Marek Ironheart", offMapText = "Travel to Marek Ironheart in Loch Modan.", x = 0.8175 },
            },
            text = "Accept Crocolisk Hunting from Marek Ironheart.",
            id = "accept-385-crocolisk-hunting",
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
                quest = { id = 385, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Collect 6 Crocolisk Skin.",
            route = {
                { y = 0.396, mapID = 1432, label = "Loch Crocolisk", offMapText = "Travel to Loch Crocolisk.", x = 0.566 },
            },
            dependsOn = { "accept-385-crocolisk-hunting" },
            id = "objective-385-2-loch-crocolisk",
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
                questObjective = { id = 385, text = "Loch Crocolisk", index = 2, count = 6 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Collect 5 Crocolisk Meat.",
            route = {
                { y = 0.396, mapID = 1432, label = "Crocolisk Meat", offMapText = "Travel to Crocolisk Meat.", x = 0.566 },
            },
            dependsOn = { "accept-385-crocolisk-hunting" },
            id = "objective-385-1-crocolisk-meat",
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
                questObjective = { id = 385, text = "Crocolisk Meat", index = 1, count = 5 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in Crocolisk Hunting to Marek Ironheart.",
            route = {
                { y = 0.6166, mapID = 1432, label = "Marek Ironheart", offMapText = "Travel to Marek Ironheart in Loch Modan.", x = 0.8175 },
            },
            dependsOn = { "accept-385-crocolisk-hunting", "objective-385-2-loch-crocolisk", "objective-385-1-crocolisk-meat" },
            id = "turnin-385-crocolisk-hunting",
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
                quest = { id = 385, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Ironband's Excavation to Magmar Fellhew.",
            route = {
                { y = 0.6665, mapID = 1432, label = "Magmar Fellhew", offMapText = "Travel to Magmar Fellhew in Loch Modan.", x = 0.649 },
            },
            dependsOn = { "accept-436-ironband-s-excavation" },
            id = "turnin-436-ironband-s-excavation",
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
                quest = { id = 436, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.6665, mapID = 1432, label = "Magmar Fellhew", offMapText = "Travel to Magmar Fellhew in Loch Modan.", x = 0.649 },
            },
            text = "Accept Gathering Idols from Magmar Fellhew.",
            id = "accept-297-gathering-idols",
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
                quest = { id = 297, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.6562, mapID = 1432, label = "Prospector Ironband", offMapText = "Travel to Prospector Ironband in Loch Modan.", x = 0.6593 },
            },
            text = "Accept Excavation Progress Report from Prospector Ironband.",
            id = "accept-298-excavation-progress-report",
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
                quest = { id = 298, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Collect 8 Carved Stone Idol.",
            route = {
                { y = 0.6315, mapID = 1432, label = "Berserk Trogg", offMapText = "Travel to Berserk Trogg.", x = 0.6794 },
            },
            dependsOn = { "accept-297-gathering-idols" },
            id = "objective-297-1-berserk-trogg",
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
                questObjective = { id = 297, text = "Berserk Trogg", index = 1, count = 8 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Gathering Idols to Magmar Fellhew.",
            route = {
                { y = 0.6665, mapID = 1432, label = "Magmar Fellhew", offMapText = "Travel to Magmar Fellhew in Loch Modan.", x = 0.649 },
            },
            dependsOn = { "accept-297-gathering-idols", "objective-297-1-berserk-trogg" },
            id = "turnin-297-gathering-idols",
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
                quest = { id = 297, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Excavation Progress Report to Jern Hornhelm.",
            route = {
                { y = 0.4739, mapID = 1432, label = "Jern Hornhelm", offMapText = "Travel to Jern Hornhelm in Loch Modan.", x = 0.3724 },
            },
            dependsOn = { "accept-298-excavation-progress-report" },
            id = "turnin-298-excavation-progress-report",
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
                quest = { id = 298, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.4739, mapID = 1432, label = "Jern Hornhelm", offMapText = "Travel to Jern Hornhelm in Loch Modan.", x = 0.3724 },
            },
            text = "Accept Report to Ironforge from Jern Hornhelm.",
            id = "accept-301-report-to-ironforge",
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
                quest = { id = 301, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 298 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Turn in Report to Ironforge to Prospector Stormpike.",
            route = {
                { y = 0.1172, mapID = 1455, label = "Prospector Stormpike", offMapText = "Travel to Prospector Stormpike in Ironforge.", x = 0.7465 },
            },
            dependsOn = { "accept-301-report-to-ironforge" },
            id = "turnin-301-report-to-ironforge",
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
                quest = { id = 301, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 298 },
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
