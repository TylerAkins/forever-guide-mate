local _, ns = ...

ns:RegisterGuide({
    revision = 6,
    title = "Wetlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-wetlands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 24 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-rogue-note-6681-elegant-letter",
            kind = "note",
            text = "Reach level 24 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 24 },
            },
            requiredLevel = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6681,
        },
        {
            id = "woven-class-rogue-note-6681-elegant-letter",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "note-6681-elegant-letter",
        },
        {
            id = "loot-starter-before-woven-class-rogue-accept-6681-authored-class-prerequisite",
            instructionOnly = true,
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "loot-starter-before-accept-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-accept-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-objective-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-rogue-accept-6681-authored-class-prerequisite" },
            classAction = "objective-6681-authored-class-prerequisite",
        },
        {
            id = "woven-class-rogue-turnin-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1424, x = 0.8445, y = 0.8032, label = "Fahrad", offMapText = "Travel to Fahrad." },
            },
            dependsOn = {
                "woven-class-rogue-accept-6681-authored-class-prerequisite",
                "woven-class-rogue-objective-6681-authored-class-prerequisite",
            },
            classAction = "turnin-6681-authored-class-prerequisite",
        },
        {
            id = "level-before-accept-484-young-crocolisk-skins",
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
            checkpointQuest = 484,
        },
        {
            route = {
                { y = 0.5571, mapID = 1437, label = "James Halloran", offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851 },
            },
            text = "Accept Young Crocolisk Skins from James Halloran.",
            id = "accept-484-young-crocolisk-skins",
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
                quest = { id = 484, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-279-claws-from-the-deep",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 279,
        },
        {
            route = {
                { y = 0.5853, mapID = 1437, label = "Karl Boran", offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831 },
            },
            text = "Accept Claws from the Deep from Karl Boran.",
            id = "accept-279-claws-from-the-deep",
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
                quest = { id = 279, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.0562, mapID = 1455, label = "Gerrig Bonegrip", offMapText = "Travel to Gerrig Bonegrip in Ironforge.", x = 0.5083 },
            },
            text = "Turn in The Powers Below to Gerrig Bonegrip.",
            id = "turnin-968-the-powers-below",
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
                quest = { id = 968, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-288-the-third-fleet",
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
            checkpointQuest = 288,
        },
        {
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            text = "Accept The Third Fleet from First Mate Fitzsimmons.",
            id = "accept-288-the-third-fleet",
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
                quest = { id = 288, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            text = "Accept The Greenwarden from First Mate Fitzsimmons.",
            id = "accept-463-the-greenwarden",
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
                quest = { id = 463, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.6043, mapID = 1437, label = "Archaeologist Flagongut", offMapText = "Travel to Archaeologist Flagongut in Wetlands.", x = 0.1084 },
            },
            text = "Turn in The Absent Minded Prospector to Archaeologist Flagongut.",
            id = "turnin-942-the-absent-minded-prospector",
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
                quest = { id = 942, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.6043, mapID = 1437, label = "Archaeologist Flagongut", offMapText = "Travel to Archaeologist Flagongut in Wetlands.", x = 0.1084 },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Flagongut.",
            id = "accept-943-the-absent-minded-prospector",
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
                quest = { id = 943, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "For The Third Fleet: Buy First Mate Fitzsimmons a Flagon of Mead.",
            id = "objective-288-quest-work",
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
            complete = {
                quest = { id = 288, state = "complete" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-288-the-third-fleet" },
        },
        {
            text = "Turn in The Third Fleet to First Mate Fitzsimmons.",
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            dependsOn = { "accept-288-the-third-fleet", "objective-288-quest-work" },
            id = "turnin-288-the-third-fleet",
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
                quest = { id = 288, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.5799, mapID = 1437, label = "Sida", offMapText = "Travel to Sida in Wetlands.", x = 0.118 },
            },
            text = "Accept Digging Through the Ooze from Sida.",
            id = "accept-470-digging-through-the-ooze",
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
                quest = { id = 470, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.5214, mapID = 1437, label = "Tarrel Rockweaver", offMapText = "Travel to Tarrel Rockweaver in Wetlands.", x = 0.115 },
            },
            text = "Accept In Search of The Excavation Team from Tarrel Rockweaver.",
            id = "accept-305-in-search-of-the-excavation-team",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 305, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect 1 Gobbler's Head.",
            route = {
                { y = 0.4038, mapID = 1437, label = "Gobbler", offMapText = "Travel to Gobbler.", x = 0.1799 },
            },
            dependsOn = { "accept-279-claws-from-the-deep" },
            id = "objective-279-2-gobbler",
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
                questObjective = { id = 279, text = "Gobbler", index = 2, count = 1 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-279-reviewed-1",
            kind = "objective",
            text = "Kill 12 Bluegill Murlocs west of Menethil Harbor.",
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
            requiredQuests = {},
            complete = {
                questObjective = { id = 279, index = 1, count = 12 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1437, x = 0.17, y = 0.39399999999999996, label = "Bluegill Murlocs", offMapText = "Travel to Bluegill Murlocs." },
            },
            sourceStep = 19,
            dependsOn = { "accept-279-claws-from-the-deep" },
        },
        {
            route = {
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            text = "Accept Ormer's Revenge from Ormer Ironbraid.",
            id = "accept-294-ormer-s-revenge",
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
                quest = { id = 294, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in In Search of The Excavation Team to Merrin Rockweaver.",
            route = {
                { y = 0.5234, mapID = 1437, label = "Merrin Rockweaver", offMapText = "Travel to Merrin Rockweaver in Wetlands.", x = 0.3891 },
            },
            dependsOn = { "accept-305-in-search-of-the-excavation-team" },
            id = "turnin-305-in-search-of-the-excavation-team",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 305, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.5234, mapID = 1437, label = "Merrin Rockweaver", offMapText = "Travel to Merrin Rockweaver in Wetlands.", x = 0.3891 },
            },
            text = "Accept In Search of The Excavation Team from Merrin Rockweaver.",
            id = "accept-306-in-search-of-the-excavation-team",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 306, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 305 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-943-2-flagongut-s-fossil",
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
            text = "Collect 1 Flagongut's Fossil.",
            complete = {
                questObjective = { id = 943, index = 2, text = "Flagongut's Fossil", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.3886, y = 0.5221, label = "Flagongut's Fossil", offMapText = "Travel to Flagongut's Fossil." },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-943-the-absent-minded-prospector" },
        },
        {
            text = "Kill 10 Mottled Raptor.",
            route = {
                { mapID = 1437, x = 0.292, y = 0.434, label = "Mottled Raptor", offMapText = "Travel to Mottled Raptor." },
            },
            dependsOn = { "accept-294-ormer-s-revenge" },
            id = "objective-294-1-mottled-raptor",
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
            complete = {
                questObjective = { id = 294, text = "Mottled Raptor", index = 1, count = 10 },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 10 Mottled Screecher.",
            route = {
                { mapID = 1437, x = 0.292, y = 0.434, label = "Mottled Screecher", offMapText = "Travel to Mottled Screecher." },
            },
            dependsOn = { "accept-294-ormer-s-revenge" },
            id = "objective-294-2-mottled-screecher",
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
            complete = {
                questObjective = { id = 294, text = "Mottled Screecher", index = 2, count = 10 },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-943-1-stone-of-relu",
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
            text = "Collect 1 Stone of Relu.",
            complete = {
                questObjective = { id = 943, index = 1, text = "Stone of Relu", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.292, y = 0.434, label = "Stone of Relu", offMapText = "Travel to Stone of Relu." },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-943-the-absent-minded-prospector" },
        },
        {
            text = "Turn in Ormer's Revenge to Ormer Ironbraid.",
            route = {
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            dependsOn = { "accept-294-ormer-s-revenge", "objective-294-1-mottled-raptor", "objective-294-2-mottled-screecher" },
            id = "turnin-294-ormer-s-revenge",
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
                quest = { id = 294, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { mapID = 1437, x = 0.4991, y = 0.3937, label = "Einar Stonegrip", offMapText = "Travel to Einar Stonegrip in Wetlands." },
            },
            text = "Accept Daily Delivery from Einar Stonegrip.",
            id = "accept-469-daily-delivery",
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
                quest = { id = 469, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in The Greenwarden to Rethiel the Greenwarden.",
            route = {
                { y = 0.4043, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5634 },
            },
            dependsOn = { "accept-463-the-greenwarden" },
            id = "turnin-463-the-greenwarden",
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
                quest = { id = 463, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4043, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5634 },
            },
            text = "Accept Tramping Paws from Rethiel the Greenwarden.",
            id = "accept-276-tramping-paws",
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
                quest = { id = 276, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Kill 10 Mosshide Mongrel.",
            route = {
                { y = 0.582, mapID = 1437, label = "Mosshide Mongrel", offMapText = "Travel to Mosshide Mongrel.", x = 0.604 },
            },
            dependsOn = { "accept-276-tramping-paws" },
            id = "objective-276-2-mosshide-mongrel",
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
                questObjective = { id = 276, text = "Mosshide Mongrel", index = 2, count = 10 },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-276-1-mosshide-gnoll",
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
            text = "Kill 15 Mosshide Gnoll.",
            complete = {
                questObjective = { id = 276, index = 1, text = "Mosshide Gnoll", count = 15 },
            },
            route = {
                { mapID = 1437, x = 0.636, y = 0.622, label = "Mosshide Gnoll", offMapText = "Travel to Mosshide Gnoll." },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-276-tramping-paws" },
        },
        {
            id = "objective-484-1-young-crocolisk-skin",
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
            text = "Collect 4 Young Crocolisk Skin.",
            complete = {
                questObjective = { id = 484, index = 1, text = "Young Crocolisk Skin", count = 4 },
            },
            route = {
                { mapID = 1437, x = 0.618, y = 0.564, label = "Young Crocolisk Skin", offMapText = "Travel to Young Crocolisk Skin." },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-484-young-crocolisk-skins" },
        },
        {
            text = "Turn in Tramping Paws to Rethiel the Greenwarden.",
            route = {
                { y = 0.4043, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5634 },
            },
            dependsOn = { "accept-276-tramping-paws", "objective-276-2-mosshide-mongrel", "objective-276-1-mosshide-gnoll" },
            id = "turnin-276-tramping-paws",
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
                quest = { id = 276, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4043, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5634 },
            },
            text = "Accept Fire Taboo from Rethiel the Greenwarden.",
            id = "accept-277-fire-taboo",
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
                quest = { id = 277, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 276 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect 1 Sida's Bag.",
            route = {
                { y = 0.286, mapID = 1437, label = "Black Ooze", offMapText = "Travel to Black Ooze.", x = 0.48 },
            },
            dependsOn = { "accept-470-digging-through-the-ooze" },
            id = "objective-470-1-black-ooze",
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
                questObjective = { id = 470, text = "Black Ooze", index = 1, count = 1 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Absent Minded Prospector to Archaeologist Flagongut.",
            route = {
                { y = 0.6043, mapID = 1437, label = "Archaeologist Flagongut", offMapText = "Travel to Archaeologist Flagongut in Wetlands.", x = 0.1084 },
            },
            dependsOn = {
                "accept-943-the-absent-minded-prospector",
                "objective-943-2-flagongut-s-fossil",
                "objective-943-1-stone-of-relu",
            },
            id = "turnin-943-the-absent-minded-prospector",
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
                quest = { id = 943, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Digging Through the Ooze to Sida.",
            route = {
                { y = 0.5799, mapID = 1437, label = "Sida", offMapText = "Travel to Sida in Wetlands.", x = 0.118 },
            },
            dependsOn = { "accept-470-digging-through-the-ooze", "objective-470-1-black-ooze" },
            id = "turnin-470-digging-through-the-ooze",
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
                quest = { id = 470, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in In Search of The Excavation Team to Tarrel Rockweaver.",
            route = {
                { y = 0.5214, mapID = 1437, label = "Tarrel Rockweaver", offMapText = "Travel to Tarrel Rockweaver in Wetlands.", x = 0.115 },
            },
            dependsOn = { "accept-306-in-search-of-the-excavation-team" },
            id = "turnin-306-in-search-of-the-excavation-team",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 306, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 305 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Young Crocolisk Skins to James Halloran.",
            route = {
                { y = 0.5571, mapID = 1437, label = "James Halloran", offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851 },
            },
            dependsOn = { "accept-484-young-crocolisk-skins", "objective-484-1-young-crocolisk-skin" },
            id = "turnin-484-young-crocolisk-skins",
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
                quest = { id = 484, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Daily Delivery to James Halloran.",
            route = {
                { y = 0.5571, mapID = 1437, label = "James Halloran", offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851 },
            },
            dependsOn = { "accept-469-daily-delivery" },
            id = "turnin-469-daily-delivery",
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
                quest = { id = 469, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Claws from the Deep to Karl Boran.",
            route = {
                { y = 0.5853, mapID = 1437, label = "Karl Boran", offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831 },
            },
            dependsOn = { "accept-279-claws-from-the-deep", "objective-279-2-gobbler", "objective-279-reviewed-1" },
            id = "turnin-279-claws-from-the-deep",
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
                quest = { id = 279, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.7457, mapID = 1455, label = "Elixir of Minor Fortitude", offMapText = "Travel to Elixir of Minor Fortitude.", x = 0.2424 },
            },
            text = "Collect 2 Elixir of Minor Fortitude. Keep the required materials for the quest.",
            id = "objective-1073-1-elixir-of-minor-fortitude",
            kind = "note",
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
                quest = { id = 1073, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1072 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.5188, mapID = 1455, label = "Lomac Gearstrip", offMapText = "Travel to Lomac Gearstrip in Ironforge.", x = 0.7209 },
            },
            text = "Turn in An Old Colleague to Lomac Gearstrip.",
            id = "turnin-1072-an-old-colleague",
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
                quest = { id = 1072, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1071 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.5188, mapID = 1455, label = "Lomac Gearstrip", offMapText = "Travel to Lomac Gearstrip in Ironforge.", x = 0.7209 },
            },
            text = "Accept Ineptitude + Chemicals = Fun from Lomac Gearstrip.",
            id = "accept-1073-ineptitude-chemicals-fun",
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
                quest = { id = 1073, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1072 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "prepare-1073-all-required-materials",
            kind = "note",
            text = "Buy 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude at the Ironforge Auction House if available. Keep all six potions for Lomac Gearstrip.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1072 },
                    conditions = {},
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Minor Mana Potion", minCount = 4 },
                            },
                            {
                                item = { name = "Elixir of Minor Fortitude", minCount = 2 },
                            },
                        },
                    },
                    {
                        quest = { id = 1073, state = "complete" },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1455, x = 0.24239999999999998, y = 0.7456999999999999, label = "Auctioneer Redmuse", offMapText = "Travel to Auctioneer Redmuse." },
            },
            checkpointQuest = 1073,
            instructionOnly = true,
            rememberPreparation = 1073,
            dependsOn = {},
        },
        {
            text = "Turn in Ineptitude + Chemicals = Fun to Lomac Gearstrip.",
            route = {
                { y = 0.5188, mapID = 1455, label = "Lomac Gearstrip", offMapText = "Travel to Lomac Gearstrip in Ironforge.", x = 0.7209 },
            },
            dependsOn = { "accept-1073-ineptitude-chemicals-fun" },
            id = "turnin-1073-ineptitude-chemicals-fun",
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
                quest = { id = 1073, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1072 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1650-the-tome-of-valor",
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
        },
        {
            route = {
                { mapID = 1453, x = 0.505, y = 0.475, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            text = "Accept The Tome of Valor from Duthorian Rall.",
            id = "accept-1650-the-tome-of-valor",
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
                quest = { id = 1650, state = "activeOrCompleted" },
            },
            sourceStep = 48,
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
            id = "level-before-accept-2360-mathias-and-the-defias",
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
        },
        {
            route = {
                { y = 0.707, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.783 },
            },
            text = "Accept Mathias and the Defias from Master Mathias Shaw.",
            id = "accept-2360-mathias-and-the-defias",
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
                quest = { id = 2360, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.8038, mapID = 1453, label = "Collin Mauren", offMapText = "Travel to Collin Mauren in Stormwind City.", x = 0.4309 },
            },
            text = "Turn in A Scroll from Mauren to Collin Mauren.",
            id = "turnin-1075-a-scroll-from-mauren",
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
                quest = { id = 1075, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1071 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1738-quest-work",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            checkpointQuest = 1738,
        },
        {
            route = {
                { mapID = 1440, x = 0.31489999999999996, y = 0.3145, label = "Heartswood", offMapText = "Travel to Heartswood." },
            },
            id = "objective-1738-quest-work",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            sourceStep = 53,
            useClientPin = false,
            dependsOn = {},
            classAction = "objective-1738-quest-work",
        },
        {
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Turn in Heartswood to Gakin the Darkbinder.",
            id = "turnin-1738-heartswood",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                quest = { id = 1738, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1716 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1738-quest-work" },
        },
        {
            route = {
                { mapID = 1453, x = 0.392, y = 0.852, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Accept The Binding from Gakin the Darkbinder.",
            id = "accept-1739-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                quest = { id = 1739, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Kill Summoned Succubus.",
            route = {
                { y = 0.7746, mapID = 1453, label = "Heartswood Core", offMapText = "Travel to Heartswood Core.", x = 0.2511 },
            },
            dependsOn = { "accept-1739-the-binding" },
            id = "objective-1739-1-heartswood-core",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                questObjective = { id = 1739, text = "Heartswood Core", index = 1 },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Binding to Gakin the Darkbinder.",
            route = {
                { y = 0.7856, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2525 },
            },
            dependsOn = { "accept-1739-the-binding", "objective-1739-1-heartswood-core" },
            id = "turnin-1739-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                quest = { id = 1739, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-98197-spoils-of-war",
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
            checkpointQuest = 98197,
        },
        {
            route = {
                { y = 0.568, mapID = 1437, label = "Valstag Ironjaw", offMapText = "Travel to Valstag Ironjaw.", x = 0.1 },
            },
            text = "Accept Spoils of War from Valstag Ironjaw in Menethil Keep.",
            id = "woven-accept-98197-spoils-of-war",
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
                quest = { id = 98197, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { y = 0.522, mapID = 1437, label = "Tarrel Rockweaver", offMapText = "Travel to Tarrel Rockweaver.", x = 0.1147 },
            },
            text = "Turn in Unrequited Love to Tarrel Rockweaver in Menethil Harbor.",
            id = "woven-turnin-98461-unrequited-love",
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
                quest = { id = 98461, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from the water in Menethil Harbor. No saved spot for this, so the guide follows the pin in your quest log.",
            route = {
                { y = 0.568, mapID = 1437, label = "Menethil Harbor", offMapText = "Travel to Menethil Harbor.", x = 0.1 },
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
            id = "woven-objective-98197-spoils-of-war",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 98197, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98197-spoils-of-war" },
        },
        {
            route = {
                { y = 0.568, mapID = 1437, label = "Valstag Ironjaw", offMapText = "Travel to Valstag Ironjaw.", x = 0.1 },
            },
            text = "Turn in Spoils of War to Valstag Ironjaw in Menethil Keep.",
            id = "woven-turnin-98197-spoils-of-war",
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
                quest = { id = 98197, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98197-spoils-of-war", "woven-objective-98197-spoils-of-war" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
