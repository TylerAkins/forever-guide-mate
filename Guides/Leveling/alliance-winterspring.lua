local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Winterspring",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-winterspring",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 58 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-4808-felnok-steelspring",
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
            checkpointQuest = 4808,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            text = "Turn in Felnok Steelspring to Felnok Steelspring.",
            id = "turnin-4808-felnok-steelspring",
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
                quest = { id = 4808, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4726 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            text = "Accept Chillwind Horns from Felnok Steelspring.",
            id = "accept-4809-chillwind-horns",
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
                quest = { id = 4809, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3783-are-we-there-yeti",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3783,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-3783-are-we-there-yeti",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 3783, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Collect 10 Thick Yeti Fur.",
            route = {
                { y = 0.4175, mapID = 1452, label = "Ice Thistle Yeti", offMapText = "Travel to Ice Thistle Yeti.", x = 0.6765 },
            },
            dependsOn = { "accept-3783-are-we-there-yeti" },
            id = "objective-3783-1-ice-thistle-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3783, text = "Ice Thistle Yeti", index = 1, count = 10 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker.",
            route = {
                { mapID = 1452, x = 0.6088, y = 0.3762, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring." },
            },
            dependsOn = { "accept-3783-are-we-there-yeti", "objective-3783-1-ice-thistle-yeti" },
            id = "turnin-3783-are-we-there-yeti",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 3783, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            route = {
                { mapID = 1452, x = 0.6088, y = 0.3762, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring." },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-977-are-we-there-yeti",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 977, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Collect 2 Pristine Yeti Horn.",
            route = {
                { y = 0.4175, mapID = 1452, label = "Ice Thistle Matriarch", offMapText = "Travel to Ice Thistle Matriarch.", x = 0.6765 },
            },
            dependsOn = { "accept-977-are-we-there-yeti" },
            id = "objective-977-1-ice-thistle-matriarch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 977, text = "Ice Thistle Matriarch", index = 1, count = 2 },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Shaman", offMapText = "Travel to Winterfall Shaman." },
            },
            text = "Kill 8 Winterfall Shaman.",
            id = "objective-8464-1-winterfall-shaman",
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
                questObjective = { id = 8464, text = "Winterfall Shaman", index = 1, count = 8 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Den Watcher", offMapText = "Travel to Winterfall Den Watcher." },
            },
            text = "Kill 8 Winterfall Den Watcher.",
            id = "objective-8464-2-winterfall-den-watcher",
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
                questObjective = { id = 8464, text = "Winterfall Den Watcher", index = 2, count = 8 },
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
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Ursa", offMapText = "Travel to Winterfall Ursa." },
            },
            text = "Kill 8 Winterfall Ursa.",
            id = "objective-8464-3-winterfall-ursa",
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
                questObjective = { id = 8464, text = "Winterfall Ursa", index = 3, count = 8 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4809-1-uncracked-chillwind-horn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 8 Uncracked Chillwind Horn.",
            complete = {
                questObjective = { id = 4809, index = 1, text = "Uncracked Chillwind Horn", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.64, y = 0.302, label = "Uncracked Chillwind Horn", offMapText = "Travel to Uncracked Chillwind Horn." },
            },
            sourceStep = 14,
            priority = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4809-chillwind-horns" },
        },
        {
            priority = 140,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker.",
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            dependsOn = { "accept-977-are-we-there-yeti", "objective-977-1-ice-thistle-matriarch" },
            id = "turnin-977-are-we-there-yeti",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 977, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-5163-are-we-there-yeti",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5163, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Use Umi's Mechanical Yeti on Legacki to scare her.",
            route = {
                { mapID = 1452, x = 0.6154, y = 0.3862, label = "Legacki", offMapText = "Travel to Legacki." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-1-umi-s-mechanical-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5163, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Chillwind Horns to Felnok Steelspring.",
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            dependsOn = { "accept-4809-chillwind-horns", "objective-4809-1-uncracked-chillwind-horn" },
            id = "turnin-4809-chillwind-horns",
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
                quest = { id = 4809, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4808 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.3697, mapID = 1452, label = "Silvery Claws", offMapText = "Travel to Silvery Claws.", x = 0.6146 },
            },
            text = "Collect 11 Silvery Claws.",
            id = "objective-4084-1-silvery-claws",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4084, text = "Silvery Claws", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            text = "Turn in Winterfall Activity to Salfa.",
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            dependsOn = {
                "objective-8464-1-winterfall-shaman",
                "objective-8464-2-winterfall-den-watcher",
                "objective-8464-3-winterfall-ursa",
            },
            id = "turnin-8464-winterfall-activity",
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
                quest = { id = 8464, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-6762-rabine-saturna",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6762,
            priority = 200,
        },
        {
            priority = 210,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Turn in Rabine Saturna to Rabine Saturna.",
            id = "turnin-6762-rabine-saturna",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6762, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1124-wasteland",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1124,
            priority = 220,
        },
        {
            priority = 230,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Accept Wasteland from Rabine Saturna.",
            id = "accept-1124-wasteland",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 1124, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1123, 6762 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5527-a-reliquary-of-purity",
            kind = "note",
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 56 },
            },
            requiredLevel = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5527,
            priority = 240,
        },
        {
            priority = 250,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Accept A Reliquary of Purity from Rabine Saturna.",
            id = "accept-5527-a-reliquary-of-purity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                },
            },
            complete = {
                quest = { id = 5527, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in Silver Heart to Eridan Bluewind.",
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            dependsOn = { "objective-4084-1-silvery-claws" },
            id = "turnin-4084-silver-heart",
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
                quest = { id = 4084, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3942 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.8151, mapID = 1448, label = "Eridan Bluewind", offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135 },
            },
            text = "Accept Aquementas from Eridan Bluewind.",
            id = "accept-4005-aquementas",
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
                quest = { id = 4005, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            route = {
                { y = 0.0843, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.3538 },
            },
            text = "Turn in Glyphed Oaken Branch to Mathrengyl Bearwalker.",
            id = "turnin-4986-glyphed-oaken-branch",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4986, state = "completed" },
            },
            sourceStep = 26,
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
            priority = 290,
            text = "Use Umi's Mechanical Yeti on Sprinkle to scare her.",
            route = {
                { mapID = 1446, x = 0.5106, y = 0.2687, label = "Sprinkle", offMapText = "Travel to Sprinkle." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-2-umi-s-mechanical-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5163, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-4005-aquementas" },
            id = "objective-4005-1-eridan-s-supplies",
            text = "Open Eridan's Supplies to obtain the Irontree Heart, 11 Silvery Claws and Book of Aquor. Keep them in your bags.",
            useClientPin = false,
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Irontree Heart", minCount = 1 },
                            },
                            {
                                item = { name = "Silvery Claws", minCount = 11 },
                            },
                            {
                                item = { name = "Book of Aquor", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4005, state = "complete" },
                    },
                },
            },
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            priority = 300,
            route = {
                { mapID = 1446, x = 0.7042, y = 0.499, label = "Silver Totem of Aquementas", offMapText = "Travel to Silver Totem of Aquementas." },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4084 },
                    conditions = {},
                },
            },
            useClientText = false,
            sourceInstructionStep = 30,
            sourceInstructionIndex = 1,
            checkpointQuest = 4005,
            instructionOnly = true,
            rememberPreparation = 4005,
        },
        {
            priority = 310,
            text = "Enter Lost Rigger Cove through the tunnel at Tanaris 68.62,41.46. Use the Book of Aquor at the stone circle with Eridan's materials in your bags. Let Aquementas finish speaking, defeat him and obtain the Silver Totem of Aquementas.",
            route = {
                { mapID = 1446, x = 0.7042, y = 0.499, label = "Aquementas stone circle", offMapText = "Travel to Aquementas stone circle." },
            },
            dependsOn = { "accept-4005-aquementas" },
            id = "objective-4005-1-book-of-aquor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4005, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Enter the cave at Marshal's Refuge in Un'Goro Crater and turn in Aquementas to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie at Marshal's Refuge", offMapText = "Travel to J.D. Collie at Marshal's Refuge." },
            },
            dependsOn = { "accept-4005-aquementas", "objective-4005-1-eridan-s-supplies", "objective-4005-1-book-of-aquor" },
            id = "turnin-4005-aquementas",
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
                quest = { id = 4005, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Linken's Adventure from J.D. Collie.",
            id = "accept-3961-linken-s-adventure",
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
                quest = { id = 3961, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4005 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Turn in Linken's Adventure to Linken.",
            route = {
                { mapID = 1449, x = 0.44659999999999994, y = 0.081, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater." },
            },
            dependsOn = { "accept-3961-linken-s-adventure" },
            id = "turnin-3961-linken-s-adventure",
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
                quest = { id = 3961, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4005 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Use Umi's Mechanical Yeti on Quixxil to scare him.",
            route = {
                { mapID = 1449, x = 0.43670000000000003, y = 0.09380000000000001, label = "Quixxil", offMapText = "Travel to Quixxil." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-3-umi-s-mechanical-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5163, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
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
