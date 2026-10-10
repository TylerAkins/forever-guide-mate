local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Winterspring",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-winterspring",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 58 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-shaman-accept-7667-material-assistance",
            kind = "note",
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 58 },
            },
            requiredLevel = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7667,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            id = "woven-class-shaman-accept-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
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
            classAction = "accept-7667-material-assistance",
        },
        {
            priority = 30,
            dependsOn = { "woven-class-shaman-accept-7667-material-assistance" },
            id = "woven-class-shaman-objective-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
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
            classAction = "objective-7667-material-assistance",
        },
        {
            priority = 40,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            dependsOn = {
                "woven-class-shaman-accept-7667-material-assistance",
                "woven-class-shaman-objective-7667-material-assistance",
            },
            id = "woven-class-shaman-turnin-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
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
            classAction = "turnin-7667-material-assistance",
        },
        {
            id = "level-before-accept-977-are-we-there-yeti",
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
            checkpointQuest = 977,
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-977-are-we-there-yeti",
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
                quest = { id = 977, state = "activeOrCompleted" },
            },
            sourceStep = 5,
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
            priority = 70,
            text = "Collect 2 Pristine Yeti Horn.",
            route = {
                { y = 0.4175, mapID = 1452, label = "Ice Thistle Matriarch", offMapText = "Travel to Ice Thistle Matriarch.", x = 0.6765 },
            },
            dependsOn = { "accept-977-are-we-there-yeti" },
            id = "objective-977-1-ice-thistle-matriarch",
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
                questObjective = { id = 977, text = "Ice Thistle Matriarch", index = 1, count = 2 },
            },
            sourceStep = 8,
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
            id = "loot-starter-before-accept-8471-winterfall-ritual-totem",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Winterfall Ritual Totem from Winterfall Ursa, Winterfall Shaman, Winterfall Den Watcher, Winterfall Totemic, Winterfall Pathfinder, Winterfall Runner. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Winterfall Ritual Totem", minCount = 1 },
                    },
                    {
                        quest = { id = 8471, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 80,
        },
        {
            priority = 90,
            text = "Use the Winterfall Ritual Totem to accept Winterfall Ritual Totem.",
            id = "accept-8471-winterfall-ritual-totem",
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
                quest = { id = 8471, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8464-1-winterfall-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 8 Winterfall Shaman.",
            complete = {
                questObjective = { id = 8464, index = 1, text = "Winterfall Shaman", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Shaman", offMapText = "Travel to Winterfall Shaman." },
            },
            sourceStep = 10,
            priority = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8464-2-winterfall-den-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 8 Winterfall Den Watcher.",
            complete = {
                questObjective = { id = 8464, index = 2, text = "Winterfall Den Watcher", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Den Watcher", offMapText = "Travel to Winterfall Den Watcher." },
            },
            sourceStep = 10,
            priority = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8464-3-winterfall-ursa",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 8 Winterfall Ursa.",
            complete = {
                questObjective = { id = 8464, index = 3, text = "Winterfall Ursa", count = 8 },
            },
            route = {
                { mapID = 1452, x = 0.6779999999999999, y = 0.37799999999999995, label = "Winterfall Ursa", offMapText = "Travel to Winterfall Ursa." },
            },
            sourceStep = 10,
            priority = 120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-4741-1-moontouched-owlbeast",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 4741,
            priority = 130,
        },
        {
            priority = 140,
            route = {
                { y = 0.234, mapID = 1452, label = "Moontouched Owlbeast", offMapText = "Travel to Moontouched Owlbeast.", x = 0.634 },
            },
            text = "Kill 13 Moontouched Owlbeast.",
            id = "objective-4741-1-moontouched-owlbeast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4741, text = "Moontouched Owlbeast", index = 1, count = 13 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4521 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker.",
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            dependsOn = { "accept-977-are-we-there-yeti", "objective-977-1-ice-thistle-matriarch" },
            id = "turnin-977-are-we-there-yeti",
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
                quest = { id = 977, state = "completed" },
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
            priority = 160,
            text = "Turn in Chillwind Horns to Felnok Steelspring.",
            route = {
                { y = 0.3861, mapID = 1452, label = "Felnok Steelspring", offMapText = "Travel to Felnok Steelspring in Winterspring.", x = 0.6163 },
            },
            dependsOn = { "objective-4809-1-uncracked-chillwind-horn" },
            id = "turnin-4809-chillwind-horns",
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
                quest = { id = 4809, state = "completed" },
            },
            sourceStep = 13,
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
            priority = 170,
            text = "Turn in Wild Guardians to Trull Failbane.",
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            dependsOn = { "objective-4741-1-moontouched-owlbeast" },
            id = "turnin-4741-wild-guardians",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4741, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4521 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            text = "Accept Wild Guardians from Trull Failbane.",
            id = "accept-4721-wild-guardians",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4721, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-4882-guarding-secrets",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Blue-feathered Necklace from Crazed Owlbeast, Moontouched Owlbeast, Berserk Owlbeast. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Blue-feathered Necklace", minCount = 1 },
                    },
                    {
                        quest = { id = 4882, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 190,
        },
        {
            priority = 200,
            text = "Use the Blue-feathered Necklace to accept Guarding Secrets.",
            id = "accept-4882-guarding-secrets",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4882, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4721-1-berserk-owlbeast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Berserk Owlbeast.",
            complete = {
                questObjective = { id = 4721, index = 1, text = "Berserk Owlbeast", count = 10 },
            },
            route = {
                { mapID = 1452, x = 0.634, y = 0.23399999999999999, label = "Berserk Owlbeast", offMapText = "Travel to Berserk Owlbeast." },
            },
            sourceStep = 16,
            priority = 210,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4721-wild-guardians" },
        },
        {
            id = "objective-4809-1-uncracked-chillwind-horn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            sourceStep = 17,
            priority = 220,
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
            priority = 230,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Accept Are We There, Yeti? from Umi Rumplesnicker.",
            id = "accept-5163-are-we-there-yeti",
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
                quest = { id = 5163, state = "activeOrCompleted" },
            },
            sourceStep = 18,
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
            priority = 240,
            text = "Use Umi's Mechanical Yeti on Legacki to scare her.",
            route = {
                { mapID = 1452, x = 0.6154, y = 0.3862, label = "Legacki", offMapText = "Travel to Legacki." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-1-umi-s-mechanical-yeti",
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
            priority = 250,
            route = {
                { y = 0.345, mapID = 1452, label = "Salfa", offMapText = "Travel to Salfa in Winterspring.", x = 0.2774 },
            },
            text = "Turn in Winterfall Activity to Salfa.",
            id = "turnin-8464-winterfall-activity",
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
                quest = { id = 8464, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "objective-8464-1-winterfall-shaman",
                "objective-8464-2-winterfall-den-watcher",
                "objective-8464-3-winterfall-ursa",
            },
        },
        {
            priority = 260,
            text = "Turn in Winterfall Ritual Totem to Kernda.",
            route = {
                { y = 0.0348, mapID = 1448, label = "Kernda", offMapText = "Travel to Kernda in Felwood.", x = 0.6549 },
            },
            dependsOn = { "accept-8471-winterfall-ritual-totem" },
            id = "turnin-8471-winterfall-ritual-totem",
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
                quest = { id = 8471, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-1123-rabine-saturna",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1123,
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Turn in Rabine Saturna to Rabine Saturna.",
            id = "turnin-1123-rabine-saturna",
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
                quest = { id = 1123, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1000, 1004, 1018 },
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
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1124,
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Accept Wasteland from Rabine Saturna.",
            id = "accept-1124-wasteland",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 1124, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 56 },
            },
            requiredLevel = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5527,
            priority = 310,
        },
        {
            priority = 320,
            route = {
                { y = 0.4509, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Accept A Reliquary of Purity from Rabine Saturna.",
            id = "accept-5527-a-reliquary-of-purity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 56 },
                    },
                },
            },
            complete = {
                quest = { id = 5527, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.0813, mapID = 1448, label = "Nafien", offMapText = "Travel to Nafien in Felwood.", x = 0.6477 },
            },
            text = "Accept Feathers for Nafien from Nafien.",
            id = "accept-8467-feathers-for-nafien",
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
                quest = { id = 8467, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Reach Neutral reputation with Timbermaw Hold before speaking with the furbolgs inside the hold.",
            id = "objective-8470-quest-work",
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
                quest = { id = 8470, state = "complete" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.0348, mapID = 1448, label = "Kernda", offMapText = "Travel to Kernda in Felwood.", x = 0.6549 },
            },
            text = "Turn in Deadwood Ritual Totem to Kernda.",
            id = "turnin-8470-deadwood-ritual-totem",
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
                quest = { id = 8470, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-8470-quest-work" },
        },
        {
            priority = 360,
            route = {
                { y = 0.096, mapID = 1448, label = "Deadwood Den Watcher", offMapText = "Travel to Deadwood Den Watcher.", x = 0.636 },
            },
            text = "Kill Deadwood Den Watcher. Loot the starter item here, then use it to accept the quest.",
            id = "objective-6031-1-deadwood-den-watcher",
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
                quest = { id = 6031, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { y = 0.0281, mapID = 1448, label = "Meilosh", offMapText = "Travel to Meilosh in Felwood.", x = 0.6569 },
            },
            text = "Accept Runecloth from Meilosh.",
            id = "accept-6031-runecloth",
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
                quest = { id = 6031, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in Runecloth to Meilosh.",
            route = {
                { y = 0.0281, mapID = 1448, label = "Meilosh", offMapText = "Travel to Meilosh in Felwood.", x = 0.6569 },
            },
            dependsOn = { "accept-6031-runecloth" },
            id = "turnin-6031-runecloth",
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
                quest = { id = 6031, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Turn in Wild Guardians to Trull Failbane.",
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            dependsOn = { "accept-4721-wild-guardians", "objective-4721-1-berserk-owlbeast" },
            id = "turnin-4721-wild-guardians",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4721, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in Guarding Secrets to Trull Failbane.",
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            dependsOn = { "accept-4882-guarding-secrets" },
            id = "turnin-4882-guarding-secrets",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4882, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.5279, mapID = 1448, label = "Trull Failbane", offMapText = "Travel to Trull Failbane in Felwood.", x = 0.3473 },
            },
            text = "Accept Guarding Secrets from Trull Failbane.",
            id = "accept-4883-guarding-secrets",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4883, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4882 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Guarding Secrets to Nara Wildmane.",
            route = {
                { y = 0.3161, mapID = 1456, label = "Nara Wildmane", offMapText = "Travel to Nara Wildmane in Thunder Bluff.", x = 0.7565 },
            },
            dependsOn = { "accept-4883-guarding-secrets" },
            id = "turnin-4883-guarding-secrets",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4883, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4882 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.3161, mapID = 1456, label = "Nara Wildmane", offMapText = "Travel to Nara Wildmane in Thunder Bluff.", x = 0.7565 },
            },
            text = "Turn in Glyphed Oaken Branch to Nara Wildmane.",
            id = "turnin-4987-glyphed-oaken-branch",
            kind = "turnin",
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
                quest = { id = 4987, state = "completed" },
            },
            sourceStep = 43,
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
            priority = 440,
            text = "Use Umi's Mechanical Yeti on Sprinkle to scare her.",
            route = {
                { mapID = 1446, x = 0.5106, y = 0.2687, label = "Sprinkle", offMapText = "Travel to Sprinkle." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-2-umi-s-mechanical-yeti",
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
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Open Eridan's Supplies to obtain the Irontree Heart, 11 Silvery Claws and Book of Aquor. Keep them in your bags.",
            id = "objective-4005-1-eridan-s-supplies",
            kind = "note",
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
            dependsOn = {},
            sourceInstructionStep = 49,
            sourceInstructionIndex = 1,
            checkpointQuest = 4005,
            instructionOnly = true,
            rememberPreparation = 4005,
        },
        {
            priority = 460,
            route = {
                { mapID = 1446, x = 0.7042, y = 0.499, label = "Aquementas stone circle", offMapText = "Travel to Aquementas stone circle." },
            },
            text = "Enter Lost Rigger Cove through the tunnel at Tanaris 68.62,41.46. Use the Book of Aquor at the stone circle with Eridan's materials in your bags. Let Aquementas finish speaking, defeat him and obtain the Silver Totem of Aquementas.",
            id = "objective-4005-1-book-of-aquor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Enter the cave at Marshal's Refuge in Un'Goro Crater and turn in Aquementas to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie at Marshal's Refuge", offMapText = "Travel to J.D. Collie at Marshal's Refuge." },
            },
            dependsOn = { "objective-4005-1-eridan-s-supplies", "objective-4005-1-book-of-aquor" },
            id = "turnin-4005-aquementas",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4005, state = "completed" },
            },
            sourceStep = 50,
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
            priority = 480,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Linken's Adventure from J.D. Collie.",
            id = "accept-3961-linken-s-adventure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3961, state = "activeOrCompleted" },
            },
            sourceStep = 50,
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
            priority = 490,
            text = "Turn in Linken's Adventure to Linken.",
            route = {
                { mapID = 1449, x = 0.44659999999999994, y = 0.081, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater." },
            },
            dependsOn = { "accept-3961-linken-s-adventure" },
            id = "turnin-3961-linken-s-adventure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3961, state = "completed" },
            },
            sourceStep = 52,
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
            priority = 500,
            text = "Use Umi's Mechanical Yeti on Quixxil to scare him.",
            route = {
                { mapID = 1449, x = 0.43670000000000003, y = 0.09380000000000001, label = "Quixxil", offMapText = "Travel to Quixxil." },
            },
            dependsOn = { "accept-5163-are-we-there-yeti" },
            id = "objective-5163-3-umi-s-mechanical-yeti",
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
