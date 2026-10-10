local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "The Hinterlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-the-hinterlands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 48 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-2988-witherbark-cages",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2988,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            text = "Accept Witherbark Cages from Gryphon Master Talonaxe.",
            id = "accept-2988-witherbark-cages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2988, state = "activeOrCompleted" },
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
                { mapID = 1446, x = 0.4991, y = 0.35159999999999997, label = "Roc Gizzard", offMapText = "Travel to Roc Gizzard." },
            },
            text = "For Rhapsody's Kalimdor Kocktail: Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.",
            id = "objective-1452-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1452, state = "complete" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { mapID = 1425, x = 0.26940000000000003, y = 0.48590000000000005, label = "Rhapsody Shindigger", offMapText = "Travel to Rhapsody Shindigger in The Hinterlands." },
            },
            text = "Turn in Rhapsody's Kalimdor Kocktail to Rhapsody Shindigger.",
            id = "turnin-1452-rhapsody-s-kalimdor-kocktail",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1452, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1452-quest-work" },
        },
        {
            priority = 50,
            route = {
                { y = 0.4859, mapID = 1425, label = "Rhapsody Shindigger", offMapText = "Travel to Rhapsody Shindigger in The Hinterlands.", x = 0.2694 },
            },
            text = "Accept Rhapsody's Tale from Rhapsody Shindigger.",
            id = "accept-1469-rhapsody-s-tale",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1469, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1452 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.4456, mapID = 1425, label = "Fraggar Thundermantle", offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.", x = 0.1483 },
            },
            text = "Accept Troll Necklace Bounty from Fraggar Thundermantle.",
            id = "accept-2880-troll-necklace-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2880, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            text = "For Troll Necklace Bounty: Bring 5 Troll Tribal Necklaces to Fraggar Thundermantle in Aerie Peak.",
            id = "objective-2880-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2880, state = "complete" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2880-troll-necklace-bounty" },
        },
        {
            priority = 80,
            text = "Turn in Troll Necklace Bounty to Fraggar Thundermantle.",
            route = {
                { y = 0.4456, mapID = 1425, label = "Fraggar Thundermantle", offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.", x = 0.1483 },
            },
            dependsOn = { "accept-2880-troll-necklace-bounty", "objective-2880-quest-work" },
            id = "turnin-2880-troll-necklace-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2880, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.4456, mapID = 1425, label = "Fraggar Thundermantle", offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.", x = 0.1483 },
            },
            text = "Accept Skulk Rock Clean-up from Fraggar Thundermantle.",
            id = "accept-2877-skulk-rock-clean-up",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2877, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "For Witherbark Cages: Check the cages at the two Witherbark villages.",
            id = "objective-2988-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2988, state = "complete" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2988-witherbark-cages" },
        },
        {
            priority = 110,
            text = "Turn in Witherbark Cages to Gryphon Master Talonaxe.",
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            dependsOn = { "accept-2988-witherbark-cages", "objective-2988-quest-work" },
            id = "turnin-2988-witherbark-cages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2988, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            text = "Accept The Altar of Zul from Gryphon Master Talonaxe.",
            id = "accept-2989-the-altar-of-zul",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2989, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2988 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-3661-1-wildkin-feather",
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
            priority = 130,
        },
        {
            id = "objective-3661-1-wildkin-feather",
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
            text = "Collect 15 Wildkin Feather.",
            complete = {
                questObjective = { id = 3661, index = 1, text = "Wildkin Feather", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.22899999999999998, y = 0.5489999999999999, label = "Wildkin Feather", offMapText = "Travel to Wildkin Feather." },
            },
            sourceStep = 11,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Kill 10 Green Sludge.",
            route = {
                { y = 0.426, mapID = 1425, label = "Green Sludge", offMapText = "Travel to Green Sludge.", x = 0.486 },
            },
            dependsOn = { "accept-2877-skulk-rock-clean-up" },
            id = "objective-2877-1-green-sludge",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2877, text = "Green Sludge", index = 1, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Kill 10 Jade Ooze.",
            route = {
                { y = 0.426, mapID = 1425, label = "Jade Ooze", offMapText = "Travel to Jade Ooze.", x = 0.486 },
            },
            dependsOn = { "accept-2877-skulk-rock-clean-up" },
            id = "objective-2877-2-jade-ooze",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2877, text = "Jade Ooze", index = 2, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-485-find-oox-09-hl",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot OOX-09/HL Distress Beacon from Saltwater Snapjaw, Witherbark Scalper, Witherbark Hideskinner, Ebenezer Rustlocke's Corpse, Lesser Bloodstone Deposit, Green Sludge, Waterlogged Letter, Razorbeak Skylord, Witherbark Broodguard, Stone of East Binding, Highvale Scout, Highvale Marksman, Highvale Ranger, Maiden's Folly Charts, Silvermane Howler, Silvermane Stalker, Savage Owlbeast, Vilebranch Scalper, Vilebranch Soothsayer, Gammerita, Wild Leather Shoulders, Wild Leather Helmet, Quickdraw Quiver. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "OOX-09/HL Distress Beacon", minCount = 1 },
                    },
                    {
                        quest = { id = 485, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 170,
        },
        {
            id = "level-before-accept-485-find-oox-09-hl",
            kind = "note",
            text = "Reach level 43 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 43 },
            },
            requiredLevel = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 485,
            priority = 180,
        },
        {
            priority = 190,
            text = "Use the OOX-09/HL Distress Beacon to accept Find OOX-09/HL!.",
            id = "accept-485-find-oox-09-hl",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 485, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in Find OOX-09/HL! to Homing Robot OOX-09/HL.",
            route = {
                { y = 0.3766, mapID = 1425, label = "Homing Robot OOX-09/HL", offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.", x = 0.4935 },
            },
            dependsOn = { "accept-485-find-oox-09-hl" },
            id = "turnin-485-find-oox-09-hl",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 485, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 12 Pupellyverbos Port.",
            complete = {
                questObjective = { id = 580, index = 1, text = "Pupellyverbos Port", count = 12 },
            },
            route = {
                { mapID = 1425, x = 0.778, y = 0.654, label = "Pupellyverbos Port", offMapText = "Travel to Pupellyverbos Port." },
            },
            sourceStep = 20,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
