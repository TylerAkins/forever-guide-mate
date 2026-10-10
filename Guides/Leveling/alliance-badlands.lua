local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Badlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-badlands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 41 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-705-1-blue-pearl",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
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
                { y = 0.7467, mapID = 1455, label = "Blue Pearl", offMapText = "Travel to Blue Pearl.", x = 0.2416 },
            },
            text = "Collect 9 Blue Pearl. Keep the required materials for the quest.",
            id = "objective-705-1-blue-pearl",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 705, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1467-reagents-for-reclaimers-inc",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1467,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.1749, mapID = 1455, label = "Roetten Stonehammer", offMapText = "Travel to Roetten Stonehammer in Ironforge.", x = 0.6791 },
            },
            text = "Turn in Reagents for Reclaimers Inc. to Roetten Stonehammer.",
            id = "turnin-1467-reagents-for-reclaimers-inc",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1467, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1466 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.1174, mapID = 1455, label = "Prospector Stormpike", offMapText = "Travel to Prospector Stormpike in Ironforge.", x = 0.7464 },
            },
            text = "Accept Ironband Wants You! from Prospector Stormpike.",
            id = "accept-707-ironband-wants-you",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 707, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2500-badlands-reagent-run",
            kind = "note",
            text = "Reach level 36 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 2500,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.4938, mapID = 1432, label = "Ghak Healtouch", offMapText = "Travel to Ghak Healtouch in Loch Modan.", x = 0.3707 },
            },
            text = "Accept Badlands Reagent Run from Ghak Healtouch.",
            id = "accept-2500-badlands-reagent-run",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2500, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in Ironband Wants You! to Prospector Ironband.",
            route = {
                { y = 0.6562, mapID = 1432, label = "Prospector Ironband", offMapText = "Travel to Prospector Ironband in Loch Modan.", x = 0.6593 },
            },
            dependsOn = { "accept-707-ironband-wants-you" },
            id = "turnin-707-ironband-wants-you",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 707, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.6562, mapID = 1432, label = "Prospector Ironband", offMapText = "Travel to Prospector Ironband in Loch Modan.", x = 0.6593 },
            },
            text = "Accept Find Agmond from Prospector Ironband.",
            id = "accept-738-find-agmond",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 738, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { y = 0.434, mapID = 1418, label = "Prospector Ryedol", offMapText = "Travel to Prospector Ryedol in Badlands.", x = 0.5342 },
            },
            text = "Accept A Dwarf and His Tools from Prospector Ryedol.",
            id = "accept-719-a-dwarf-and-his-tools",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 719, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.4331, mapID = 1418, label = "Sigrun Ironhew", offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538 },
            },
            text = "Accept Mirages from Sigrun Ironhew.",
            id = "accept-718-mirages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 718, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.3393, mapID = 1418, label = "A Sign of Hope", offMapText = "Travel to A Sign of Hope.", x = 0.5303 },
            },
            text = "Accept A Sign of Hope.",
            id = "accept-720-a-sign-of-hope",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 720, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-719-1-ryedol-s-lucky-pick",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Ryedol's Lucky Pick.",
            complete = {
                questObjective = { id = 719, index = 1, text = "Ryedol's Lucky Pick", count = 1 },
            },
            route = {
                { mapID = 1418, x = 0.514, y = 0.326, label = "Ryedol's Lucky Pick", offMapText = "Travel to Ryedol's Lucky Pick." },
            },
            sourceStep = 15,
            priority = 130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-719-a-dwarf-and-his-tools" },
        },
        {
            id = "objective-718-1-supply-crate",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Supply Crate.",
            complete = {
                questObjective = { id = 718, index = 1, text = "Supply Crate", count = 1 },
            },
            route = {
                { mapID = 1418, x = 0.6661, y = 0.2202, label = "Supply Crate", offMapText = "Travel to Supply Crate." },
            },
            sourceStep = 16,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-718-mirages" },
        },
        {
            priority = 150,
            text = "Turn in A Dwarf and His Tools to Prospector Ryedol.",
            route = {
                { y = 0.434, mapID = 1418, label = "Prospector Ryedol", offMapText = "Travel to Prospector Ryedol in Badlands.", x = 0.5342 },
            },
            dependsOn = { "accept-719-a-dwarf-and-his-tools", "objective-719-1-ryedol-s-lucky-pick" },
            id = "turnin-719-a-dwarf-and-his-tools",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 719, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in A Sign of Hope to Prospector Ryedol.",
            route = {
                { y = 0.434, mapID = 1418, label = "Prospector Ryedol", offMapText = "Travel to Prospector Ryedol in Badlands.", x = 0.5342 },
            },
            dependsOn = { "accept-720-a-sign-of-hope" },
            id = "turnin-720-a-sign-of-hope",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 720, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Mirages to Sigrun Ironhew.",
            route = {
                { y = 0.4331, mapID = 1418, label = "Sigrun Ironhew", offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538 },
            },
            dependsOn = { "accept-718-mirages", "objective-718-1-supply-crate" },
            id = "turnin-718-mirages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 718, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.4331, mapID = 1418, label = "Sigrun Ironhew", offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538 },
            },
            text = "Accept Scrounging from Sigrun Ironhew.",
            id = "accept-733-scrounging",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 733, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 718 },
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
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            text = "Accept Pearl Diving from Rigglefuzz.",
            id = "accept-705-pearl-diving",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 705, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-703-barbecued-buzzard-wings",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 703,
            priority = 200,
        },
        {
            priority = 210,
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz.",
            id = "accept-703-barbecued-buzzard-wings",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 703, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in Pearl Diving to Rigglefuzz.",
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            dependsOn = { "accept-705-pearl-diving" },
            id = "turnin-705-pearl-diving",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 705, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.5269, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4222 },
            },
            text = "Turn in Martek the Exiled to Martek the Exiled.",
            id = "turnin-1106-martek-the-exiled",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 1106, state = "completed" },
            },
            sourceStep = 21,
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
            priority = 240,
            route = {
                { y = 0.5269, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4222 },
            },
            text = "Accept Indurium from Martek the Exiled.",
            id = "accept-1108-indurium",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1108, state = "activeOrCompleted" },
            },
            sourceStep = 21,
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
            priority = 250,
            text = "Turn in Find Agmond.",
            route = {
                { y = 0.6241, mapID = 1418, label = "Find Agmond", offMapText = "Travel to Find Agmond.", x = 0.5089 },
            },
            dependsOn = { "accept-738-find-agmond" },
            id = "turnin-738-find-agmond",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 738, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.6241, mapID = 1418, label = "Murdaloc", offMapText = "Travel to Murdaloc.", x = 0.5089 },
            },
            text = "Accept Murdaloc.",
            id = "accept-739-murdaloc",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 739, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Kill Murdaloc.",
            route = {
                { y = 0.663, mapID = 1418, label = "Murdaloc", offMapText = "Travel to Murdaloc.", x = 0.4963 },
            },
            dependsOn = { "accept-739-murdaloc" },
            id = "objective-739-1-murdaloc",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 739, text = "Murdaloc", index = 1 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1108-1-indurium-flake",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 10 Indurium Flake.",
            complete = {
                questObjective = { id = 1108, index = 1, text = "Indurium Flake", count = 10 },
            },
            route = {
                { mapID = 1418, x = 0.504, y = 0.6859999999999999, label = "Indurium Flake", offMapText = "Travel to Indurium Flake." },
            },
            sourceStep = 24,
            priority = 280,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1108-indurium" },
        },
        {
            id = "objective-739-2-stonevault-bonesnapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 12 Stonevault Bonesnapper.",
            complete = {
                questObjective = { id = 739, index = 2, text = "Stonevault Bonesnapper", count = 12 },
            },
            route = {
                { mapID = 1418, x = 0.504, y = 0.6859999999999999, label = "Stonevault Bonesnapper", offMapText = "Travel to Stonevault Bonesnapper." },
            },
            sourceStep = 25,
            priority = 290,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-739-murdaloc" },
        },
        {
            priority = 300,
            text = "For Barbecued Buzzard Wings: Bring 4 Buzzard Wings to Rigglefuzz.",
            route = {
                { mapID = 1418, x = 0.172, y = 0.61, label = "Buzzard Wing", offMapText = "Travel to Buzzard Wing." },
            },
            id = "objective-703-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 703, state = "complete" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-703-barbecued-buzzard-wings" },
        },
        {
            priority = 310,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz.",
            route = {
                { y = 0.5293, mapID = 1418, label = "Rigglefuzz", offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239 },
            },
            dependsOn = { "accept-703-barbecued-buzzard-wings", "objective-703-quest-work" },
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                },
            },
            complete = {
                quest = { id = 703, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Indurium to Martek the Exiled.",
            route = {
                { y = 0.527, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4221 },
            },
            dependsOn = { "accept-1108-indurium", "objective-1108-1-indurium-flake" },
            id = "turnin-1108-indurium",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1108, state = "completed" },
            },
            sourceStep = 27,
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
            priority = 330,
            route = {
                { y = 0.527, mapID = 1418, label = "Martek the Exiled", offMapText = "Travel to Martek the Exiled in Badlands.", x = 0.4221 },
            },
            text = "Accept News for Fizzle from Martek the Exiled.",
            id = "accept-1137-news-for-fizzle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1137, state = "activeOrCompleted" },
            },
            sourceStep = 28,
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
            id = "level-before-accept-710-study-of-the-elements-rock",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 710,
            priority = 340,
        },
        {
            priority = 350,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            id = "accept-710-study-of-the-elements-rock",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 710, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Coolant Heads Prevail from Lotwil Veriatus.",
            id = "accept-713-coolant-heads-prevail",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 713, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "For Coolant Heads Prevail: Find Frost Oil and bring it to Lotwil Veriatus in Badlands.",
            id = "objective-713-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 713, state = "complete" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-713-coolant-heads-prevail" },
        },
        {
            priority = 380,
            text = "Turn in Coolant Heads Prevail to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-713-coolant-heads-prevail", "objective-713-quest-work" },
            id = "turnin-713-coolant-heads-prevail",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 713, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Gyro... What? from Lotwil Veriatus.",
            id = "accept-714-gyro-what",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 714, state = "activeOrCompleted" },
            },
            sourceStep = 30,
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
            priority = 400,
            text = "For Gyro... What?: Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.",
            id = "objective-714-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 714, state = "complete" },
            },
            sourceStep = 31,
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
            priority = 410,
            text = "Turn in Gyro... What? to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-714-gyro-what", "objective-714-quest-work" },
            id = "turnin-714-gyro-what",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 714, state = "completed" },
            },
            sourceStep = 31,
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
            priority = 420,
            route = {
                { y = 0.4423, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            text = "Accept Liquid Stone from Lucien Tosselwrench.",
            id = "accept-715-liquid-stone",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 715, state = "activeOrCompleted" },
            },
            sourceStep = 32,
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
            priority = 430,
            text = "For Liquid Stone: Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.",
            id = "objective-715-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 715, state = "complete" },
            },
            sourceStep = 33,
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
            priority = 440,
            text = "Turn in Liquid Stone to Lucien Tosselwrench.",
            route = {
                { y = 0.4423, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            dependsOn = { "accept-715-liquid-stone", "objective-715-quest-work" },
            id = "turnin-715-liquid-stone",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 715, state = "completed" },
            },
            sourceStep = 33,
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
            priority = 450,
            text = "Collect 10 Small Stone Shard.",
            route = {
                { y = 0.434, mapID = 1418, label = "Lesser Rock Elemental", offMapText = "Travel to Lesser Rock Elemental.", x = 0.214 },
            },
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            id = "objective-710-1-lesser-rock-elemental",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 710, text = "Lesser Rock Elemental", index = 1, count = 10 },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-710-study-of-the-elements-rock", "objective-710-1-lesser-rock-elemental" },
            id = "turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 710, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            id = "accept-711-study-of-the-elements-rock",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 711, state = "activeOrCompleted" },
            },
            sourceStep = 35,
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
            priority = 480,
            text = "Collect 3 Large Stone Slab.",
            route = {
                { y = 0.378, mapID = 1418, label = "Rock Elemental", offMapText = "Travel to Rock Elemental.", x = 0.134 },
            },
            dependsOn = { "accept-711-study-of-the-elements-rock" },
            id = "objective-711-1-rock-elemental",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 711, text = "Rock Elemental", index = 1, count = 3 },
            },
            sourceStep = 36,
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
            priority = 490,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-711-study-of-the-elements-rock", "objective-711-1-rock-elemental" },
            id = "turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 711, state = "completed" },
            },
            sourceStep = 37,
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
            priority = 500,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            id = "accept-712-study-of-the-elements-rock",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 712, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 711 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Collect 5 Bracers of Rock Binding.",
            route = {
                { y = 0.774, mapID = 1418, label = "Greater Rock Elemental", offMapText = "Travel to Greater Rock Elemental.", x = 0.044 },
            },
            dependsOn = { "accept-712-study-of-the-elements-rock" },
            id = "objective-712-1-greater-rock-elemental",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 712, text = "Greater Rock Elemental", index = 1, count = 5 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 711 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2500-3-rock-elemental-shard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Rock Elemental Shard.",
            complete = {
                questObjective = { id = 2500, index = 3, text = "Rock Elemental Shard", count = 5 },
            },
            route = {
                { mapID = 1418, x = 0.044000000000000004, y = 0.774, label = "Rock Elemental Shard", offMapText = "Travel to Rock Elemental Shard." },
            },
            sourceStep = 39,
            priority = 520,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2500-badlands-reagent-run" },
        },
        {
            id = "objective-733-1-scrap-metal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 7 Scrap Metal.",
            complete = {
                questObjective = { id = 733, index = 1, text = "Scrap Metal", count = 7 },
            },
            route = {
                { mapID = 1418, x = 0.124, y = 0.7440000000000001, label = "Scrap Metal", offMapText = "Travel to Scrap Metal." },
            },
            sourceStep = 40,
            priority = 530,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-733-scrounging" },
        },
        {
            id = "objective-2500-1-buzzard-gizzard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Buzzard Gizzard.",
            complete = {
                questObjective = { id = 2500, index = 1, text = "Buzzard Gizzard", count = 5 },
            },
            route = {
                { mapID = 1418, x = 0.172, y = 0.61, label = "Buzzard Gizzard", offMapText = "Travel to Buzzard Gizzard." },
            },
            sourceStep = 41,
            priority = 540,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2500-badlands-reagent-run" },
        },
        {
            id = "objective-2500-2-crag-coyote-fang",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 10 Crag Coyote Fang.",
            complete = {
                questObjective = { id = 2500, index = 2, text = "Crag Coyote Fang", count = 10 },
            },
            route = {
                { mapID = 1418, x = 0.20800000000000002, y = 0.568, label = "Crag Coyote Fang", offMapText = "Travel to Crag Coyote Fang." },
            },
            sourceStep = 42,
            priority = 550,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2500-badlands-reagent-run" },
        },
        {
            priority = 560,
            text = "Turn in Scrounging to Sigrun Ironhew.",
            route = {
                { y = 0.4331, mapID = 1418, label = "Sigrun Ironhew", offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538 },
            },
            dependsOn = { "accept-733-scrounging", "objective-733-1-scrap-metal" },
            id = "turnin-733-scrounging",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 733, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-712-study-of-the-elements-rock", "objective-712-1-greater-rock-elemental" },
            id = "turnin-712-study-of-the-elements-rock",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 712, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 711 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus.",
            id = "accept-734-this-is-going-to-be-hard",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 734, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 712, 714 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Turn in This Is Going to Be Hard to Lucien Tosselwrench.",
            route = {
                { y = 0.4424, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            dependsOn = { "accept-734-this-is-going-to-be-hard" },
            id = "turnin-734-this-is-going-to-be-hard",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 734, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 712, 714 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.4424, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            text = "Accept This Is Going to Be Hard from Lucien Tosselwrench.",
            id = "accept-777-this-is-going-to-be-hard",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 777, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 734 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            route = {
                { y = 0.4424, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            text = "Accept Stone Is Better than Cloth from Lucien Tosselwrench.",
            id = "accept-716-stone-is-better-than-cloth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 716, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "For Stone Is Better than Cloth: Bring some Patterned Bronze Bracers to Lucien Tosselwrench in the Badlands.",
            id = "objective-716-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 716, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-716-stone-is-better-than-cloth" },
        },
        {
            priority = 630,
            text = "Turn in Stone Is Better than Cloth to Lucien Tosselwrench.",
            route = {
                { y = 0.4424, mapID = 1418, label = "Lucien Tosselwrench", offMapText = "Travel to Lucien Tosselwrench in Badlands.", x = 0.2582 },
            },
            dependsOn = { "accept-716-stone-is-better-than-cloth", "objective-716-quest-work" },
            id = "turnin-716-stone-is-better-than-cloth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 716, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Turn in This Is Going to Be Hard to Lotwil Veriatus.",
            route = {
                { y = 0.4486, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-777-this-is-going-to-be-hard" },
            id = "turnin-777-this-is-going-to-be-hard",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 777, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 734 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.4486, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus.",
            id = "accept-778-this-is-going-to-be-hard",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 778, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 777 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "For This Is Going to Be Hard: Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.",
            id = "objective-778-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 778, state = "complete" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 777 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-778-this-is-going-to-be-hard" },
        },
        {
            priority = 670,
            text = "Turn in This Is Going to Be Hard to Lotwil Veriatus.",
            route = {
                { y = 0.4487, mapID = 1418, label = "Lotwil Veriatus", offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.2595 },
            },
            dependsOn = { "accept-778-this-is-going-to-be-hard", "objective-778-quest-work" },
            id = "turnin-778-this-is-going-to-be-hard",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 778, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 777 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            text = "Turn in Badlands Reagent Run to Ghak Healtouch.",
            route = {
                { y = 0.4938, mapID = 1432, label = "Ghak Healtouch", offMapText = "Travel to Ghak Healtouch in Loch Modan.", x = 0.3707 },
            },
            dependsOn = {
                "accept-2500-badlands-reagent-run",
                "objective-2500-3-rock-elemental-shard",
                "objective-2500-1-buzzard-gizzard",
                "objective-2500-2-crag-coyote-fang",
            },
            id = "turnin-2500-badlands-reagent-run",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 36 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2500, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Murdaloc to Prospector Ironband.",
            route = {
                { y = 0.6562, mapID = 1432, label = "Prospector Ironband", offMapText = "Travel to Prospector Ironband in Loch Modan.", x = 0.6593 },
            },
            dependsOn = { "accept-739-murdaloc", "objective-739-1-murdaloc", "objective-739-2-stonevault-bonesnapper" },
            id = "turnin-739-murdaloc",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 739, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 738 },
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
