local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Arathi Highlands & Alterac Mountains",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 39 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-658-1-forsaken-courier",
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
            checkpointQuest = 658,
            priority = 10,
        },
        {
            priority = 20,
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
            text = "Collect 1 Sealed Folder.",
            id = "objective-658-1-forsaken-courier",
            kind = "objective",
            useClientPin = true,
            complete = {
                questObjective = { id = 658, text = "Forsaken Courier", index = 1, count = 1 },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 659 },
                    conditions = {},
                },
            },
            useClientText = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.4775, mapID = 1417, label = "Apprentice Kryten", offMapText = "Travel to Apprentice Kryten in Arathi Highlands.", x = 0.462 },
            },
            text = "Accept Worth Its Weight in Gold from Apprentice Kryten.",
            id = "accept-691-worth-its-weight-in-gold",
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
                quest = { id = 691, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-642-the-princess-trapped",
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
            checkpointQuest = 642,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.338, mapID = 1417, label = "The Princess Trapped", offMapText = "Travel to The Princess Trapped.", x = 0.625 },
            },
            text = "Accept The Princess Trapped.",
            id = "accept-642-the-princess-trapped",
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
                quest = { id = 642, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Collect 12 Mote of Myzrael.",
            route = {
                { y = 0.442, mapID = 1417, label = "Drywhisker Kobold", offMapText = "Travel to Drywhisker Kobold.", x = 0.76 },
            },
            dependsOn = { "accept-642-the-princess-trapped" },
            id = "objective-642-1-drywhisker-kobold",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 642, text = "Drywhisker Kobold", index = 1, count = 12 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            text = "Turn in The Princess Trapped.",
            route = {
                { mapID = 1417, x = 0.8431000000000001, y = 0.30920000000000003, label = "The Princess Trapped", offMapText = "Travel to The Princess Trapped." },
            },
            dependsOn = { "accept-642-the-princess-trapped", "objective-642-1-drywhisker-kobold" },
            id = "turnin-642-the-princess-trapped",
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
                quest = { id = 642, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            route = {
                { mapID = 1417, x = 0.8431000000000001, y = 0.30920000000000003, label = "Stones of Binding", offMapText = "Travel to Stones of Binding." },
            },
            text = "Accept Stones of Binding.",
            id = "accept-651-stones-of-binding",
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
                quest = { id = 651, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-651-2-cresting-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Cresting Key.",
            complete = {
                questObjective = { id = 651, index = 2, text = "Cresting Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.6675, y = 0.2975, label = "Cresting Key", offMapText = "Travel to Cresting Key." },
            },
            sourceStep = 6,
            priority = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            priority = 100,
            text = "Collect 1 Shadow Hunter Knife.",
            route = {
                { y = 0.7518, mapID = 1417, label = "Witherbark Shadow Hunter", offMapText = "Travel to Witherbark Shadow Hunter.", x = 0.6832 },
            },
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
            id = "objective-691-3-witherbark-shadow-hunter",
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
                questObjective = { id = 691, text = "Witherbark Shadow Hunter", index = 3, count = 1 },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-691-2-witherbark-medicine-pouch",
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
            text = "Collect 4 Witherbark Medicine Pouch.",
            complete = {
                questObjective = { id = 691, index = 2, text = "Witherbark Medicine Pouch", count = 4 },
            },
            route = {
                { mapID = 1417, x = 0.6579999999999999, y = 0.68, label = "Witherbark Medicine Pouch", offMapText = "Travel to Witherbark Medicine Pouch." },
            },
            sourceStep = 9,
            priority = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
        },
        {
            id = "objective-691-1-witherbark-tusk",
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
            text = "Collect 10 Witherbark Tusk.",
            complete = {
                questObjective = { id = 691, index = 1, text = "Witherbark Tusk", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.6579999999999999, y = 0.68, label = "Witherbark Tusk", offMapText = "Travel to Witherbark Tusk." },
            },
            sourceStep = 10,
            priority = 120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-691-worth-its-weight-in-gold" },
        },
        {
            priority = 130,
            text = "Turn in Hints of a New Plague? to Quae.",
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            dependsOn = { "objective-658-1-forsaken-courier" },
            id = "turnin-658-hints-of-a-new-plague",
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
                quest = { id = 658, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 659 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            text = "Accept Hints of a New Plague? from Quae.",
            id = "accept-657-hints-of-a-new-plague",
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
                quest = { id = 657, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 658 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Turn in Hints of a New Plague? to Kinelory.",
            route = {
                { y = 0.5392, mapID = 1417, label = "Kinelory", offMapText = "Travel to Kinelory in Arathi Highlands.", x = 0.6024 },
            },
            dependsOn = { "accept-657-hints-of-a-new-plague" },
            id = "turnin-657-hints-of-a-new-plague",
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
                quest = { id = 657, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 658 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            route = {
                { y = 0.5392, mapID = 1417, label = "Kinelory", offMapText = "Travel to Kinelory in Arathi Highlands.", x = 0.6024 },
            },
            text = "Accept Hints of a New Plague? from Kinelory.",
            id = "accept-660-hints-of-a-new-plague",
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
                quest = { id = 660, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 657 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-660-reviewed-escort",
            kind = "objective",
            text = "Follow Kinelory and protect her while she investigates the farm. Keep her alive until the quest reports completion.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 657 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 660, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1417, x = 0.6024, y = 0.5392, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 13,
            dependsOn = { "accept-660-hints-of-a-new-plague" },
            priority = 170,
        },
        {
            priority = 180,
            text = "Turn in Hints of a New Plague? to Quae.",
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            dependsOn = { "accept-660-hints-of-a-new-plague", "objective-660-reviewed-escort" },
            id = "turnin-660-hints-of-a-new-plague",
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
                quest = { id = 660, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 657 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            text = "Accept Hints of a New Plague? from Quae.",
            id = "accept-661-hints-of-a-new-plague",
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
                quest = { id = 661, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 660 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-651-3-thundering-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Thundering Key.",
            complete = {
                questObjective = { id = 651, index = 3, text = "Thundering Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.5204, y = 0.5077, label = "Thundering Key", offMapText = "Travel to Thundering Key." },
            },
            sourceStep = 15,
            priority = 200,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            priority = 210,
            text = "Turn in Worth Its Weight in Gold to Apprentice Kryten.",
            route = {
                { y = 0.4775, mapID = 1417, label = "Apprentice Kryten", offMapText = "Travel to Apprentice Kryten in Arathi Highlands.", x = 0.462 },
            },
            dependsOn = {
                "accept-691-worth-its-weight-in-gold",
                "objective-691-3-witherbark-shadow-hunter",
                "objective-691-2-witherbark-medicine-pouch",
                "objective-691-1-witherbark-tusk",
            },
            id = "turnin-691-worth-its-weight-in-gold",
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
                quest = { id = 691, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Hints of a New Plague? to Phin Odelic.",
            route = {
                { y = 0.5904, mapID = 1424, label = "Phin Odelic", offMapText = "Travel to Phin Odelic in Hillsbrad Foothills.", x = 0.5034 },
            },
            dependsOn = { "accept-661-hints-of-a-new-plague" },
            id = "turnin-661-hints-of-a-new-plague",
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
                quest = { id = 661, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 660 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.5873, mapID = 1424, label = "Marshal Redpath", offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.", x = 0.4948 },
            },
            text = "Accept Crushridge Bounty from Marshal Redpath.",
            id = "accept-500-crushridge-bounty",
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
                quest = { id = 500, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            text = "Turn in Further Mysteries to Magistrate Henry Maleb.",
            id = "turnin-525-further-mysteries",
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
                quest = { id = 525, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 514 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            text = "Accept Dark Council from Magistrate Henry Maleb.",
            id = "accept-537-dark-council",
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
                quest = { id = 537, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            text = "Accept Noble Deaths from Magistrate Henry Maleb.",
            id = "accept-512-noble-deaths",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 512, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 510 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-602-magical-analysis",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 602,
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.7849, mapID = 1416, label = "Archmage Ansirem Runeweaver", offMapText = "Travel to Archmage Ansirem Runeweaver in Alterac Mountains.", x = 0.1884 },
            },
            text = "Turn in Magical Analysis to Archmage Ansirem Runeweaver.",
            id = "turnin-602-magical-analysis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 602, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            route = {
                { y = 0.7849, mapID = 1416, label = "Archmage Ansirem Runeweaver", offMapText = "Travel to Archmage Ansirem Runeweaver in Alterac Mountains.", x = 0.1884 },
            },
            text = "Accept Ansirem's Key from Archmage Ansirem Runeweaver.",
            id = "accept-603-ansirem-s-key",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 603, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 602 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Collect 1 Head of Nagaz.",
            route = {
                { y = 0.1431, mapID = 1416, label = "Nagaz", offMapText = "Travel to Nagaz.", x = 0.3922 },
            },
            dependsOn = { "accept-537-dark-council" },
            id = "objective-537-2-nagaz",
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
                questObjective = { id = 537, text = "Nagaz", index = 2, count = 1 },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-551-the-ensorcelled-parchment",
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
            text = "Loot Ensorcelled Parchment from Worn Wooden Chest. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ensorcelled Parchment", minCount = 1 },
                    },
                    {
                        quest = { id = 551, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 310,
        },
        {
            priority = 320,
            text = "Use the Ensorcelled Parchment to accept The Ensorcelled Parchment.",
            id = "accept-551-the-ensorcelled-parchment",
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
                quest = { id = 551, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Kill 4 Argus Shadow Mage.",
            route = {
                { y = 0.438, mapID = 1416, label = "Argus Shadow Mage", offMapText = "Travel to Argus Shadow Mage.", x = 0.634 },
            },
            dependsOn = { "accept-537-dark-council" },
            id = "objective-537-1-argus-shadow-mage",
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
                questObjective = { id = 537, text = "Argus Shadow Mage", index = 1, count = 4 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-512-1-alterac-signet-ring",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 7 Alterac Signet Ring.",
            complete = {
                questObjective = { id = 512, index = 1, text = "Alterac Signet Ring", count = 7 },
            },
            route = {
                { mapID = 1416, x = 0.622, y = 0.456, label = "Alterac Signet Ring", offMapText = "Travel to Alterac Signet Ring." },
            },
            sourceStep = 27,
            priority = 340,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 510 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-512-noble-deaths" },
        },
        {
            priority = 350,
            text = "Collect 9 Dirty Knucklebones.",
            route = {
                { y = 0.524, mapID = 1416, label = "Crushridge Ogre", offMapText = "Travel to Crushridge Ogre.", x = 0.544 },
            },
            dependsOn = { "accept-500-crushridge-bounty" },
            id = "objective-500-1-crushridge-ogre",
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
                questObjective = { id = 500, text = "Crushridge Ogre", index = 1, count = 9 },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Crushridge Bounty to Marshal Redpath.",
            route = {
                { y = 0.5873, mapID = 1424, label = "Marshal Redpath", offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.", x = 0.4948 },
            },
            dependsOn = { "accept-500-crushridge-bounty", "objective-500-1-crushridge-ogre" },
            id = "turnin-500-crushridge-bounty",
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
                quest = { id = 500, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Turn in Dark Council to Magistrate Henry Maleb.",
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            dependsOn = { "accept-537-dark-council", "objective-537-2-nagaz", "objective-537-1-argus-shadow-mage" },
            id = "turnin-537-dark-council",
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
                quest = { id = 537, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Noble Deaths to Magistrate Henry Maleb.",
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            dependsOn = { "accept-512-noble-deaths", "objective-512-1-alterac-signet-ring" },
            id = "turnin-512-noble-deaths",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 512, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 510 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Turn in The Ensorcelled Parchment to Loremaster Dibbs.",
            route = {
                { y = 0.5709, mapID = 1424, label = "Loremaster Dibbs", offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.", x = 0.5057 },
            },
            dependsOn = { "accept-551-the-ensorcelled-parchment" },
            id = "turnin-551-the-ensorcelled-parchment",
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
                quest = { id = 551, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-1449-to-the-hinterlands",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1449,
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.4676, mapID = 1425, label = "Falstad Wildhammer", offMapText = "Travel to Falstad Wildhammer in The Hinterlands.", x = 0.1181 },
            },
            text = "Turn in To The Hinterlands to Falstad Wildhammer.",
            id = "turnin-1449-to-the-hinterlands",
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
                quest = { id = 1449, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1448 },
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
                { y = 0.4676, mapID = 1425, label = "Falstad Wildhammer", offMapText = "Travel to Falstad Wildhammer in The Hinterlands.", x = 0.1181 },
            },
            text = "Accept Gryphon Master Talonaxe from Falstad Wildhammer.",
            id = "accept-1450-gryphon-master-talonaxe",
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
                quest = { id = 1450, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in Gryphon Master Talonaxe to Gryphon Master Talonaxe.",
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            dependsOn = { "accept-1450-gryphon-master-talonaxe" },
            id = "turnin-1450-gryphon-master-talonaxe",
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
                quest = { id = 1450, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            text = "Accept Rhapsody Shindigger from Gryphon Master Talonaxe.",
            id = "accept-1451-rhapsody-shindigger",
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
                quest = { id = 1451, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1450 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Turn in Rhapsody Shindigger to Rhapsody Shindigger.",
            route = {
                { mapID = 1425, x = 0.26940000000000003, y = 0.48590000000000005, label = "Rhapsody Shindigger", offMapText = "Travel to Rhapsody Shindigger in The Hinterlands." },
            },
            dependsOn = { "accept-1451-rhapsody-shindigger" },
            id = "turnin-1451-rhapsody-shindigger",
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
                quest = { id = 1451, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1450 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { mapID = 1425, x = 0.26940000000000003, y = 0.48590000000000005, label = "Rhapsody Shindigger", offMapText = "Travel to Rhapsody Shindigger in The Hinterlands." },
            },
            text = "Accept Rhapsody's Kalimdor Kocktail from Rhapsody Shindigger.",
            id = "accept-1452-rhapsody-s-kalimdor-kocktail",
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
                quest = { id = 1452, state = "activeOrCompleted" },
            },
            sourceStep = 34,
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
            priority = 470,
            route = {
                { y = 0.4701, mapID = 1417, label = "Skuerto", offMapText = "Travel to Skuerto in Arathi Highlands.", x = 0.4665 },
            },
            text = "Accept Wand over Fist from Skuerto.",
            id = "accept-693-wand-over-fist",
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
                quest = { id = 693, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 691 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Collect 1 Trelane's Wand of Invocation.",
            route = {
                { mapID = 1417, x = 0.5475, y = 0.8187000000000001, label = "Trelane's Wand of Invocation", offMapText = "Travel to Trelane's Wand of Invocation." },
            },
            dependsOn = { "accept-693-wand-over-fist" },
            id = "objective-693-1-kor-gresh-coldrage",
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
                questObjective = { id = 693, text = "Kor'gresh Coldrage", index = 1, count = 1 },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 691 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Turn in Wand over Fist to Skuerto.",
            route = {
                { mapID = 1417, x = 0.46649999999999997, y = 0.47009999999999996, label = "Skuerto", offMapText = "Travel to Skuerto in Arathi Highlands." },
            },
            dependsOn = { "accept-693-wand-over-fist", "objective-693-1-kor-gresh-coldrage" },
            id = "turnin-693-wand-over-fist",
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
                quest = { id = 693, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 691 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-651-1-burning-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Burning Key.",
            complete = {
                questObjective = { id = 651, index = 1, text = "Burning Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.2545, y = 0.3016, label = "Burning Key", offMapText = "Travel to Burning Key." },
            },
            sourceStep = 40,
            priority = 500,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            id = "level-before-objective-1712-3-essence-of-the-exile",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1712,
            priority = 510,
        },
        {
            id = "objective-1712-3-essence-of-the-exile",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Essence of the Exile.",
            complete = {
                questObjective = { id = 1712, index = 3, text = "Essence of the Exile", count = 1 },
            },
            route = {
                { mapID = 1416, x = 0.7931999999999999, y = 0.6681, label = "Essence of the Exile", offMapText = "Travel to Essence of the Exile." },
            },
            sourceStep = 43,
            priority = 520,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Turn in Cyclonian to Bath'rah the Windwatcher.",
            id = "turnin-1712-cyclonian",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1712, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1712-3-essence-of-the-exile" },
        },
        {
            priority = 540,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Accept The Summoning from Bath'rah the Windwatcher.",
            id = "accept-1713-the-summoning",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1713, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "For The Summoning: Bring the Whirlwind Heart to Bath'rah Windwatcher.",
            id = "objective-1713-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1713, state = "complete" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1713-the-summoning" },
        },
        {
            priority = 560,
            text = "Turn in The Summoning to Bath'rah the Windwatcher.",
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            dependsOn = { "accept-1713-the-summoning", "objective-1713-quest-work" },
            id = "turnin-1713-the-summoning",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1713, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Accept Whirlwind Weapon from Bath'rah the Windwatcher.",
            id = "accept-1792-whirlwind-weapon",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1792, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1713 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warrior-turnin-1792-whirlwind-weapon",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1792,
            priority = 580,
        },
        {
            priority = 590,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1792-whirlwind-weapon" },
            id = "woven-class-warrior-turnin-1792-whirlwind-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1792-whirlwind-weapon",
        },
        {
            priority = 600,
            text = "Turn in Stones of Binding.",
            route = {
                { y = 0.5737, mapID = 1417, label = "Stones of Binding", offMapText = "Travel to Stones of Binding.", x = 0.3619 },
            },
            dependsOn = {
                "accept-651-stones-of-binding",
                "objective-651-2-cresting-key",
                "objective-651-3-thundering-key",
                "objective-651-1-burning-key",
            },
            id = "turnin-651-stones-of-binding",
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
                quest = { id = 651, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-663-land-ho",
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
            checkpointQuest = 663,
            priority = 610,
        },
        {
            priority = 620,
            route = {
                { mapID = 1417, x = 0.3178, y = 0.8270000000000001, label = "Lolo the Lookout", offMapText = "Travel to Lolo the Lookout in Arathi Highlands." },
            },
            text = "Accept Land Ho! from Lolo the Lookout.",
            id = "accept-663-land-ho",
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
                quest = { id = 663, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in Land Ho! to Shakes O'Breen.",
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3228 },
            },
            dependsOn = { "accept-663-land-ho" },
            id = "turnin-663-land-ho",
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
                quest = { id = 663, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.8147, mapID = 1417, label = "First Mate Nilzlix", offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.", x = 0.3277 },
            },
            text = "Accept Deep Sea Salvage from First Mate Nilzlix.",
            id = "accept-662-deep-sea-salvage",
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
                quest = { id = 662, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            route = {
                { y = 0.8079, mapID = 1417, label = "Captain Steelgut", offMapText = "Travel to Captain Steelgut in Arathi Highlands.", x = 0.34 },
            },
            text = "Accept Drowned Sorrows from Captain Steelgut.",
            id = "accept-664-drowned-sorrows",
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
                quest = { id = 664, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            route = {
                { y = 0.8055, mapID = 1417, label = "Professor Phizzlethorpe", offMapText = "Travel to Professor Phizzlethorpe in Arathi Highlands.", x = 0.3387 },
            },
            text = "Accept Sunken Treasure from Professor Phizzlethorpe.",
            id = "accept-665-sunken-treasure",
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
                quest = { id = 665, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-665-reviewed-escort",
            kind = "objective",
            text = "Follow and defend Professor Phizzlethorpe while he searches the cave.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 665, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1417, x = 0.3387, y = 0.8055, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 54,
            dependsOn = { "accept-665-sunken-treasure" },
            priority = 670,
        },
        {
            priority = 680,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3386 },
            },
            dependsOn = { "accept-665-sunken-treasure", "objective-665-reviewed-escort" },
            id = "turnin-665-sunken-treasure",
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
                quest = { id = 665, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3386 },
            },
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            id = "accept-666-sunken-treasure",
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
                quest = { id = 666, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Collect 1 Maiden's Folly Log.",
            route = {
                { y = 0.851, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2341 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-2-elixir-of-water-breathing",
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
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 2, count = 1 },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Collect 1 Maiden's Folly Charts.",
            route = {
                { y = 0.8451, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2304 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-1-elixir-of-water-breathing",
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
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 1, count = 1 },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            text = "Collect 1 Spirit of Silverpine Charts.",
            route = {
                { y = 0.856, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2045 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-3-elixir-of-water-breathing",
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
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 3, count = 1 },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            text = "Collect 1 Spirit of Silverpine Log.",
            route = {
                { y = 0.851, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2065 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-4-elixir-of-water-breathing",
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
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 4, count = 1 },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-666-1-elven-gem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Collect 10 Elven Gem.",
            complete = {
                questObjective = { id = 666, index = 1, text = "Elven Gem", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.23600000000000002, y = 0.8740000000000001, label = "Elven Gem", offMapText = "Travel to Elven Gem." },
            },
            sourceStep = 60,
            priority = 740,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-666-sunken-treasure" },
        },
        {
            id = "objective-664-2-daggerspine-sorceress",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Kill 3 Daggerspine Sorceress.",
            complete = {
                questObjective = { id = 664, index = 2, text = "Daggerspine Sorceress", count = 3 },
            },
            route = {
                { mapID = 1417, x = 0.192, y = 0.84, label = "Daggerspine Sorceress", offMapText = "Travel to Daggerspine Sorceress." },
            },
            sourceStep = 62,
            priority = 750,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-664-drowned-sorrows" },
        },
        {
            id = "objective-664-1-daggerspine-raider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Kill 10 Daggerspine Raider.",
            complete = {
                questObjective = { id = 664, index = 1, text = "Daggerspine Raider", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.192, y = 0.84, label = "Daggerspine Raider", offMapText = "Travel to Daggerspine Raider." },
            },
            sourceStep = 62,
            priority = 760,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-664-drowned-sorrows" },
        },
        {
            priority = 770,
            text = "Turn in Deep Sea Salvage to First Mate Nilzlix.",
            route = {
                { y = 0.8148, mapID = 1417, label = "First Mate Nilzlix", offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.", x = 0.328 },
            },
            dependsOn = {
                "accept-662-deep-sea-salvage",
                "objective-662-2-elixir-of-water-breathing",
                "objective-662-1-elixir-of-water-breathing",
                "objective-662-3-elixir-of-water-breathing",
                "objective-662-4-elixir-of-water-breathing",
            },
            id = "turnin-662-deep-sea-salvage",
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
                quest = { id = 662, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "Turn in Drowned Sorrows to Captain Steelgut.",
            route = {
                { y = 0.8079, mapID = 1417, label = "Captain Steelgut", offMapText = "Travel to Captain Steelgut in Arathi Highlands.", x = 0.34 },
            },
            dependsOn = { "accept-664-drowned-sorrows", "objective-664-2-daggerspine-sorceress", "objective-664-1-daggerspine-raider" },
            id = "turnin-664-drowned-sorrows",
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
                quest = { id = 664, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3385 },
            },
            dependsOn = { "accept-666-sunken-treasure", "objective-666-1-elven-gem" },
            id = "turnin-666-sunken-treasure",
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
                quest = { id = 666, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3385 },
            },
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            id = "accept-668-sunken-treasure",
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
                quest = { id = 668, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 666 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            text = "Turn in Sunken Treasure to Shakes O'Breen.",
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3229 },
            },
            dependsOn = { "accept-668-sunken-treasure" },
            id = "turnin-668-sunken-treasure",
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
                quest = { id = 668, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 666 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3229 },
            },
            text = "Accept Sunken Treasure from Shakes O'Breen.",
            id = "accept-669-sunken-treasure",
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
                quest = { id = 669, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 668 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { y = 0.5709, mapID = 1424, label = "Loremaster Dibbs", offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.", x = 0.5057 },
            },
            text = "Accept Stormpike's Deciphering from Loremaster Dibbs.",
            id = "accept-554-stormpike-s-deciphering",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 554, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 551 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in Stormpike's Deciphering to Prospector Stormpike.",
            route = {
                { y = 0.1174, mapID = 1455, label = "Prospector Stormpike", offMapText = "Travel to Prospector Stormpike in Ironforge.", x = 0.7464 },
            },
            dependsOn = { "accept-554-stormpike-s-deciphering" },
            id = "turnin-554-stormpike-s-deciphering",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 554, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 551 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4487-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4487,
            alternativeQuests = { 3631, 4488, 4489 },
            priority = 850,
        },
        {
            priority = 860,
            route = {
                { y = 0.0566, mapID = 1455, label = "Briarthorn", offMapText = "Travel to Briarthorn in Ironforge.", x = 0.5035 },
            },
            text = "Accept Summon Felsteed from Briarthorn.",
            id = "accept-4487-summon-felsteed",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 4487, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            alternativeQuests = { 3631, 4488, 4489 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
