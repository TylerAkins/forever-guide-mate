local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Western & Eastern Plaguelands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-western-and-eastern-plaguelands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 57 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-3701-quest-work",
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
            checkpointQuest = 3701,
            priority = 10,
        },
        {
            priority = 20,
            text = "For The Smoldering Ruins of Thaurissan: Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics.",
            id = "objective-3701-quest-work",
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
                quest = { id = 3701, state = "complete" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3702 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { mapID = 1455, x = 0.3837, y = 0.5531, label = "Royal Historian Archesonus", offMapText = "Travel to Royal Historian Archesonus in Ironforge." },
            },
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus.",
            id = "turnin-3701-the-smoldering-ruins-of-thaurissan",
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
                quest = { id = 3701, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3702 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3701-quest-work" },
        },
        {
            priority = 40,
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            text = "Accept Target: Dalson's Tears from High Priestess MacDonnell.",
            id = "accept-5219-target-dalson-s-tears",
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
                quest = { id = 5219, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5217 },
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
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Accept All Along the Watchtowers from Commander Ashlam Valorfist.",
            id = "accept-5097-all-along-the-watchtowers",
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
                quest = { id = 5097, state = "activeOrCompleted" },
            },
            sourceStep = 8,
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
            priority = 60,
            route = {
                { y = 0.8355, mapID = 1422, label = "Argent Officer Pureheart", offMapText = "Travel to Argent Officer Pureheart in Western Plaguelands.", x = 0.4297 },
            },
            text = "Turn in The Everlook Report to Argent Officer Pureheart.",
            id = "turnin-6028-the-everlook-report",
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
                quest = { id = 6028, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-6184-flint-shadowmore",
            kind = "note",
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 56 },
            },
            requiredLevel = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6184,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.8451, mapID = 1422, label = "Flint Shadowmore", offMapText = "Travel to Flint Shadowmore in Western Plaguelands.", x = 0.4361 },
            },
            text = "Turn in Flint Shadowmore to Flint Shadowmore.",
            id = "turnin-6184-flint-shadowmore",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6184, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5142-little-pamela",
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
            checkpointQuest = 5142,
            alternativeQuests = { 5601 },
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { y = 0.7852, mapID = 1422, label = "Marlene Redpath", offMapText = "Travel to Marlene Redpath in Western Plaguelands.", x = 0.4913 },
            },
            text = "Accept Little Pamela from Marlene Redpath.",
            id = "accept-5142-little-pamela",
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
                quest = { id = 5142, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            alternativeQuests = { 5601 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.711, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.467 },
            },
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            id = "objective-5097-4-beacon-torch",
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
                questObjective = { id = 5097, text = "Beacon Torch", index = 4 },
            },
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
            id = "level-before-accept-4984-the-wildlife-suffers-too",
            kind = "note",
            text = "Reach level 51 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 51 },
            },
            requiredLevel = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4984,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            id = "accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4984, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4984-1-diseased-wolf",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
                { mapID = 1422, x = 0.442, y = 0.596, label = "Diseased Wolf", offMapText = "Travel to Diseased Wolf." },
            },
            sourceStep = 15,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4984-the-wildlife-suffers-too" },
        },
        {
            priority = 150,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.6337, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4422 },
            },
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            id = "objective-5097-3-beacon-torch",
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
                questObjective = { id = 5097, text = "Beacon Torch", index = 3 },
            },
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
            id = "level-before-accept-5058-mrs-dalson-s-diary",
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
            checkpointQuest = 5058,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.5067, mapID = 1422, label = "Mrs. Dalson's Diary", offMapText = "Travel to Mrs. Dalson's Diary.", x = 0.4779 },
            },
            text = "Accept Mrs. Dalson's Diary.",
            id = "accept-5058-mrs-dalson-s-diary",
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
                quest = { id = 5058, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.4927, mapID = 1422, label = "Wandering Skeleton", offMapText = "Travel to Wandering Skeleton.", x = 0.4834 },
            },
            text = "Kill Wandering Skeleton. Keep the required materials for the quest.",
            id = "objective-5060-1-wandering-skeleton",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 190,
            route = {
                { y = 0.4971, mapID = 1422, label = "Farmer Dalson", offMapText = "Travel to Farmer Dalson.", x = 0.4811 },
            },
            text = "Kill Farmer Dalson. Keep the required materials for the quest.",
            id = "objective-5060-1-farmer-dalson",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 200,
            route = {
                { y = 0.4965, mapID = 1422, label = "Locked Away", offMapText = "Travel to Locked Away.", x = 0.4737 },
            },
            text = "Accept Locked Away.",
            id = "accept-5060-locked-away",
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
                quest = { id = 5060, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            text = "Collect 1 Dalson's Tears Cauldron Key.",
            route = {
                { y = 0.5238, mapID = 1422, label = "Cauldron Lord Malvinious", offMapText = "Travel to Cauldron Lord Malvinious.", x = 0.4618 },
            },
            dependsOn = { "accept-5219-target-dalson-s-tears" },
            id = "objective-5219-1-cauldron-lord-malvinious",
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
                questObjective = { id = 5219, text = "Cauldron Lord Malvinious", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5217 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Target: Dalson's Tears.",
            route = {
                { y = 0.5202, mapID = 1422, label = "Target: Dalson's Tears", offMapText = "Travel to Target: Dalson's Tears.", x = 0.4618 },
            },
            dependsOn = { "accept-5219-target-dalson-s-tears", "objective-5219-1-cauldron-lord-malvinious" },
            id = "turnin-5219-target-dalson-s-tears",
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
                quest = { id = 5219, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5217 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.5202, mapID = 1422, label = "Return to Chillwind Camp", offMapText = "Travel to Chillwind Camp.", x = 0.4618 },
            },
            text = "Accept Return to Chillwind Camp.",
            id = "accept-5220-return-to-chillwind-camp",
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
                quest = { id = 5220, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5219 },
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
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            text = "Turn in Good Luck Charm to Janice Felstone.",
            id = "turnin-5050-good-luck-charm",
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
                quest = { id = 5050, state = "completed" },
            },
            sourceStep = 22,
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
            priority = 250,
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            text = "Accept Two Halves Become One from Janice Felstone.",
            id = "accept-5051-two-halves-become-one",
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
                quest = { id = 5051, state = "activeOrCompleted" },
            },
            sourceStep = 22,
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
            priority = 260,
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            route = {
                { mapID = 1422, x = 0.37799999999999995, y = 0.5760000000000001, label = "Jabbering Ghouls", offMapText = "Travel to Jabbering Ghouls." },
            },
            dependsOn = { "accept-5051-two-halves-become-one" },
            id = "objective-5051-1-jabbering-ghoul",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5051, index = 1, count = 1 },
            },
            sourceStep = 23,
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
            priority = 270,
            text = "Turn in Two Halves Become One to Janice Felstone.",
            route = {
                { y = 0.5405, mapID = 1422, label = "Janice Felstone", offMapText = "Travel to Janice Felstone in Western Plaguelands.", x = 0.384 },
            },
            dependsOn = { "accept-5051-two-halves-become-one", "objective-5051-1-jabbering-ghoul" },
            id = "turnin-5051-two-halves-become-one",
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
                quest = { id = 5051, state = "completed" },
            },
            sourceStep = 24,
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
            priority = 280,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.6627, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4244 },
            },
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            id = "objective-5097-2-beacon-torch",
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
                questObjective = { id = 5097, text = "Beacon Torch", index = 2 },
            },
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
            priority = 290,
            text = "Use Beacon Torch.",
            route = {
                { y = 0.7152, mapID = 1422, label = "Beacon Torch", offMapText = "Travel to Beacon Torch.", x = 0.4013 },
            },
            dependsOn = { "accept-5097-all-along-the-watchtowers" },
            id = "objective-5097-1-beacon-torch",
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
                questObjective = { id = 5097, text = "Beacon Torch", index = 1 },
            },
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
            priority = 300,
            text = "Turn in All Along the Watchtowers to Commander Ashlam Valorfist.",
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            dependsOn = {
                "accept-5097-all-along-the-watchtowers",
                "objective-5097-4-beacon-torch",
                "objective-5097-3-beacon-torch",
                "objective-5097-2-beacon-torch",
                "objective-5097-1-beacon-torch",
            },
            id = "turnin-5097-all-along-the-watchtowers",
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
                quest = { id = 5097, state = "completed" },
            },
            sourceStep = 27,
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
            priority = 310,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Accept Scholomance from Commander Ashlam Valorfist.",
            id = "accept-5533-scholomance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5533, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5097 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Turn in Scholomance to Alchemist Arbington.",
            route = {
                { y = 0.8377, mapID = 1422, label = "Alchemist Arbington", offMapText = "Travel to Alchemist Arbington in Western Plaguelands.", x = 0.4266 },
            },
            dependsOn = { "accept-5533-scholomance" },
            id = "turnin-5533-scholomance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5533, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5097 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            dependsOn = { "accept-5220-return-to-chillwind-camp" },
            id = "turnin-5220-return-to-chillwind-camp",
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
                quest = { id = 5220, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5219 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            text = "Accept Target: Writhing Haunt from High Priestess MacDonnell.",
            id = "accept-5222-target-writhing-haunt",
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
                quest = { id = 5222, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.8484, mapID = 1422, label = "Nathaniel Dumah", offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.", x = 0.4342 },
            },
            text = "Accept A Plague Upon Thee from Nathaniel Dumah.",
            id = "accept-5903-a-plague-upon-thee",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5903, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { y = 0.8451, mapID = 1422, label = "Flint Shadowmore", offMapText = "Travel to Flint Shadowmore in Western Plaguelands.", x = 0.4361 },
            },
            text = "Accept The Eastern Plagues from Flint Shadowmore.",
            id = "accept-6185-the-eastern-plagues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6185, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "Collect 1 Writhing Haunt Cauldron Key.",
            route = {
                { y = 0.6606, mapID = 1422, label = "Cauldron Lord Razarch", offMapText = "Travel to Cauldron Lord Razarch.", x = 0.5302 },
            },
            dependsOn = { "accept-5222-target-writhing-haunt" },
            id = "objective-5222-1-cauldron-lord-razarch",
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
                questObjective = { id = 5222, text = "Cauldron Lord Razarch", index = 1, count = 1 },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Target: Writhing Haunt.",
            route = {
                { y = 0.6572, mapID = 1422, label = "Target: Writhing Haunt", offMapText = "Travel to Target: Writhing Haunt.", x = 0.5302 },
            },
            dependsOn = { "accept-5222-target-writhing-haunt", "objective-5222-1-cauldron-lord-razarch" },
            id = "turnin-5222-target-writhing-haunt",
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
                quest = { id = 5222, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.6572, mapID = 1422, label = "Return to Chillwind Camp", offMapText = "Travel to Chillwind Camp.", x = 0.5302 },
            },
            text = "Accept Return to Chillwind Camp.",
            id = "accept-5223-return-to-chillwind-camp",
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
                quest = { id = 5223, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5222 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            dependsOn = { "accept-4984-the-wildlife-suffers-too", "objective-4984-1-diseased-wolf" },
            id = "turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4984, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            id = "accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4985, state = "activeOrCompleted" },
            },
            sourceStep = 35,
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
            priority = 420,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Demon Dogs from Tirion Fordring.",
            id = "accept-5542-demon-dogs",
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
                quest = { id = 5542, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Blood Tinged Skies from Tirion Fordring.",
            id = "accept-5543-blood-tinged-skies",
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
                quest = { id = 5543, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0756 },
            },
            text = "Accept Carrion Grubbage from Tirion Fordring.",
            id = "accept-5544-carrion-grubbage",
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
                quest = { id = 5544, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-6185-3-si-7-insignia-turyen",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 SI:7 Insignia (Turyen).",
            complete = {
                questObjective = { id = 6185, index = 3, text = "SI:7 Insignia (Turyen)", count = 1 },
            },
            route = {
                { mapID = 1423, x = 0.28809999999999997, y = 0.7487999999999999, label = "SI:7 Insignia (Turyen)", offMapText = "Travel to SI:7 Insignia (Turyen)." },
            },
            sourceStep = 37,
            priority = 450,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6185-the-eastern-plagues" },
        },
        {
            id = "objective-6185-2-si-7-insignia-fredo",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 SI:7 Insignia (Fredo).",
            complete = {
                questObjective = { id = 6185, index = 2, text = "SI:7 Insignia (Fredo)", count = 1 },
            },
            route = {
                { mapID = 1423, x = 0.2716, y = 0.7497, label = "SI:7 Insignia (Fredo)", offMapText = "Travel to SI:7 Insignia (Fredo)." },
            },
            sourceStep = 39,
            priority = 460,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6185-the-eastern-plagues" },
        },
        {
            id = "objective-6185-1-si-7-insignia-rutger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 SI:7 Insignia (Rutger).",
            complete = {
                questObjective = { id = 6185, index = 1, text = "SI:7 Insignia (Rutger)", count = 1 },
            },
            route = {
                { mapID = 1423, x = 0.28809999999999997, y = 0.7985, label = "SI:7 Insignia (Rutger)", offMapText = "Travel to SI:7 Insignia (Rutger)." },
            },
            sourceStep = 40,
            priority = 470,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6185-the-eastern-plagues" },
        },
        {
            priority = 480,
            text = "Turn in Little Pamela to Pamela Redpath.",
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            dependsOn = { "accept-5142-little-pamela" },
            id = "turnin-5142-little-pamela",
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
                quest = { id = 5142, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            alternativeQuests = { 5601 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Pamela's Doll from Pamela Redpath.",
            id = "accept-5149-pamela-s-doll",
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
                quest = { id = 5149, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Search the ruined houses of Darrowshire for Pamela's Doll's Head, Left Side and Right Side. Spirits attack when you take the pieces.",
            route = {
                { mapID = 1423, x = 0.381, y = 0.9229999999999999, label = "Darrowshire houses", offMapText = "Travel to Darrowshire houses." },
            },
            dependsOn = { "accept-5149-pamela-s-doll" },
            id = "objective-5149-1-pamela-s-doll-s-head",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceInstructionStep = 45,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            priority = 510,
            requiredQuests = {},
            useClientText = false,
            route = {
                { mapID = 1423, x = 0.381, y = 0.9229999999999999, label = "Darrowshire houses", offMapText = "Travel to Darrowshire houses." },
            },
        },
        {
            priority = 520,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5149, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Auntie Marlene from Pamela Redpath.",
            id = "accept-5152-auntie-marlene",
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
                quest = { id = 5152, state = "activeOrCompleted" },
            },
            sourceStep = 46,
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
            priority = 540,
            route = {
                { y = 0.908, mapID = 1423, label = "Pamela Redpath", offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.", x = 0.3645 },
            },
            text = "Accept Uncle Carlin from Pamela Redpath.",
            id = "accept-5241-uncle-carlin",
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
                quest = { id = 5241, state = "activeOrCompleted" },
            },
            sourceStep = 46,
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
                    { faction = "Alliance" },
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
            sourceStep = 47,
            priority = 550,
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
                    { faction = "Alliance" },
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
            sourceStep = 48,
            priority = 560,
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
                    { faction = "Alliance" },
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
            sourceStep = 48,
            priority = 570,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5543-blood-tinged-skies" },
        },
        {
            priority = 580,
            text = "Kill 5 Plaguehound.",
            route = {
                { y = 0.756, mapID = 1423, label = "Plaguehound", offMapText = "Travel to Plaguehound.", x = 0.68 },
            },
            dependsOn = { "accept-5542-demon-dogs" },
            id = "objective-5542-2-plaguehound",
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
                questObjective = { id = 5542, text = "Plaguehound", index = 2, count = 5 },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            text = "Accept Zaeldarr the Outcast from Caretaker Alen.",
            id = "accept-6021-zaeldarr-the-outcast",
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
                quest = { id = 6021, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5281-the-restless-souls",
            kind = "note",
            text = "Reach level 55 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 55 },
            },
            requiredLevel = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5281,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            text = "Accept The Restless Souls from Caretaker Alen.",
            id = "accept-5281-the-restless-souls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                },
            },
            complete = {
                quest = { id = 5281, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            route = {
                { y = 0.5982, mapID = 1423, label = "Duke Nicholas Zverenhoff", offMapText = "Travel to Duke Nicholas Zverenhoff in Eastern Plaguelands.", x = 0.8143 },
            },
            text = "Turn in Duke Nicholas Zverenhoff to Duke Nicholas Zverenhoff.",
            id = "turnin-6030-duke-nicholas-zverenhoff",
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
                quest = { id = 6030, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in Uncle Carlin to Carlin Redpath.",
            route = {
                { y = 0.5977, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5241-uncle-carlin" },
            id = "turnin-5241-uncle-carlin",
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
                quest = { id = 5241, state = "completed" },
            },
            sourceStep = 53,
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
            priority = 640,
            route = {
                { y = 0.5977, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            text = "Accept Defenders of Darrowshire from Carlin Redpath.",
            id = "accept-5211-defenders-of-darrowshire",
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
                quest = { id = 5211, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            route = {
                { mapID = 1452, x = 0.5088, y = 0.4171, label = "Second Relic Fragment", offMapText = "Travel to Second Relic Fragment." },
            },
            text = "For Troubled Spirits of Kel'Theril: Use Jaron's Pick to find the four Highborne Relic Fragments.",
            id = "objective-5245-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5245, state = "complete" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
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
                { y = 0.22, mapID = 1423, label = "Aurora Skycaller", offMapText = "Travel to Aurora Skycaller in Eastern Plaguelands.", x = 0.5351 },
            },
            text = "Turn in Troubled Spirits of Kel'Theril to Aurora Skycaller.",
            id = "turnin-5245-troubled-spirits-of-kel-theril",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5245, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-5245-quest-work" },
        },
        {
            priority = 670,
            text = "Collect 100 Plagueland Termites.",
            route = {
                { y = 0.341, mapID = 1423, label = "Large Termite Mound", offMapText = "Travel to Large Termite Mound.", x = 0.459 },
            },
            dependsOn = { "accept-5903-a-plague-upon-thee" },
            id = "objective-5903-1-large-termite-mound",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5903, text = "Large Termite Mound", index = 1, count = 100 },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            text = "Turn in The Restless Souls to Egan.",
            route = {
                { y = 0.3374, mapID = 1423, label = "Egan", offMapText = "Travel to Egan in Eastern Plaguelands.", x = 0.1445 },
            },
            dependsOn = { "accept-5281-the-restless-souls" },
            id = "turnin-5281-the-restless-souls",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                },
            },
            complete = {
                quest = { id = 5281, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.3348, mapID = 1423, label = "Augustus the Touched", offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.", x = 0.1445 },
            },
            text = "Accept Augustus' Receipt Book from Augustus the Touched.",
            id = "accept-6164-augustus-receipt-book",
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
                quest = { id = 6164, state = "activeOrCompleted" },
            },
            sourceStep = 59,
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
                    { faction = "Alliance" },
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
            sourceStep = 60,
            priority = 700,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6164-augustus-receipt-book" },
        },
        {
            priority = 710,
            text = "Turn in Augustus' Receipt Book to Augustus the Touched.",
            route = {
                { y = 0.3348, mapID = 1423, label = "Augustus the Touched", offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.", x = 0.1445 },
            },
            dependsOn = { "accept-6164-augustus-receipt-book", "objective-6164-1-augustus-receipt-book" },
            id = "turnin-6164-augustus-receipt-book",
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
                quest = { id = 6164, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5542-3-frenzied-plaguehound",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 62,
            priority = 720,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5542-demon-dogs" },
        },
        {
            priority = 730,
            text = "Collect 1 Zaeldarr's Head.",
            route = {
                { y = 0.8548, mapID = 1423, label = "Zaeldarr the Outcast", offMapText = "Travel to Zaeldarr the Outcast.", x = 0.2786 },
            },
            dependsOn = { "accept-6021-zaeldarr-the-outcast" },
            id = "objective-6021-1-zaeldarr-the-outcast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6021, text = "Zaeldarr the Outcast", index = 1, count = 1 },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5542, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Turn in Blood Tinged Skies to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5543-blood-tinged-skies", "objective-5543-1-plaguebat" },
            id = "turnin-5543-blood-tinged-skies",
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
                quest = { id = 5543, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            text = "Turn in Carrion Grubbage to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5544-carrion-grubbage", "objective-5544-1-slab-of-carrion-worm-meat" },
            id = "turnin-5544-carrion-grubbage",
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
                quest = { id = 5544, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            text = "Accept Redemption from Tirion Fordring.",
            id = "accept-5742-redemption",
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
                quest = { id = 5742, state = "activeOrCompleted" },
            },
            sourceStep = 65,
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
            priority = 780,
            text = "Speak with Tirion Fordring and tell him you are ready to hear his tale. Follow the conversation until the quest is ready to turn in.",
            id = "objective-5742-quest-work",
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
                quest = { id = 5742, state = "complete" },
            },
            sourceStep = 67,
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
            priority = 790,
            text = "Turn in Redemption to Tirion Fordring.",
            route = {
                { y = 0.437, mapID = 1423, label = "Tirion Fordring", offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.", x = 0.0757 },
            },
            dependsOn = { "accept-5742-redemption", "objective-5742-quest-work" },
            id = "turnin-5742-redemption",
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
                quest = { id = 5742, state = "completed" },
            },
            sourceStep = 67,
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
            priority = 800,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            dependsOn = { "accept-5223-return-to-chillwind-camp" },
            id = "turnin-5223-return-to-chillwind-camp",
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
                quest = { id = 5223, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5222 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            text = "Accept Target: Gahrron's Withering from High Priestess MacDonnell.",
            id = "accept-5225-target-gahrron-s-withering",
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
                quest = { id = 5225, state = "activeOrCompleted" },
            },
            sourceStep = 69,
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
            priority = 820,
            route = {
                { y = 0.8377, mapID = 1422, label = "Alchemist Arbington", offMapText = "Travel to Alchemist Arbington in Western Plaguelands.", x = 0.4266 },
            },
            text = "Accept Skeletal Fragments from Alchemist Arbington.",
            id = "accept-5537-skeletal-fragments",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5537, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            text = "Turn in The Eastern Plagues to Flint Shadowmore.",
            route = {
                { y = 0.8451, mapID = 1422, label = "Flint Shadowmore", offMapText = "Travel to Flint Shadowmore in Western Plaguelands.", x = 0.4361 },
            },
            dependsOn = {
                "accept-6185-the-eastern-plagues",
                "objective-6185-3-si-7-insignia-turyen",
                "objective-6185-2-si-7-insignia-fredo",
                "objective-6185-1-si-7-insignia-rutger",
            },
            id = "turnin-6185-the-eastern-plagues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6185, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 840,
            route = {
                { y = 0.8451, mapID = 1422, label = "Flint Shadowmore", offMapText = "Travel to Flint Shadowmore in Western Plaguelands.", x = 0.4361 },
            },
            text = "Accept The Blightcaller Cometh from Flint Shadowmore.",
            id = "accept-6186-the-blightcaller-cometh",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6186, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah.",
            route = {
                { y = 0.8484, mapID = 1422, label = "Nathaniel Dumah", offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.", x = 0.4342 },
            },
            dependsOn = { "accept-5903-a-plague-upon-thee", "objective-5903-1-large-termite-mound" },
            id = "turnin-5903-a-plague-upon-thee",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5903, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            route = {
                { y = 0.8484, mapID = 1422, label = "Nathaniel Dumah", offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.", x = 0.4342 },
            },
            text = "Accept A Plague Upon Thee from Nathaniel Dumah.",
            id = "accept-5904-a-plague-upon-thee",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5904, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            route = {
                { y = 0.7852, mapID = 1422, label = "Marlene Redpath", offMapText = "Travel to Marlene Redpath in Western Plaguelands.", x = 0.4913 },
            },
            dependsOn = { "accept-5152-auntie-marlene" },
            id = "turnin-5152-auntie-marlene",
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
                quest = { id = 5152, state = "completed" },
            },
            sourceStep = 74,
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
            priority = 880,
            route = {
                { y = 0.7852, mapID = 1422, label = "Marlene Redpath", offMapText = "Travel to Marlene Redpath in Western Plaguelands.", x = 0.4913 },
            },
            text = "Accept A Strange Historian from Marlene Redpath.",
            id = "accept-5153-a-strange-historian",
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
                quest = { id = 5153, state = "activeOrCompleted" },
            },
            sourceStep = 74,
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
                    { faction = "Alliance" },
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
            sourceStep = 75,
            priority = 890,
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
            id = "objective-5537-1-skeletal-fragments",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 15 Skeletal Fragments.",
            complete = {
                questObjective = { id = 5537, index = 1, text = "Skeletal Fragments", count = 15 },
            },
            route = {
                { mapID = 1422, x = 0.508, y = 0.794, label = "Skeletal Fragments", offMapText = "Travel to Skeletal Fragments." },
            },
            sourceStep = 76,
            priority = 900,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5537-skeletal-fragments" },
        },
        {
            priority = 910,
            text = "Turn in A Strange Historian to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-5153-a-strange-historian", "objective-5153-1-joseph-s-wedding-ring" },
            id = "turnin-5153-a-strange-historian",
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
                quest = { id = 5153, state = "completed" },
            },
            sourceStep = 77,
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
            priority = 920,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept The Annals of Darrowshire from Chromie.",
            id = "accept-5154-the-annals-of-darrowshire",
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
                quest = { id = 5154, state = "activeOrCompleted" },
            },
            sourceStep = 77,
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
            priority = 930,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept A Matter of Time from Chromie.",
            id = "accept-4971-a-matter-of-time",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4971, state = "activeOrCompleted" },
            },
            sourceStep = 77,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5154-1-annals-of-darrowshire",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 79,
            priority = 940,
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
            priority = 950,
            text = "Use the Temporal Displacer beside the ruined silos in Andorhal to reveal Temporal Parasites. Kill 10 Temporal Parasites.",
            route = {
                { y = 0.63, mapID = 1422, label = "Temporal Displacer", offMapText = "Travel to Temporal Displacer.", x = 0.45 },
            },
            dependsOn = { "accept-4971-a-matter-of-time" },
            id = "objective-4971-1-temporal-displacer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4971, index = 1, count = 10 },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-5154-the-annals-of-darrowshire", "objective-5154-1-annals-of-darrowshire" },
            id = "turnin-5154-the-annals-of-darrowshire",
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
                quest = { id = 5154, state = "completed" },
            },
            sourceStep = 81,
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
            priority = 970,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept Brother Carlin from Chromie.",
            id = "accept-5210-brother-carlin",
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
                quest = { id = 5210, state = "activeOrCompleted" },
            },
            sourceStep = 81,
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
            priority = 980,
            text = "Turn in A Matter of Time to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-4971-a-matter-of-time", "objective-4971-1-temporal-displacer" },
            id = "turnin-4971-a-matter-of-time",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4971, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            text = "Accept Counting Out Time from Chromie.",
            id = "accept-4972-counting-out-time",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4972, state = "activeOrCompleted" },
            },
            sourceStep = 81,
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
                    { faction = "Alliance" },
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
            sourceStep = 83,
            priority = 1000,
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
            priority = 1010,
            text = "Turn in Counting Out Time to Chromie.",
            route = {
                { y = 0.6676, mapID = 1422, label = "Chromie", offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945 },
            },
            dependsOn = { "accept-4972-counting-out-time", "objective-4972-1-andorhal-watch" },
            id = "turnin-4972-counting-out-time",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                },
            },
            complete = {
                quest = { id = 4972, state = "completed" },
            },
            sourceStep = 84,
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
            priority = 1020,
            text = "Turn in Skeletal Fragments to Alchemist Arbington.",
            route = {
                { y = 0.8377, mapID = 1422, label = "Alchemist Arbington", offMapText = "Travel to Alchemist Arbington in Western Plaguelands.", x = 0.4266 },
            },
            dependsOn = { "accept-5537-skeletal-fragments", "objective-5537-1-skeletal-fragments" },
            id = "turnin-5537-skeletal-fragments",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 55 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5537, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            text = "Turn in Brother Carlin to Carlin Redpath.",
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5210-brother-carlin" },
            id = "turnin-5210-brother-carlin",
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
                quest = { id = 5210, state = "completed" },
            },
            sourceStep = 86,
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
            priority = 1040,
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            text = "Accept Villains of Darrowshire from Carlin Redpath.",
            id = "accept-5181-villains-of-darrowshire",
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
                quest = { id = 5181, state = "activeOrCompleted" },
            },
            sourceStep = 86,
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
            priority = 1050,
            text = "Kill Cannibal Ghouls, Diseased Flayers and Gibbering Ghouls in Eastern Plaguelands. Speak with the Darrowshire Spirits that appear at their corpses to free them. Continue until the quest log reports enough freed spirits.",
            id = "objective-5211-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5211, state = "complete" },
            },
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5211-defenders-of-darrowshire" },
            route = {
                { mapID = 1423, x = 0.67, y = 0.408, label = "Darrowshire ghouls", offMapText = "Travel to Darrowshire ghouls." },
            },
        },
        {
            priority = 1060,
            text = "Turn in Defenders of Darrowshire to Carlin Redpath.",
            route = {
                { y = 0.5976, mapID = 1423, label = "Carlin Redpath", offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.", x = 0.8152 },
            },
            dependsOn = { "accept-5211-defenders-of-darrowshire", "objective-5211-quest-work" },
            id = "turnin-5211-defenders-of-darrowshire",
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
                quest = { id = 5211, state = "completed" },
            },
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            text = "Turn in Zaeldarr the Outcast to Caretaker Alen.",
            route = {
                { y = 0.6377, mapID = 1423, label = "Caretaker Alen", offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.", x = 0.7954 },
            },
            dependsOn = { "accept-6021-zaeldarr-the-outcast", "objective-6021-1-zaeldarr-the-outcast" },
            id = "turnin-6021-zaeldarr-the-outcast",
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
                quest = { id = 6021, state = "completed" },
            },
            sourceStep = 88,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1080,
            text = "Collect 1 Skull of Horgus.",
            route = {
                { y = 0.4993, mapID = 1423, label = "Horgus' Skull", offMapText = "Travel to Horgus' Skull.", x = 0.5111 },
            },
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            id = "objective-5181-1-horgus-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5181, text = "Horgus' Skull", index = 1, count = 1 },
            },
            sourceStep = 89,
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
            priority = 1090,
            text = "Collect 1 Shattered Sword of Marduk.",
            route = {
                { y = 0.6576, mapID = 1423, label = "Shattered Sword of Marduk", offMapText = "Travel to Shattered Sword of Marduk.", x = 0.5391 },
            },
            dependsOn = { "accept-5181-villains-of-darrowshire" },
            id = "objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5181, text = "Shattered Sword of Marduk", index = 2, count = 1 },
            },
            sourceStep = 90,
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
            priority = 1100,
            text = "Collect 1 Gahrron's Withering Cauldron Key.",
            route = {
                { y = 0.5875, mapID = 1422, label = "Cauldron Lord Soulwrath", offMapText = "Travel to Cauldron Lord Soulwrath.", x = 0.6278 },
            },
            dependsOn = { "accept-5225-target-gahrron-s-withering" },
            id = "objective-5225-1-cauldron-lord-soulwrath",
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
                questObjective = { id = 5225, text = "Cauldron Lord Soulwrath", index = 1, count = 1 },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
            text = "Turn in Target: Gahrron's Withering.",
            route = {
                { y = 0.5857, mapID = 1422, label = "Target: Gahrron's Withering", offMapText = "Travel to Target: Gahrron's Withering.", x = 0.6256 },
            },
            dependsOn = { "accept-5225-target-gahrron-s-withering", "objective-5225-1-cauldron-lord-soulwrath" },
            id = "turnin-5225-target-gahrron-s-withering",
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
                quest = { id = 5225, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            route = {
                { y = 0.5857, mapID = 1422, label = "Return to Chillwind Point", offMapText = "Travel to Chillwind Point.", x = 0.6256 },
            },
            text = "Accept Return to Chillwind Point.",
            id = "accept-5226-return-to-chillwind-point",
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
                quest = { id = 5226, state = "activeOrCompleted" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5225 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4985-1-diseased-grizzly",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
                { mapID = 1422, x = 0.598, y = 0.602, label = "Diseased Grizzly", offMapText = "Travel to Diseased Grizzly." },
            },
            sourceStep = 93,
            priority = 1130,
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
            priority = 1140,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            dependsOn = { "accept-4985-the-wildlife-suffers-too", "objective-4985-1-diseased-grizzly" },
            id = "turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 4985, state = "completed" },
            },
            sourceStep = 94,
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
            priority = 1150,
            route = {
                { y = 0.6467, mapID = 1422, label = "Mulgris Deepriver", offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.", x = 0.5372 },
            },
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver.",
            id = "accept-4986-glyphed-oaken-branch",
            kind = "accept",
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
                quest = { id = 4986, state = "activeOrCompleted" },
            },
            sourceStep = 94,
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
            priority = 1160,
            text = "Turn in A Plague Upon Thee.",
            route = {
                { y = 0.32, mapID = 1422, label = "A Plague Upon Thee", offMapText = "Travel to A Plague Upon Thee.", x = 0.4835 },
            },
            dependsOn = { "accept-5904-a-plague-upon-thee" },
            id = "turnin-5904-a-plague-upon-thee",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5904, state = "completed" },
            },
            sourceStep = 95,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            route = {
                { y = 0.32, mapID = 1422, label = "A Plague Upon Thee", offMapText = "Travel to A Plague Upon Thee.", x = 0.4835 },
            },
            text = "Accept A Plague Upon Thee.",
            id = "accept-6389-a-plague-upon-thee",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6389, state = "activeOrCompleted" },
            },
            sourceStep = 95,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5904 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1180,
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            id = "accept-6004-unfinished-business",
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
                quest = { id = 6004, state = "activeOrCompleted" },
            },
            sourceStep = 96,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1190,
            text = "Kill 2 Scarlet Mage.",
            route = {
                { y = 0.4112, mapID = 1422, label = "Scarlet Mage", offMapText = "Travel to Scarlet Mage.", x = 0.5047 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-3-scarlet-mage",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Mage", index = 3, count = 2 },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1200,
            text = "Kill 2 Scarlet Knight.",
            route = {
                { y = 0.4112, mapID = 1422, label = "Scarlet Knight", offMapText = "Travel to Scarlet Knight.", x = 0.5047 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-4-scarlet-knight",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Knight", index = 4, count = 2 },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            text = "Kill 2 Scarlet Medic.",
            route = {
                { y = 0.446, mapID = 1422, label = "Scarlet Medic", offMapText = "Travel to Scarlet Medic.", x = 0.516 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-1-scarlet-medic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Medic", index = 1, count = 2 },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1220,
            text = "Kill 2 Scarlet Hunter.",
            route = {
                { y = 0.446, mapID = 1422, label = "Scarlet Hunter", offMapText = "Travel to Scarlet Hunter.", x = 0.516 },
            },
            dependsOn = { "accept-6004-unfinished-business" },
            id = "objective-6004-2-scarlet-hunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6004, text = "Scarlet Hunter", index = 2, count = 2 },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 6004, state = "completed" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1240,
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            id = "accept-6023-unfinished-business",
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
                quest = { id = 6023, state = "activeOrCompleted" },
            },
            sourceStep = 99,
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
            priority = 1250,
            text = "Kill Huntsman Radley.",
            route = {
                { y = 0.3609, mapID = 1422, label = "Huntsman Radley", offMapText = "Travel to Huntsman Radley.", x = 0.5783 },
            },
            dependsOn = { "accept-6023-unfinished-business" },
            id = "objective-6023-1-huntsman-radley",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6023, text = "Huntsman Radley", index = 1 },
            },
            sourceStep = 100,
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
            priority = 1260,
            text = "Kill Cavalier Durgen.",
            route = {
                { y = 0.2365, mapID = 1422, label = "Cavalier Durgen", offMapText = "Travel to Cavalier Durgen.", x = 0.5471 },
            },
            dependsOn = { "accept-6023-unfinished-business" },
            id = "objective-6023-2-cavalier-durgen",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6023, text = "Cavalier Durgen", index = 2 },
            },
            sourceStep = 101,
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
            priority = 1270,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            route = {
                { y = 0.2806, mapID = 1422, label = "Kirsta Deepshadow", offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.", x = 0.5192 },
            },
            dependsOn = { "accept-6023-unfinished-business", "objective-6023-1-huntsman-radley", "objective-6023-2-cavalier-durgen" },
            id = "turnin-6023-unfinished-business",
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
                quest = { id = 6023, state = "completed" },
            },
            sourceStep = 102,
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
            priority = 1280,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5181, state = "completed" },
            },
            sourceStep = 103,
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
            priority = 1290,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah.",
            route = {
                { y = 0.8483, mapID = 1422, label = "Nathaniel Dumah", offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.", x = 0.4342 },
            },
            dependsOn = { "accept-6389-a-plague-upon-thee" },
            id = "turnin-6389-a-plague-upon-thee",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6389, state = "completed" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5904 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1300,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            route = {
                { y = 0.845, mapID = 1422, label = "High Priestess MacDonnell", offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.", x = 0.4297 },
            },
            dependsOn = { "accept-5226-return-to-chillwind-point" },
            id = "turnin-5226-return-to-chillwind-camp",
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
                quest = { id = 5226, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5225 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1310,
            route = {
                { y = 0.8403, mapID = 1422, label = "Commander Ashlam Valorfist", offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.", x = 0.427 },
            },
            text = "Accept Mission Accomplished! from Commander Ashlam Valorfist.",
            id = "accept-5237-mission-accomplished",
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
                quest = { id = 5237, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5226 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            route = {
                { y = 0.4732, mapID = 1455, label = "Cenarion Emissary Jademoon", offMapText = "Travel to Cenarion Emissary Jademoon in Ironforge.", x = 0.5854 },
            },
            text = "Accept Taking Back Silithus from Cenarion Emissary Jademoon.",
            id = "accept-8275-taking-back-silithus",
            kind = "accept",
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
                quest = { id = 8275, state = "activeOrCompleted" },
            },
            sourceStep = 108,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1330,
            text = "Turn in The Blightcaller Cometh to Highlord Bolvar Fordragon.",
            route = {
                { mapID = 1453, x = 0.7822, y = 0.17980000000000002, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City." },
            },
            dependsOn = { "accept-6186-the-blightcaller-cometh" },
            id = "turnin-6186-the-blightcaller-cometh",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6186, state = "completed" },
            },
            sourceStep = 120,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6185 },
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
