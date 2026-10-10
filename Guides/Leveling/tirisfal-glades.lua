local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Undead Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-tirisfal-glades",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.7165, mapID = 1420, label = "Undertaker Mordo", offMapText = "Travel to Undertaker Mordo in Tirisfal Glades.", x = 0.3022 },
            },
            text = "Accept Rude Awakening from Undertaker Mordo.",
            id = "accept-363-rude-awakening",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 363, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 20,
            text = "Turn in Rude Awakening to Shadow Priest Sarvis.",
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            dependsOn = { "accept-363-rude-awakening" },
            id = "turnin-363-rude-awakening",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 363, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 30,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            id = "accept-364-the-mindless-ones",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 6,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-364-the-mindless-ones",
        },
        {
            priority = 40,
            route = {
                { y = 0.6641, mapID = 1420, label = "Venya Marthand", offMapText = "Travel to Venya Marthand in Tirisfal Glades.", x = 0.3098 },
            },
            text = "Accept Piercing the Veil from Venya Marthand.",
            id = "accept-1470-piercing-the-veil",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1470, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            alternativeQuests = { 1485 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "Collect 3 Rattlecage Skull.",
            route = {
                { y = 0.626, mapID = 1420, label = "Rattlecage Skeleton", offMapText = "Travel to Rattlecage Skeleton.", x = 0.322 },
            },
            dependsOn = { "accept-1470-piercing-the-veil" },
            id = "objective-1470-1-rattlecage-skeleton",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1470, text = "Rattlecage Skeleton", index = 1, count = 3 },
            },
            sourceStep = 9,
            requiredQuests = {},
            alternativeQuests = { 1485 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 60,
            text = "Turn in Piercing the Veil to Venya Marthand.",
            route = {
                { y = 0.6641, mapID = 1420, label = "Venya Marthand", offMapText = "Travel to Venya Marthand in Tirisfal Glades.", x = 0.3098 },
            },
            dependsOn = { "accept-1470-piercing-the-veil", "objective-1470-1-rattlecage-skeleton" },
            id = "turnin-1470-piercing-the-veil",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1470, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            alternativeQuests = { 1485 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            route = {
                { mapID = 1420, x = 0.326, y = 0.634, label = "Mindless Zombie", offMapText = "Travel to Mindless Zombie." },
            },
            id = "objective-364-1-duskbat",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-1-duskbat",
        },
        {
            id = "objective-364-2-wretched-zombie",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            route = {
                { mapID = 1420, x = 0.326, y = 0.634, label = "Wretched Zombie", offMapText = "Travel to Wretched Zombie." },
            },
            sourceStep = 13,
            priority = 80,
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
            priority = 90,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            dependsOn = { "accept-364-the-mindless-ones", "objective-364-1-duskbat", "objective-364-2-wretched-zombie" },
            id = "turnin-364-the-mindless-ones",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 14,
            useClientPin = false,
            classAction = "turnin-364-the-mindless-ones",
        },
        {
            priority = 100,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Simple Scroll from Shadow Priest Sarvis.",
            id = "accept-3095-simple-scroll",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3095, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Tainted Scroll from Shadow Priest Sarvis.",
            id = "accept-3099-tainted-scroll",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3099, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Encrypted Scroll from Shadow Priest Sarvis.",
            id = "accept-3096-encrypted-scroll",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3096, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Hallowed Scroll from Shadow Priest Sarvis.",
            id = "accept-3097-hallowed-scroll",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3097, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Glyphic Scroll from Shadow Priest Sarvis.",
            id = "accept-3098-glyphic-scroll",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3098, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
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
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            text = "Accept Rattling the Rattlecages from Shadow Priest Sarvis.",
            id = "accept-3901-rattling-the-rattlecages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3901, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-376-the-damned",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 376,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.6605, mapID = 1420, label = "Novice Elreth", offMapText = "Travel to Novice Elreth in Tirisfal Glades.", x = 0.3086 },
            },
            text = "Accept The Damned from Novice Elreth.",
            id = "accept-376-the-damned",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 376, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Read Glyphic Scroll in your bags. Turn in Glyphic Scroll to Isabella.",
            route = {
                { y = 0.6606, mapID = 1420, label = "Isabella", offMapText = "Travel to Isabella in Tirisfal Glades.", x = 0.3094 },
            },
            dependsOn = { "accept-3098-glyphic-scroll" },
            id = "turnin-3098-glyphic-scroll",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3098, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Read Tainted Scroll in your bags. Turn in Tainted Scroll to Maximillion.",
            route = {
                { y = 0.6634, mapID = 1420, label = "Maximillion", offMapText = "Travel to Maximillion in Tirisfal Glades.", x = 0.3091 },
            },
            dependsOn = { "accept-3099-tainted-scroll" },
            id = "turnin-3099-tainted-scroll",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3099, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Read Hallowed Scroll in your bags. Turn in Hallowed Scroll to Dark Cleric Duesten.",
            route = {
                { y = 0.6603, mapID = 1420, label = "Dark Cleric Duesten", offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades.", x = 0.3111 },
            },
            dependsOn = { "accept-3097-hallowed-scroll" },
            id = "turnin-3097-hallowed-scroll",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3097, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Kill 12 Rattlecage Skeleton.",
            route = {
                { y = 0.626, mapID = 1420, label = "Rattlecage Skeleton", offMapText = "Travel to Rattlecage Skeleton.", x = 0.322 },
            },
            dependsOn = { "accept-3901-rattling-the-rattlecages" },
            id = "objective-3901-1-rattlecage-skeleton",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3901, text = "Rattlecage Skeleton", index = 1, count = 12 },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-376-1-scavenger-paw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Scavenger Paw.",
            complete = {
                questObjective = { id = 376, index = 1, text = "Scavenger Paw", count = 6 },
            },
            route = {
                { mapID = 1420, x = 0.314, y = 0.584, label = "Scavenger Paw", offMapText = "Travel to Scavenger Paw." },
            },
            sourceStep = 22,
            priority = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-376-the-damned" },
        },
        {
            id = "objective-376-2-duskbat-wing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Duskbat Wing.",
            complete = {
                questObjective = { id = 376, index = 2, text = "Duskbat Wing", count = 6 },
            },
            route = {
                { mapID = 1420, x = 0.314, y = 0.584, label = "Duskbat Wing", offMapText = "Travel to Duskbat Wing." },
            },
            sourceStep = 23,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-376-the-damned" },
        },
        {
            priority = 240,
            text = "Turn in The Damned to Novice Elreth.",
            route = {
                { y = 0.6605, mapID = 1420, label = "Novice Elreth", offMapText = "Travel to Novice Elreth in Tirisfal Glades.", x = 0.3086 },
            },
            dependsOn = { "accept-376-the-damned", "objective-376-1-scavenger-paw", "objective-376-2-duskbat-wing" },
            id = "turnin-376-the-damned",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 376, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6395-marla-s-last-wish",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 3 },
            },
            requiredLevel = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6395,
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { y = 0.6605, mapID = 1420, label = "Novice Elreth", offMapText = "Travel to Novice Elreth in Tirisfal Glades.", x = 0.3086 },
            },
            text = "Accept Marla's Last Wish from Novice Elreth.",
            id = "accept-6395-marla-s-last-wish",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6395, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Turn in Rattling the Rattlecages to Shadow Priest Sarvis.",
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3083 },
            },
            dependsOn = { "accept-3901-rattling-the-rattlecages", "objective-3901-1-rattlecage-skeleton" },
            id = "turnin-3901-rattling-the-rattlecages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3901, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            text = "Accept Night Web's Hollow from Executor Arren.",
            id = "accept-380-night-web-s-hollow",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 380, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Read Simple Scroll in your bags. Turn in Simple Scroll to Dannal Stern.",
            route = {
                { y = 0.6556, mapID = 1420, label = "Dannal Stern", offMapText = "Travel to Dannal Stern in Tirisfal Glades.", x = 0.3269 },
            },
            dependsOn = { "accept-3095-simple-scroll" },
            id = "turnin-3095-simple-scroll",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3095, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Read Encrypted Scroll in your bags. Turn in Encrypted Scroll to David Trias.",
            route = {
                { y = 0.6565, mapID = 1420, label = "David Trias", offMapText = "Travel to David Trias in Tirisfal Glades.", x = 0.3253 },
            },
            dependsOn = { "accept-3096-encrypted-scroll" },
            id = "turnin-3096-encrypted-scroll",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 3096, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.656, mapID = 1420, label = "Deathguard Saltain", offMapText = "Travel to Deathguard Saltain in Tirisfal Glades.", x = 0.3161 },
            },
            text = "Accept Scavenging Deathknell from Deathguard Saltain.",
            id = "accept-3902-scavenging-deathknell",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3902, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Collect 6 Scavenged Goods.",
            route = {
                { y = 0.659, mapID = 1420, label = "Scavenged Goods", offMapText = "Travel to Scavenged Goods.", x = 0.336 },
            },
            dependsOn = { "accept-3902-scavenging-deathknell" },
            id = "objective-3902-1-scavenged-goods",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3902, text = "Scavenged Goods", index = 1, count = 6 },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Kill 10 Young Night Web Spider.",
            route = {
                { y = 0.596, mapID = 1420, label = "Young Night Web Spider", offMapText = "Travel to Young Night Web Spider.", x = 0.292 },
            },
            dependsOn = { "accept-380-night-web-s-hollow" },
            id = "objective-380-1-young-night-web-spider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 380, text = "Young Night Web Spider", index = 1, count = 10 },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Kill 8 Night Web Spider.",
            route = {
                { y = 0.5941, mapID = 1420, label = "Night Web Spider", offMapText = "Travel to Night Web Spider.", x = 0.2684 },
            },
            dependsOn = { "accept-380-night-web-s-hollow" },
            id = "objective-380-2-night-web-spider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 380, text = "Night Web Spider", index = 2, count = 8 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Turn in Scavenging Deathknell to Deathguard Saltain.",
            route = {
                { mapID = 1420, x = 0.3161, y = 0.6559999999999999, label = "Deathguard Saltain", offMapText = "Travel to Deathguard Saltain in Tirisfal Glades." },
            },
            dependsOn = { "accept-3902-scavenging-deathknell", "objective-3902-1-scavenged-goods" },
            id = "turnin-3902-scavenging-deathknell",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3902, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Night Web's Hollow to Executor Arren.",
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            dependsOn = { "accept-380-night-web-s-hollow", "objective-380-1-young-night-web-spider", "objective-380-2-night-web-spider" },
            id = "turnin-380-night-web-s-hollow",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 380, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            text = "Accept The Scarlet Crusade from Executor Arren.",
            id = "accept-381-the-scarlet-crusade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 381, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 380 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Collect 12 Scarlet Armband.",
            route = {
                { y = 0.658, mapID = 1420, label = "Scarlet Convert", offMapText = "Travel to Scarlet Convert.", x = 0.354 },
            },
            dependsOn = { "accept-381-the-scarlet-crusade" },
            id = "objective-381-1-scarlet-convert",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 381, text = "Scarlet Convert", index = 1, count = 12 },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 380 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Kill Samuel Fipps.",
            route = {
                { y = 0.6157, mapID = 1420, label = "Samuel Fipps", offMapText = "Travel to Samuel Fipps.", x = 0.3668 },
            },
            dependsOn = { "accept-6395-marla-s-last-wish" },
            id = "objective-6395-1-samuel-fipps",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6395, text = "Samuel Fipps", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in Marla's Last Wish to Novice Elreth.",
            route = {
                { y = 0.6605, mapID = 1420, label = "Novice Elreth", offMapText = "Travel to Novice Elreth in Tirisfal Glades.", x = 0.3086 },
            },
            dependsOn = { "accept-6395-marla-s-last-wish", "objective-6395-1-samuel-fipps" },
            id = "turnin-6395-marla-s-last-wish",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6395, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 376 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5651-in-favor-of-darkness",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5651,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { y = 0.6603, mapID = 1420, label = "Dark Cleric Duesten", offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades.", x = 0.3111 },
            },
            text = "Accept In Favor of Darkness from Dark Cleric Duesten.",
            id = "accept-5651-in-favor-of-darkness",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5651, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in The Scarlet Crusade to Executor Arren.",
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            dependsOn = { "accept-381-the-scarlet-crusade", "objective-381-1-scarlet-convert" },
            id = "turnin-381-the-scarlet-crusade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 381, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 380 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            text = "Accept The Red Messenger from Executor Arren.",
            id = "accept-382-the-red-messenger",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 382, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 381 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Collect 1 Scarlet Crusade Documents.",
            route = {
                { y = 0.688, mapID = 1420, label = "Meven Korgal", offMapText = "Travel to Meven Korgal.", x = 0.3651 },
            },
            dependsOn = { "accept-382-the-red-messenger" },
            id = "objective-382-1-meven-korgal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 382, text = "Meven Korgal", index = 1, count = 1 },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 381 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Turn in The Red Messenger to Executor Arren.",
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            dependsOn = { "accept-382-the-red-messenger", "objective-382-1-meven-korgal" },
            id = "turnin-382-the-red-messenger",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 382, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 381 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.6601, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren in Tirisfal Glades.", x = 0.3215 },
            },
            text = "Accept Vital Intelligence from Executor Arren.",
            id = "accept-383-vital-intelligence",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 383, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            route = {
                { y = 0.5679, mapID = 1420, label = "Calvin Montague", offMapText = "Travel to Calvin Montague in Tirisfal Glades.", x = 0.3823 },
            },
            text = "Accept A Rogue's Deal from Calvin Montague.",
            id = "accept-8-a-rogue-s-deal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 8, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-365-fields-of-grief",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 365,
            priority = 490,
        },
        {
            priority = 500,
            route = {
                { y = 0.5416, mapID = 1420, label = "Deathguard Simmer", offMapText = "Travel to Deathguard Simmer in Tirisfal Glades.", x = 0.4091 },
            },
            text = "Accept Fields of Grief from Deathguard Simmer.",
            id = "accept-365-fields-of-grief",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 365, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5481-gordo-s-task",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5481,
            priority = 510,
        },
        {
            priority = 520,
            text = "Accept Gordo's Task from Gordo.",
            id = "accept-5481-gordo-s-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5481, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.5144, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept A Putrid Task from Deathguard Dillinger.",
            id = "accept-404-a-putrid-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 404, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-367-a-new-plague",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 367,
            priority = 540,
        },
        {
            priority = 550,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-367-a-new-plague",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 367, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Vital Intelligence to Executor Zygand.",
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            dependsOn = { "accept-383-vital-intelligence" },
            id = "turnin-383-vital-intelligence",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 383, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 382 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            text = "Accept At War With The Scarlet Crusade from Executor Zygand.",
            id = "accept-427-at-war-with-the-scarlet-crusade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 427, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            text = "Turn in A Rogue's Deal to Innkeeper Renee.",
            route = {
                { y = 0.5205, mapID = 1420, label = "Innkeeper Renee", offMapText = "Travel to Innkeeper Renee in Tirisfal Glades.", x = 0.6171 },
            },
            dependsOn = { "accept-8-a-rogue-s-deal" },
            id = "turnin-8-a-rogue-s-deal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 8, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Turn in In Favor of Darkness to Dark Cleric Beryl.",
            route = {
                { y = 0.5219, mapID = 1420, label = "Dark Cleric Beryl", offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades.", x = 0.6157 },
            },
            dependsOn = { "accept-5651-in-favor-of-darkness" },
            id = "turnin-5651-in-favor-of-darkness",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5651, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.5219, mapID = 1420, label = "Dark Cleric Beryl", offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades.", x = 0.6157 },
            },
            text = "Accept Garments of Darkness from Dark Cleric Beryl.",
            id = "accept-5650-garments-of-darkness",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5650, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            id = "objective-5650-quest-work",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            sourceStep = 71,
            useClientPin = true,
            dependsOn = { "accept-5650-garments-of-darkness" },
            classAction = "objective-5650-quest-work",
        },
        {
            priority = 620,
            text = "Turn in Garments of Darkness to Dark Cleric Beryl.",
            route = {
                { y = 0.5219, mapID = 1420, label = "Dark Cleric Beryl", offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades.", x = 0.6157 },
            },
            dependsOn = { "accept-5650-garments-of-darkness", "objective-5650-quest-work" },
            id = "turnin-5650-garments-of-darkness",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5650, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Collect 5 Darkhound Blood.",
            route = {
                { y = 0.532, mapID = 1420, label = "Decrepit Darkhound", offMapText = "Travel to Decrepit Darkhound.", x = 0.644 },
            },
            dependsOn = { "accept-367-a-new-plague" },
            id = "objective-367-1-decrepit-darkhound",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 367, text = "Decrepit Darkhound", index = 1, count = 5 },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Turn in A New Plague to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-367-a-new-plague", "objective-367-1-decrepit-darkhound" },
            id = "turnin-367-a-new-plague",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 367, state = "completed" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-368-a-new-plague",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 368, state = "activeOrCompleted" },
            },
            sourceStep = 73,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Collect 7 Putrid Claw.",
            route = {
                { y = 0.54, mapID = 1420, label = "Ravaged Corpse", offMapText = "Travel to Ravaged Corpse.", x = 0.532 },
            },
            dependsOn = { "accept-404-a-putrid-task" },
            id = "objective-404-1-ravaged-corpse",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 404, text = "Ravaged Corpse", index = 1, count = 7 },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5481-1-gloom-weed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 3 Gloom Weed.",
            complete = {
                questObjective = { id = 5481, index = 1, text = "Gloom Weed", count = 3 },
            },
            route = {
                { mapID = 1420, x = 0.5, y = 0.564, label = "Gloom Weed", offMapText = "Travel to Gloom Weed." },
            },
            sourceStep = 76,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5481-gordo-s-task" },
        },
        {
            priority = 680,
            text = "Collect 10 Tirisfal Pumpkin.",
            route = {
                { y = 0.512, mapID = 1420, label = "Tirisfal Pumpkin", offMapText = "Travel to Tirisfal Pumpkin.", x = 0.363 },
            },
            dependsOn = { "accept-365-fields-of-grief" },
            id = "objective-365-1-tirisfal-pumpkin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 365, text = "Tirisfal Pumpkin", index = 1, count = 10 },
            },
            sourceStep = 77,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Kill 10 Scarlet Warrior.",
            route = {
                { y = 0.504, mapID = 1420, label = "Scarlet Warrior", offMapText = "Travel to Scarlet Warrior.", x = 0.328 },
            },
            dependsOn = { "accept-427-at-war-with-the-scarlet-crusade" },
            id = "objective-427-1-scarlet-warrior",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 427, text = "Scarlet Warrior", index = 1, count = 10 },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand.",
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            dependsOn = { "accept-427-at-war-with-the-scarlet-crusade", "objective-427-1-scarlet-warrior" },
            id = "turnin-427-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 427, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            text = "Accept At War With The Scarlet Crusade from Executor Zygand.",
            id = "accept-370-at-war-with-the-scarlet-crusade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 370, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            text = "Turn in Fields of Grief to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-365-fields-of-grief", "objective-365-1-tirisfal-pumpkin" },
            id = "turnin-365-fields-of-grief",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 365, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept Fields of Grief from Apothecary Johaan.",
            id = "accept-407-fields-of-grief",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 407, state = "activeOrCompleted" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            text = "Turn in A Putrid Task to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-404-a-putrid-task", "objective-404-1-ravaged-corpse" },
            id = "turnin-404-a-putrid-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 404, state = "completed" },
            },
            sourceStep = 82,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept The Mills Overrun from Deathguard Dillinger.",
            id = "accept-426-the-mills-overrun",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 426, state = "activeOrCompleted" },
            },
            sourceStep = 82,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 404 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-5481-gordo-s-task", "objective-5481-1-gloom-weed" },
            id = "turnin-5481-gordo-s-task",
            text = "Turn in Gordo's Task to Junior Apothecary Holland.",
            useClientPin = true,
            complete = {
                quest = { id = 5481, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 760,
            sourceStep = 83,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 770,
            text = "Accept Doom Weed from Junior Apothecary Holland.",
            id = "accept-5482-doom-weed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5482, state = "activeOrCompleted" },
            },
            sourceStep = 83,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 780,
            text = "Turn in Fields of Grief to Captured Scarlet Zealot.",
            route = {
                { y = 0.5129, mapID = 1420, label = "Captured Scarlet Zealot", offMapText = "Travel to Captured Scarlet Zealot in Tirisfal Glades.", x = 0.6197 },
            },
            dependsOn = { "accept-407-fields-of-grief" },
            id = "turnin-407-fields-of-grief",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 407, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 365 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "travel-tirisfal-to-durotar",
            kind = "note",
            instructionOnly = true,
            text = "Leave Brill for the nearby zeppelin tower. Take the zeppelin to Durotar, then travel south to Razor Hill for the next quest outing.",
            conditions = { faction = "Horde" },
            route = {
                { mapID = 1411, x = 0.5195000000000001, y = 0.435, label = "Razor Hill", offMapText = "Travel to Razor Hill." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 790,
        },
        {
            priority = 800,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept Vanquish the Betrayers from Gar'Thok.",
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 784, state = "activeOrCompleted" },
            },
            sourceStep = 95,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            route = {
                { mapID = 1411, x = 0.4989, y = 0.40380000000000005, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar." },
            },
            text = "Accept Carry Your Weight from Furl Scornbrow.",
            id = "accept-791-carry-your-weight",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 791, state = "activeOrCompleted" },
            },
            sourceStep = 96,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            route = {
                { y = 0.6831, mapID = 1411, label = "Ukor", offMapText = "Travel to Ukor in Durotar.", x = 0.5206 },
            },
            text = "Accept A Peon's Burden from Ukor.",
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2161, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { y = 0.7329, mapID = 1411, label = "Lar Prowltusk", offMapText = "Travel to Lar Prowltusk in Durotar.", x = 0.5419 },
            },
            text = "Accept Thwarting Kolkar Aggression from Lar Prowltusk.",
            id = "accept-786-thwarting-kolkar-aggression",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 786, state = "activeOrCompleted" },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            route = {
                { y = 0.7392, mapID = 1411, label = "Vel'rin Fang", offMapText = "Travel to Vel'rin Fang in Durotar.", x = 0.5596 },
            },
            text = "Accept Practical Prey from Vel'rin Fang.",
            id = "accept-817-practical-prey",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 817, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            route = {
                { y = 0.7439, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal in Durotar.", x = 0.5594 },
            },
            text = "Accept A Solvent Spirit from Master Vornal.",
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 818, state = "activeOrCompleted" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 860,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Minshina's Skull from Master Gadrin.",
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 808, state = "activeOrCompleted" },
            },
            sourceStep = 101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Zalazane from Master Gadrin.",
            id = "accept-826-zalazane",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 826, state = "activeOrCompleted" },
            },
            sourceStep = 101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 880,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Report to Orgnil from Master Gadrin.",
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 823, state = "activeOrCompleted" },
            },
            sourceStep = 101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            text = "Collect 4 Intact Makrura Eye.",
            route = {
                { y = 0.708, mapID = 1411, label = "Makrura Clacker", offMapText = "Travel to Makrura Clacker.", x = 0.602 },
            },
            dependsOn = { "accept-818-a-solvent-spirit" },
            id = "objective-818-1-makrura-clacker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 818, text = "Makrura Clacker", index = 1, count = 4 },
            },
            sourceStep = 102,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-818-2-crawler-mucus",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Crawler Mucus.",
            complete = {
                questObjective = { id = 818, index = 2, text = "Crawler Mucus", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.602, y = 0.708, label = "Crawler Mucus", offMapText = "Travel to Crawler Mucus." },
            },
            sourceStep = 103,
            priority = 900,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-818-a-solvent-spirit" },
        },
        {
            priority = 910,
            text = "Turn in A Solvent Spirit to Master Vornal.",
            route = {
                { y = 0.7439, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal in Durotar.", x = 0.5594 },
            },
            dependsOn = { "accept-818-a-solvent-spirit", "objective-818-1-makrura-clacker", "objective-818-2-crawler-mucus" },
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 818, state = "completed" },
            },
            sourceStep = 109,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 920,
            text = "Open and destroy the Attack Plan: Valley of Trials in Kolkar Crag.",
            id = "objective-786-1-authored-Valley-of-Trials-plan",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 786, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.4982, y = 0.8128, label = "Valley-of-Trials-plan", offMapText = "Travel to Valley-of-Trials-plan." },
            },
        },
        {
            priority = 930,
            text = "Open and destroy the Attack Plan: Sen'jin Village in Kolkar Crag.",
            id = "objective-786-2-authored-Senjin-plan",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 786, index = 2, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.47659999999999997, y = 0.7734000000000001, label = "Senjin-plan", offMapText = "Travel to Senjin-plan." },
            },
        },
        {
            priority = 940,
            text = "Open and destroy the Attack Plan: Orgrimmar in Kolkar Crag.",
            id = "objective-786-3-authored-Orgrimmar-plan",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 786, index = 3, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.4623, y = 0.7895, label = "Orgrimmar-plan", offMapText = "Travel to Orgrimmar-plan." },
            },
        },
        {
            priority = 950,
            text = "Turn in Thwarting Kolkar Aggression to Lar Prowltusk.",
            route = {
                { y = 0.7329, mapID = 1411, label = "Lar Prowltusk", offMapText = "Travel to Lar Prowltusk in Durotar.", x = 0.5419 },
            },
            dependsOn = {
                "accept-786-thwarting-kolkar-aggression",
                "objective-786-1-authored-Valley-of-Trials-plan",
                "objective-786-2-authored-Senjin-plan",
                "objective-786-3-authored-Orgrimmar-plan",
            },
            id = "turnin-786-thwarting-kolkar-aggression",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 786, state = "completed" },
            },
            sourceStep = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            text = "Kill Lieutenant Benedict.",
            route = {
                { y = 0.583, mapID = 1411, label = "Lieutenant Benedict", offMapText = "Travel to Lieutenant Benedict.", x = 0.5899 },
            },
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 784, text = "Lieutenant Benedict", index = 3 },
            },
            sourceStep = 111,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-830-the-admiral-s-orders",
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
            text = "Loot Aged Envelope from Benedict's Chest. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Aged Envelope", minCount = 1 },
                    },
                    {
                        quest = { id = 830, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1411, x = 0.5926, y = 0.5765, label = "Benedict's Chest", offMapText = "Travel to Benedict's Chest." },
            },
            dependsOn = {},
            priority = 970,
        },
        {
            priority = 980,
            text = "Use the Aged Envelope to accept The Admiral's Orders.",
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 830, state = "activeOrCompleted" },
            },
            sourceStep = 113,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-791-1-canvas-scraps",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Canvas Scraps.",
            complete = {
                questObjective = { id = 791, index = 1, text = "Canvas Scraps", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.5539999999999999, y = 0.512, label = "Canvas Scraps", offMapText = "Travel to Canvas Scraps." },
            },
            sourceStep = 114,
            priority = 990,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-791-carry-your-weight" },
        },
        {
            id = "objective-784-2-kul-tiras-marine",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Kul Tiras Marine.",
            complete = {
                questObjective = { id = 784, index = 2, text = "Kul Tiras Marine", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.5579999999999999, y = 0.534, label = "Kul Tiras Marine", offMapText = "Travel to Kul Tiras Marine." },
            },
            sourceStep = 115,
            priority = 1000,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-784-vanquish-the-betrayers" },
        },
        {
            id = "objective-784-1-kul-tiras-sailor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Kul Tiras Sailor.",
            complete = {
                questObjective = { id = 784, index = 1, text = "Kul Tiras Sailor", count = 10 },
            },
            route = {
                { mapID = 1411, x = 0.5579999999999999, y = 0.534, label = "Kul Tiras Sailor", offMapText = "Travel to Kul Tiras Sailor." },
            },
            sourceStep = 115,
            priority = 1010,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-784-vanquish-the-betrayers" },
        },
        {
            priority = 1020,
            text = "Turn in Report to Orgnil to Orgnil Soulscar.",
            route = {
                { y = 0.4315, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar in Durotar.", x = 0.5225 },
            },
            dependsOn = { "accept-823-report-to-orgnil" },
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 823, state = "completed" },
            },
            sourceStep = 116,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            text = "Turn in Vanquish the Betrayers to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = {
                "accept-784-vanquish-the-betrayers",
                "objective-784-3-lieutenant-benedict",
                "objective-784-2-kul-tiras-marine",
                "objective-784-1-kul-tiras-sailor",
            },
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 784, state = "completed" },
            },
            sourceStep = 117,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept From The Wreckage.... from Gar'Thok.",
            id = "accept-825-from-the-wreckage",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 825, state = "activeOrCompleted" },
            },
            sourceStep = 117,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1050,
            text = "Turn in The Admiral's Orders to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = { "accept-830-the-admiral-s-orders" },
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 830, state = "completed" },
            },
            sourceStep = 117,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept The Admiral's Orders from Gar'Thok.",
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 831, state = "activeOrCompleted" },
            },
            sourceStep = 117,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 830 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1070,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept Encroachment from Gar'Thok.",
            id = "accept-837-encroachment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 837, state = "activeOrCompleted" },
            },
            sourceStep = 117,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            route = {
                { y = 0.4245, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka in Durotar.", x = 0.5111 },
            },
            text = "Accept Break a Few Eggs from Cook Torka.",
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 815, state = "activeOrCompleted" },
            },
            sourceStep = 118,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1090,
            text = "Turn in Carry Your Weight to Furl Scornbrow.",
            route = {
                { mapID = 1411, x = 0.4989, y = 0.40380000000000005, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar." },
            },
            dependsOn = { "accept-791-carry-your-weight", "objective-791-1-canvas-scraps" },
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 791, state = "completed" },
            },
            sourceStep = 119,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1100,
            text = "Turn in A Peon's Burden to Innkeeper Grosk.",
            route = {
                { y = 0.4165, mapID = 1411, label = "Innkeeper Grosk", offMapText = "Travel to Innkeeper Grosk in Durotar.", x = 0.5152 },
            },
            dependsOn = { "accept-2161-a-peon-s-burden" },
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2161, state = "completed" },
            },
            sourceStep = 120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
            text = "Collect 3 Gnomish Tools.",
            route = {
                { y = 0.562, mapID = 1411, label = "Gnomish Tools", offMapText = "Travel to Gnomish Tools.", x = 0.614 },
            },
            dependsOn = { "accept-825-from-the-wreckage" },
            id = "objective-825-1-gnomish-tools",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 825, text = "Gnomish Tools", index = 1, count = 3 },
            },
            sourceStep = 123,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Collect 1 Zalazane's Head.",
            route = {
                { y = 0.864, mapID = 1411, label = "Zalazane", offMapText = "Travel to Zalazane.", x = 0.674 },
            },
            dependsOn = { "accept-826-zalazane" },
            id = "objective-826-3-zalazane",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 826, text = "Zalazane", index = 3, count = 1 },
            },
            sourceStep = 124,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-808-1-minshina-s-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Minshina's Skull.",
            complete = {
                questObjective = { id = 808, index = 1, text = "Minshina's Skull", count = 1 },
            },
            route = {
                { mapID = 1411, x = 0.6745, y = 0.8781, label = "Minshina's Skull", offMapText = "Travel to Minshina's Skull." },
            },
            sourceStep = 125,
            priority = 1130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-808-minshina-s-skull" },
        },
        {
            id = "objective-826-1-hexed-troll",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Hexed Troll.",
            complete = {
                questObjective = { id = 826, index = 1, text = "Hexed Troll", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.6779999999999999, y = 0.86, label = "Hexed Troll", offMapText = "Travel to Hexed Troll." },
            },
            sourceStep = 126,
            priority = 1140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-826-zalazane" },
        },
        {
            id = "objective-826-2-voodoo-troll",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Voodoo Troll.",
            complete = {
                questObjective = { id = 826, index = 2, text = "Voodoo Troll", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.672, y = 0.87, label = "Voodoo Troll", offMapText = "Travel to Voodoo Troll." },
            },
            sourceStep = 127,
            priority = 1150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-826-zalazane" },
        },
        {
            id = "objective-815-1-taillasher-egg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 3 Taillasher Egg.",
            complete = {
                questObjective = { id = 815, index = 1, text = "Taillasher Egg", count = 3 },
            },
            route = {
                { mapID = 1411, x = 0.639, y = 0.868, label = "Taillasher Egg", offMapText = "Travel to Taillasher Egg." },
            },
            sourceStep = 128,
            priority = 1160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-815-break-a-few-eggs" },
        },
        {
            id = "objective-817-1-durotar-tiger-fur",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 4 Durotar Tiger Fur.",
            complete = {
                questObjective = { id = 817, index = 1, text = "Durotar Tiger Fur", count = 4 },
            },
            route = {
                { mapID = 1411, x = 0.612, y = 0.8959999999999999, label = "Durotar Tiger Fur", offMapText = "Travel to Durotar Tiger Fur." },
            },
            sourceStep = 129,
            priority = 1170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-817-practical-prey" },
        },
        {
            priority = 1180,
            text = "Turn in Minshina's Skull to Master Gadrin.",
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-808-minshina-s-skull", "objective-808-1-minshina-s-skull" },
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 808, state = "completed" },
            },
            sourceStep = 135,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
            text = "Turn in Zalazane to Master Gadrin.",
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-826-zalazane", "objective-826-3-zalazane", "objective-826-1-hexed-troll", "objective-826-2-voodoo-troll" },
            id = "turnin-826-zalazane",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 826, state = "completed" },
            },
            sourceStep = 135,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1200,
            text = "Turn in Practical Prey to Vel'rin Fang.",
            route = {
                { y = 0.7393, mapID = 1411, label = "Vel'rin Fang", offMapText = "Travel to Vel'rin Fang in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-817-practical-prey", "objective-817-1-durotar-tiger-fur" },
            id = "turnin-817-practical-prey",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 817, state = "completed" },
            },
            sourceStep = 137,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            text = "Turn in From The Wreckage.... to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = { "accept-825-from-the-wreckage", "objective-825-1-gnomish-tools" },
            id = "turnin-825-from-the-wreckage",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 825, state = "completed" },
            },
            sourceStep = 139,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1220,
            text = "Turn in Break a Few Eggs to Cook Torka.",
            route = {
                { y = 0.4245, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka in Durotar.", x = 0.5111 },
            },
            dependsOn = { "accept-815-break-a-few-eggs", "objective-815-1-taillasher-egg" },
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 815, state = "completed" },
            },
            sourceStep = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5660-touch-of-weakness",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5660,
            alternativeQuests = { 5658, 5661, 5662, 5663 },
            priority = 1230,
        },
        {
            priority = 1240,
            route = {
                { y = 0.4293, mapID = 1411, label = "Tai'jin", offMapText = "Travel to Tai'jin in Durotar.", x = 0.5426 },
            },
            text = "Accept Touch of Weakness from Tai'jin.",
            id = "accept-5660-touch-of-weakness",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5660, state = "activeOrCompleted" },
            },
            sourceStep = 142,
            requiredQuests = {},
            alternativeQuests = { 5658, 5661, 5662, 5663 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1250,
            text = "Kill 4 Razormane Quilboar.",
            route = {
                { y = 0.496, mapID = 1411, label = "Razormane Quilboar", offMapText = "Travel to Razormane Quilboar.", x = 0.5 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-1-razormane-quilboar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Quilboar", index = 1, count = 4 },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
            text = "Kill 4 Razormane Scout.",
            route = {
                { y = 0.496, mapID = 1411, label = "Razormane Scout", offMapText = "Travel to Razormane Scout.", x = 0.5 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-2-razormane-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Scout", index = 2, count = 4 },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1270,
            text = "Kill 4 Razormane Dustrunner.",
            route = {
                { y = 0.406, mapID = 1411, label = "Razormane Dustrunner", offMapText = "Travel to Razormane Dustrunner.", x = 0.424 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-3-razormane-dustrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Dustrunner", index = 3, count = 4 },
            },
            sourceStep = 148,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1280,
            text = "Kill 4 Razormane Battleguard.",
            route = {
                { y = 0.406, mapID = 1411, label = "Razormane Battleguard", offMapText = "Travel to Razormane Battleguard.", x = 0.424 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-4-razormane-battleguard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Battleguard", index = 4, count = 4 },
            },
            sourceStep = 148,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1290,
            text = "Turn in Encroachment to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = {
                "accept-837-encroachment",
                "objective-837-1-razormane-quilboar",
                "objective-837-2-razormane-scout",
                "objective-837-3-razormane-dustrunner",
                "objective-837-4-razormane-battleguard",
            },
            id = "turnin-837-encroachment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 837, state = "completed" },
            },
            sourceStep = 149,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-834-winds-in-the-desert",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 834,
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            text = "Accept Winds in the Desert from Rezlak.",
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 834, state = "activeOrCompleted" },
            },
            sourceStep = 151,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            text = "Collect 5 Sack of Supplies.",
            route = {
                { y = 0.225, mapID = 1411, label = "Sack of Supplies", offMapText = "Travel to Sack of Supplies.", x = 0.491 },
            },
            dependsOn = { "accept-834-winds-in-the-desert" },
            id = "objective-834-1-sack-of-supplies",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                questObjective = { id = 834, text = "Sack of Supplies", index = 1, count = 5 },
            },
            sourceStep = 152,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1330,
            text = "Turn in Winds in the Desert to Rezlak.",
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            dependsOn = { "accept-834-winds-in-the-desert", "objective-834-1-sack-of-supplies" },
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 834, state = "completed" },
            },
            sourceStep = 153,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1340,
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            text = "Accept Securing the Lines from Rezlak.",
            id = "accept-835-securing-the-lines",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "activeOrCompleted" },
            },
            sourceStep = 153,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1350,
            text = "For Securing the Lines: Kill 12 Dustwind Savages and 8 Dustwind Storm Witches for Rezlak near Drygulch Ravine.",
            id = "objective-835-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "complete" },
            },
            sourceStep = 157,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-835-securing-the-lines" },
        },
        {
            priority = 1360,
            text = "Turn in Securing the Lines to Rezlak.",
            route = {
                { mapID = 1411, x = 0.4637, y = 0.22940000000000002, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar." },
            },
            dependsOn = { "accept-835-securing-the-lines", "objective-835-quest-work" },
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "completed" },
            },
            sourceStep = 157,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            text = "Turn in The Admiral's Orders to Nazgrel.",
            route = {
                { y = 0.358, mapID = 1454, label = "Nazgrel", offMapText = "Travel to Nazgrel in Orgrimmar.", x = 0.3227 },
            },
            dependsOn = { "accept-831-the-admiral-s-orders" },
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 831, state = "completed" },
            },
            sourceStep = 159,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 830 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "travel-durotar-to-tirisfal",
            kind = "note",
            instructionOnly = true,
            text = "Return north to the Durotar zeppelin tower. Take the zeppelin to Tirisfal Glades, then return to Brill for the next quest outing.",
            conditions = { faction = "Horde" },
            route = {
                { mapID = 1420, x = 0.6059, y = 0.5176, label = "Brill", offMapText = "Travel to Brill." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 1380,
        },
        {
            id = "level-before-accept-1818-speak-with-dillinger",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1818,
            alternativeQuests = { 1498 },
            priority = 1390,
        },
        {
            priority = 1400,
            route = {
                { y = 0.5254, mapID = 1420, label = "Austil de Mon", offMapText = "Travel to Austil de Mon in Tirisfal Glades.", x = 0.6185 },
            },
            text = "Accept Speak with Dillinger from Austil de Mon.",
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1818, state = "activeOrCompleted" },
            },
            sourceStep = 161,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-354-deaths-in-the-family",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 354,
            priority = 1410,
        },
        {
            priority = 1420,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept Deaths in the Family from Coleman Farthing.",
            id = "accept-354-deaths-in-the-family",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 354, state = "activeOrCompleted" },
            },
            sourceStep = 162,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1430,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept The Haunted Mills from Coleman Farthing.",
            id = "accept-362-the-haunted-mills",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 362, state = "activeOrCompleted" },
            },
            sourceStep = 162,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1881-speak-with-anastasia",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1881,
            alternativeQuests = { 1884 },
            priority = 1440,
        },
        {
            priority = 1450,
            route = {
                { y = 0.5247, mapID = 1420, label = "Cain Firesong", offMapText = "Travel to Cain Firesong in Tirisfal Glades.", x = 0.6197 },
            },
            text = "Accept Speak with Anastasia from Cain Firesong.",
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1881, state = "activeOrCompleted" },
            },
            sourceStep = 163,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1460,
            route = {
                { y = 0.5273, mapID = 1420, label = "Gretchen Dedmar", offMapText = "Travel to Gretchen Dedmar in Tirisfal Glades.", x = 0.6189 },
            },
            text = "Accept The Chill of Death from Gretchen Dedmar.",
            id = "accept-375-the-chill-of-death",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 375, state = "activeOrCompleted" },
            },
            sourceStep = 164,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1478-halgar-s-summons",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1478,
            priority = 1470,
        },
        {
            priority = 1480,
            route = {
                { y = 0.5268, mapID = 1420, label = "Ageron Kargal", offMapText = "Travel to Ageron Kargal in Tirisfal Glades.", x = 0.6162 },
            },
            text = "Accept Halgar's Summons from Ageron Kargal.",
            id = "accept-1478-halgar-s-summons",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1478, state = "activeOrCompleted" },
            },
            sourceStep = 165,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1885-mennet-carkad",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1885,
            alternativeQuests = { 1859 },
            priority = 1490,
        },
        {
            priority = 1500,
            route = {
                { y = 0.52, mapID = 1420, label = "Marion Call", offMapText = "Travel to Marion Call in Tirisfal Glades.", x = 0.6175 },
            },
            text = "Accept Mennet Carkad from Marion Call.",
            id = "accept-1885-mennet-carkad",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1885, state = "activeOrCompleted" },
            },
            sourceStep = 166,
            requiredQuests = {},
            alternativeQuests = { 1859 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1510,
            route = {
                { y = 0.5201, mapID = 1420, label = "Deathguard Burgess", offMapText = "Travel to Deathguard Burgess in Tirisfal Glades.", x = 0.6093 },
            },
            text = "Accept Proof of Demise from Deathguard Burgess.",
            id = "accept-374-proof-of-demise",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 374, state = "activeOrCompleted" },
            },
            sourceStep = 167,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1520,
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            text = "Accept Graverobbers from Magistrate Sevren.",
            id = "accept-358-graverobbers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 358, state = "activeOrCompleted" },
            },
            sourceStep = 168,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1530,
            route = {
                { y = 0.5152, mapID = 1420, label = "Wanted: Maggot Eye", offMapText = "Travel to Wanted: Maggot Eye.", x = 0.6073 },
            },
            text = "Accept Wanted: Maggot Eye.",
            id = "accept-398-wanted-maggot-eye",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 398, state = "activeOrCompleted" },
            },
            sourceStep = 169,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1540,
            text = "Turn in Speak with Dillinger to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-1818-speak-with-dillinger" },
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1818, state = "completed" },
            },
            sourceStep = 170,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept Ulag the Cleaver from Deathguard Dillinger.",
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1819, state = "activeOrCompleted" },
            },
            sourceStep = 170,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1560,
            text = "Kill Ulag the Cleaver.",
            route = {
                { y = 0.4851, mapID = 1420, label = "Mausoleum Trigger", offMapText = "Travel to Mausoleum Trigger.", x = 0.5916 },
            },
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            id = "objective-1819-1-mausoleum-trigger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1819, text = "Mausoleum Trigger", index = 1 },
            },
            sourceStep = 171,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
            text = "Turn in Ulag the Cleaver to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-1-mausoleum-trigger" },
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1819, state = "completed" },
            },
            sourceStep = 172,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1580,
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept Speak with Coleman from Deathguard Dillinger.",
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1820, state = "activeOrCompleted" },
            },
            sourceStep = 172,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1498, 1819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1590,
            text = "Turn in Speak with Coleman to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = { "accept-1820-speak-with-coleman" },
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1820, state = "completed" },
            },
            sourceStep = 173,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1498, 1819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1600,
            text = "Turn in Halgar's Summons to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1478-halgar-s-summons" },
            id = "turnin-1478-halgar-s-summons",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1478, state = "completed" },
            },
            sourceStep = 174,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1473-creature-of-the-void",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1473,
            priority = 1610,
        },
        {
            priority = 1620,
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            text = "Accept Creature of the Void from Carendin Halgar.",
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1473, state = "activeOrCompleted" },
            },
            sourceStep = 174,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1630,
            text = "Turn in Mennet Carkad to Mennet Carkad.",
            route = {
                { y = 0.6911, mapID = 1458, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity.", x = 0.8351 },
            },
            dependsOn = { "accept-1885-mennet-carkad" },
            id = "turnin-1885-mennet-carkad",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1885, state = "completed" },
            },
            sourceStep = 175,
            requiredQuests = {},
            alternativeQuests = { 1859 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1640,
            route = {
                { y = 0.6911, mapID = 1458, label = "Mennet Carkad", offMapText = "Travel to Mennet Carkad in Undercity.", x = 0.8351 },
            },
            text = "Accept The Deathstalkers from Mennet Carkad.",
            id = "accept-1886-the-deathstalkers",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1886, state = "activeOrCompleted" },
            },
            sourceStep = 175,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1650,
            text = "Turn in Touch of Weakness to Aelthalyste.",
            route = {
                { y = 0.1712, mapID = 1458, label = "Aelthalyste", offMapText = "Travel to Aelthalyste in Undercity.", x = 0.4926 },
            },
            dependsOn = { "accept-5660-touch-of-weakness" },
            id = "turnin-5660-touch-of-weakness",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5660, state = "completed" },
            },
            sourceStep = 177,
            requiredQuests = {},
            alternativeQuests = { 5658, 5661, 5662, 5663 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1660,
            text = "Turn in Speak with Anastasia to Anastasia Hartwell.",
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            dependsOn = { "accept-1881-speak-with-anastasia" },
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1881, state = "completed" },
            },
            sourceStep = 178,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1670,
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            text = "Accept The Balnir Farmstead from Anastasia Hartwell.",
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1882, state = "activeOrCompleted" },
            },
            sourceStep = 178,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1680,
            text = "Kill Captain Perrine.",
            route = {
                { y = 0.678, mapID = 1420, label = "Captain Perrine", offMapText = "Travel to Captain Perrine.", x = 0.5113 },
            },
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
            id = "objective-370-1-captain-perrine",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 370, text = "Captain Perrine", index = 1 },
            },
            sourceStep = 179,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1473-1-egalin-s-grimoire",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            text = "Collect 1 Egalin's Grimoire.",
            complete = {
                questObjective = { id = 1473, index = 1, text = "Egalin's Grimoire", count = 1 },
            },
            route = {
                { mapID = 1420, x = 0.5106, y = 0.6757, label = "Egalin's Grimoire", offMapText = "Travel to Egalin's Grimoire." },
            },
            sourceStep = 180,
            priority = 1690,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1473-creature-of-the-void" },
        },
        {
            id = "objective-374-1-scarlet-insignia-ring",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Scarlet Insignia Ring.",
            complete = {
                questObjective = { id = 374, index = 1, text = "Scarlet Insignia Ring", count = 10 },
            },
            route = {
                { mapID = 1420, x = 0.534, y = 0.654, label = "Scarlet Insignia Ring", offMapText = "Travel to Scarlet Insignia Ring." },
            },
            sourceStep = 181,
            priority = 1700,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-374-proof-of-demise" },
        },
        {
            id = "objective-370-2-scarlet-zealot",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 3 Scarlet Zealot.",
            complete = {
                questObjective = { id = 370, index = 2, text = "Scarlet Zealot", count = 3 },
            },
            route = {
                { mapID = 1420, x = 0.534, y = 0.654, label = "Scarlet Zealot", offMapText = "Travel to Scarlet Zealot." },
            },
            sourceStep = 182,
            priority = 1710,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
        },
        {
            id = "objective-370-3-scarlet-missionary",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 3 Scarlet Missionary.",
            complete = {
                questObjective = { id = 370, index = 3, text = "Scarlet Missionary", count = 3 },
            },
            route = {
                { mapID = 1420, x = 0.534, y = 0.654, label = "Scarlet Missionary", offMapText = "Travel to Scarlet Missionary." },
            },
            sourceStep = 182,
            priority = 1720,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
        },
        {
            priority = 1730,
            text = "Turn in Creature of the Void to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1473-creature-of-the-void", "objective-1473-1-egalin-s-grimoire" },
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1473, state = "completed" },
            },
            sourceStep = 183,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1740,
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            text = "Accept The Binding from Carendin Halgar.",
            id = "accept-1471-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1471, state = "activeOrCompleted" },
            },
            sourceStep = 183,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            text = "Kill Summoned Voidwalker.",
            route = {
                { y = 0.271, mapID = 1458, label = "Runes of Summoning", offMapText = "Travel to Runes of Summoning.", x = 0.8662 },
            },
            dependsOn = { "accept-1471-the-binding" },
            id = "objective-1471-1-runes-of-summoning",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1471, text = "Runes of Summoning", index = 1 },
            },
            sourceStep = 184,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1760,
            text = "Turn in The Binding to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1471-the-binding", "objective-1471-1-runes-of-summoning" },
            id = "turnin-1471-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1471, state = "completed" },
            },
            sourceStep = 185,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1770,
            text = "Collect 5 Duskbat Pelt.",
            route = {
                { y = 0.544, mapID = 1420, label = "Greater Duskbat", offMapText = "Travel to Greater Duskbat.", x = 0.584 },
            },
            dependsOn = { "accept-375-the-chill-of-death" },
            id = "objective-375-1-greater-duskbat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 375, text = "Greater Duskbat", index = 1, count = 5 },
            },
            sourceStep = 186,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1780,
            text = "Collect 1 Devlin's Remains.",
            route = {
                { y = 0.416, mapID = 1420, label = "Devlin Agamand", offMapText = "Travel to Devlin Agamand.", x = 0.474 },
            },
            dependsOn = { "accept-362-the-haunted-mills" },
            id = "objective-362-1-devlin-agamand",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 362, text = "Devlin Agamand", index = 1, count = 1 },
            },
            sourceStep = 187,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1790,
            text = "Collect 1 Nissa's Remains.",
            route = {
                { y = 0.3602, mapID = 1420, label = "Nissa Agamand", offMapText = "Travel to Nissa Agamand.", x = 0.4954 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-2-nissa-agamand",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 354, text = "Nissa Agamand", index = 2, count = 1 },
            },
            sourceStep = 188,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1800,
            text = "Collect 1 Gregor's Remains.",
            route = {
                { y = 0.306, mapID = 1420, label = "Gregor Agamand", offMapText = "Travel to Gregor Agamand.", x = 0.464 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-1-gregor-agamand",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 354, text = "Gregor Agamand", index = 1, count = 1 },
            },
            sourceStep = 189,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1810,
            text = "Collect 1 Thurman's Remains.",
            route = {
                { y = 0.342, mapID = 1420, label = "Thurman Agamand", offMapText = "Travel to Thurman Agamand.", x = 0.434 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-3-thurman-agamand",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 354, text = "Thurman Agamand", index = 3, count = 1 },
            },
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-426-1-notched-rib",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Notched Rib.",
            complete = {
                questObjective = { id = 426, index = 1, text = "Notched Rib", count = 5 },
            },
            route = {
                { mapID = 1420, x = 0.484, y = 0.358, label = "Notched Rib", offMapText = "Travel to Notched Rib." },
            },
            sourceStep = 191,
            priority = 1820,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 404 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-426-the-mills-overrun" },
        },
        {
            id = "objective-426-2-blackened-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 3 Blackened Skull.",
            complete = {
                questObjective = { id = 426, index = 2, text = "Blackened Skull", count = 3 },
            },
            route = {
                { mapID = 1420, x = 0.48, y = 0.376, label = "Blackened Skull", offMapText = "Travel to Blackened Skull." },
            },
            sourceStep = 192,
            priority = 1830,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 404 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-426-the-mills-overrun" },
        },
        {
            id = "loot-starter-before-accept-361-a-letter-undelivered",
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
            text = "Loot A Letter to Yvette from Darkeye Bonecaster, Cracked Skull Soldier, Shadowvale Mystic. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "A Letter to Yvette", minCount = 1 },
                    },
                    {
                        quest = { id = 361, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1420, x = 0.08650000000000001, y = 0.5952000000000001, label = "Darkeye Bonecaster", offMapText = "Travel to Darkeye Bonecaster." },
            },
            dependsOn = {},
            priority = 1840,
        },
        {
            priority = 1850,
            text = "Use the A Letter to Yvette to accept A Letter Undelivered.",
            id = "accept-361-a-letter-undelivered",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 361, state = "activeOrCompleted" },
            },
            sourceStep = 193,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1860,
            text = "Collect 1 Maggot Eye's Paw.",
            route = {
                { mapID = 1420, x = 0.5866, y = 0.30760000000000004, label = "Maggot Eye's Paw", offMapText = "Travel to Maggot Eye's Paw." },
            },
            dependsOn = { "accept-398-wanted-maggot-eye" },
            id = "objective-398-1-maggot-eye",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 398, text = "Maggot Eye", index = 1, count = 1 },
            },
            sourceStep = 194,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1870,
            text = "Collect 5 Vile Fin Scale.",
            route = {
                { y = 0.288, mapID = 1420, label = "Vile Fin Puddlejumper", offMapText = "Travel to Vile Fin Puddlejumper.", x = 0.624 },
            },
            dependsOn = { "accept-368-a-new-plague" },
            id = "objective-368-1-vile-fin-puddlejumper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 368, text = "Vile Fin Puddlejumper", index = 1, count = 5 },
            },
            sourceStep = 195,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-358-2-rot-hide-mongrel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 5 Rot Hide Mongrel.",
            complete = {
                questObjective = { id = 358, index = 2, text = "Rot Hide Mongrel", count = 5 },
            },
            route = {
                { mapID = 1420, x = 0.594, y = 0.336, label = "Rot Hide Mongrel", offMapText = "Travel to Rot Hide Mongrel." },
            },
            sourceStep = 196,
            priority = 1880,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-358-graverobbers" },
        },
        {
            priority = 1890,
            text = "Kill 8 Rot Hide Graverobber.",
            route = {
                { y = 0.4234, mapID = 1420, label = "Rot Hide Graverobber", offMapText = "Travel to Rot Hide Graverobber.", x = 0.5537 },
            },
            dependsOn = { "accept-358-graverobbers" },
            id = "objective-358-1-rot-hide-graverobber",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 358, text = "Rot Hide Graverobber", index = 1, count = 8 },
            },
            sourceStep = 197,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-5482-1-doom-weed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Doom Weed.",
            complete = {
                questObjective = { id = 5482, index = 1, text = "Doom Weed", count = 10 },
            },
            route = {
                { mapID = 1420, x = 0.578, y = 0.384, label = "Doom Weed", offMapText = "Travel to Doom Weed." },
            },
            sourceStep = 198,
            priority = 1900,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5481 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5482-doom-weed" },
        },
        {
            id = "objective-358-3-embalming-ichor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Embalming Ichor.",
            complete = {
                questObjective = { id = 358, index = 3, text = "Embalming Ichor", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.5820000000000001, y = 0.41200000000000003, label = "Embalming Ichor", offMapText = "Travel to Embalming Ichor." },
            },
            sourceStep = 199,
            priority = 1910,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-358-graverobbers" },
        },
        {
            dependsOn = { "accept-5482-doom-weed", "objective-5482-1-doom-weed" },
            id = "turnin-5482-doom-weed",
            text = "Turn in Doom Weed to Junior Apothecary Holland.",
            useClientPin = true,
            complete = {
                quest = { id = 5482, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 1920,
            sourceStep = 200,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5481 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 1930,
            text = "Turn in The Mills Overrun to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-426-the-mills-overrun", "objective-426-1-notched-rib", "objective-426-2-blackened-skull" },
            id = "turnin-426-the-mills-overrun",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 426, state = "completed" },
            },
            sourceStep = 201,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 404 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1940,
            text = "Turn in A New Plague to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-368-a-new-plague", "objective-368-1-vile-fin-puddlejumper" },
            id = "turnin-368-a-new-plague",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 368, state = "completed" },
            },
            sourceStep = 202,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1950,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-369-a-new-plague",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 369, state = "activeOrCompleted" },
            },
            sourceStep = 202,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 368 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1960,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand.",
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            dependsOn = {
                "accept-370-at-war-with-the-scarlet-crusade",
                "objective-370-1-captain-perrine",
                "objective-370-2-scarlet-zealot",
                "objective-370-3-scarlet-missionary",
            },
            id = "turnin-370-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 370, state = "completed" },
            },
            sourceStep = 203,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1970,
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            text = "Accept At War With The Scarlet Crusade from Executor Zygand.",
            id = "accept-371-at-war-with-the-scarlet-crusade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 371, state = "activeOrCompleted" },
            },
            sourceStep = 203,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1980,
            text = "Turn in Wanted: Maggot Eye to Executor Zygand.",
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            dependsOn = { "accept-398-wanted-maggot-eye", "objective-398-1-maggot-eye" },
            id = "turnin-398-wanted-maggot-eye",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 398, state = "completed" },
            },
            sourceStep = 203,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1990,
            text = "Turn in Graverobbers to Magistrate Sevren.",
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            dependsOn = {
                "accept-358-graverobbers",
                "objective-358-2-rot-hide-mongrel",
                "objective-358-1-rot-hide-graverobber",
                "objective-358-3-embalming-ichor",
            },
            id = "turnin-358-graverobbers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 358, state = "completed" },
            },
            sourceStep = 204,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2000,
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            text = "Accept Forsaken Duties from Magistrate Sevren.",
            id = "accept-359-forsaken-duties",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 359, state = "activeOrCompleted" },
            },
            sourceStep = 204,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 358 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2010,
            text = "Turn in Proof of Demise to Deathguard Burgess.",
            route = {
                { y = 0.5201, mapID = 1420, label = "Deathguard Burgess", offMapText = "Travel to Deathguard Burgess in Tirisfal Glades.", x = 0.6093 },
            },
            dependsOn = { "accept-374-proof-of-demise", "objective-374-1-scarlet-insignia-ring" },
            id = "turnin-374-proof-of-demise",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 374, state = "completed" },
            },
            sourceStep = 205,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2020,
            text = "Turn in A Letter Undelivered to Yvette Farthing.",
            route = {
                { y = 0.526, mapID = 1420, label = "Yvette Farthing", offMapText = "Travel to Yvette Farthing in Tirisfal Glades.", x = 0.6158 },
            },
            dependsOn = { "accept-361-a-letter-undelivered" },
            id = "turnin-361-a-letter-undelivered",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 361, state = "completed" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2030,
            text = "Turn in Deaths in the Family to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = {
                "accept-354-deaths-in-the-family",
                "objective-354-2-nissa-agamand",
                "objective-354-1-gregor-agamand",
                "objective-354-3-thurman-agamand",
            },
            id = "turnin-354-deaths-in-the-family",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 354, state = "completed" },
            },
            sourceStep = 208,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2040,
            text = "Turn in The Haunted Mills to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = { "accept-362-the-haunted-mills", "objective-362-1-devlin-agamand" },
            id = "turnin-362-the-haunted-mills",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 362, state = "completed" },
            },
            sourceStep = 208,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2050,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept Speak with Sevren from Coleman Farthing.",
            id = "accept-355-speak-with-sevren",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 355, state = "activeOrCompleted" },
            },
            sourceStep = 208,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 354, 362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2060,
            text = "Turn in The Chill of Death to Gretchen Dedmar.",
            route = {
                { y = 0.5273, mapID = 1420, label = "Gretchen Dedmar", offMapText = "Travel to Gretchen Dedmar in Tirisfal Glades.", x = 0.6189 },
            },
            dependsOn = { "accept-375-the-chill-of-death", "objective-375-1-greater-duskbat" },
            id = "turnin-375-the-chill-of-death",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 375, state = "completed" },
            },
            sourceStep = 209,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2070,
            text = "Turn in Forsaken Duties to Deathguard Linnea.",
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            dependsOn = { "accept-359-forsaken-duties" },
            id = "turnin-359-forsaken-duties",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 359, state = "completed" },
            },
            sourceStep = 216,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 358 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2080,
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            text = "Accept Return to the Magistrate from Deathguard Linnea.",
            id = "accept-360-return-to-the-magistrate",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 360, state = "activeOrCompleted" },
            },
            sourceStep = 216,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 359 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2090,
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            text = "Accept Rear Guard Patrol from Deathguard Linnea.",
            id = "accept-356-rear-guard-patrol",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 356, state = "activeOrCompleted" },
            },
            sourceStep = 216,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1882-1-balnir-snapdragons",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            text = "Collect 1 Balnir Snapdragons.",
            complete = {
                questObjective = { id = 1882, index = 1, text = "Balnir Snapdragons", count = 1 },
            },
            route = {
                { mapID = 1420, x = 0.7694, y = 0.6238, label = "Balnir Snapdragons", offMapText = "Travel to Balnir Snapdragons." },
            },
            sourceStep = 217,
            priority = 2100,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1882-the-balnir-farmstead" },
        },
        {
            id = "objective-356-1-bleeding-horror",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Bleeding Horror.",
            complete = {
                questObjective = { id = 356, index = 1, text = "Bleeding Horror", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.7554000000000001, y = 0.6085, label = "Bleeding Horror", offMapText = "Travel to Bleeding Horror." },
            },
            sourceStep = 218,
            priority = 2110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-356-rear-guard-patrol" },
        },
        {
            id = "objective-356-2-wandering-spirit",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Wandering Spirit.",
            complete = {
                questObjective = { id = 356, index = 2, text = "Wandering Spirit", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.7554000000000001, y = 0.6085, label = "Wandering Spirit", offMapText = "Travel to Wandering Spirit." },
            },
            sourceStep = 218,
            priority = 2120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-356-rear-guard-patrol" },
        },
        {
            priority = 2130,
            text = "Kill Captain Vachon.",
            route = {
                { y = 0.5613, mapID = 1420, label = "Captain Vachon", offMapText = "Travel to Captain Vachon.", x = 0.7882 },
            },
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade" },
            id = "objective-371-1-captain-vachon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 371, text = "Captain Vachon", index = 1 },
            },
            sourceStep = 219,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-371-2-scarlet-friar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 5 Scarlet Friar.",
            complete = {
                questObjective = { id = 371, index = 2, text = "Scarlet Friar", count = 5 },
            },
            route = {
                { mapID = 1420, x = 0.7959999999999999, y = 0.5579999999999999, label = "Scarlet Friar", offMapText = "Travel to Scarlet Friar." },
            },
            sourceStep = 220,
            priority = 2140,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade" },
        },
        {
            priority = 2150,
            text = "Collect 4 Vicious Night Web Spider Venom.",
            route = {
                { y = 0.514, mapID = 1420, label = "Vicious Night Web Spider", offMapText = "Travel to Vicious Night Web Spider.", x = 0.834 },
            },
            dependsOn = { "accept-369-a-new-plague" },
            id = "objective-369-1-vicious-night-web-spider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 369, text = "Vicious Night Web Spider", index = 1, count = 4 },
            },
            sourceStep = 221,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 368 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2160,
            text = "Turn in Rear Guard Patrol to Deathguard Linnea.",
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            dependsOn = { "accept-356-rear-guard-patrol", "objective-356-1-bleeding-horror", "objective-356-2-wandering-spirit" },
            id = "turnin-356-rear-guard-patrol",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 356, state = "completed" },
            },
            sourceStep = 223,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2170,
            text = "Turn in Speak with Sevren to Magistrate Sevren.",
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            dependsOn = { "accept-355-speak-with-sevren" },
            id = "turnin-355-speak-with-sevren",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 355, state = "completed" },
            },
            sourceStep = 224,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 354, 362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2180,
            text = "Turn in Return to the Magistrate to Magistrate Sevren.",
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            dependsOn = { "accept-360-return-to-the-magistrate" },
            id = "turnin-360-return-to-the-magistrate",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 360, state = "completed" },
            },
            sourceStep = 224,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 359 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2190,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand.",
            route = {
                { y = 0.5177, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6058 },
            },
            dependsOn = {
                "accept-371-at-war-with-the-scarlet-crusade",
                "objective-371-1-captain-vachon",
                "objective-371-2-scarlet-friar",
            },
            id = "turnin-371-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 371, state = "completed" },
            },
            sourceStep = 225,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2200,
            text = "Turn in A New Plague to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-369-a-new-plague", "objective-369-1-vicious-night-web-spider" },
            id = "turnin-369-a-new-plague",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 369, state = "completed" },
            },
            sourceStep = 226,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 368 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2210,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-492-a-new-plague",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 492, state = "activeOrCompleted" },
            },
            sourceStep = 226,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 369 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-445-delivery-to-silverpine-forest",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 445,
            priority = 2220,
        },
        {
            priority = 2230,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept Delivery to Silverpine Forest from Apothecary Johaan.",
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 445, state = "activeOrCompleted" },
            },
            sourceStep = 226,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2240,
            text = "Turn in A New Plague to Captured Mountaineer.",
            route = {
                { y = 0.514, mapID = 1420, label = "Captured Mountaineer", offMapText = "Travel to Captured Mountaineer in Tirisfal Glades.", x = 0.6194 },
            },
            dependsOn = { "accept-492-a-new-plague" },
            id = "turnin-492-a-new-plague",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 492, state = "completed" },
            },
            sourceStep = 227,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 369 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2250,
            text = "Turn in The Balnir Farmstead to Anastasia Hartwell.",
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            dependsOn = { "accept-1882-the-balnir-farmstead", "objective-1882-1-balnir-snapdragons" },
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1882, state = "completed" },
            },
            sourceStep = 228,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-1886-the-deathstalkers" },
            id = "objective-1886-1-astor-hadren",
            text = "Collect 1 Astor's Letter of Introduction.",
            useClientPin = true,
            complete = {
                questObjective = { id = 1886, text = "Astor Hadren", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            priority = 2260,
            sourceStep = 229,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 2270,
            route = {
                { y = 0.6617, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis.", x = 0.3086 },
            },
            text = "Accept A Difficult Path from Shadow Priest Sarvis in Deathknell.",
            id = "woven-accept-98601-a-difficult-path",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 98601, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2280,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Read Consecrated Scroll in your bags. Turn in A Difficult Path to Aramis Hammerhand in Deathknell.",
            id = "woven-turnin-98601-a-difficult-path",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 98601, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98601-a-difficult-path" },
        },
        {
            id = "level-before-woven-accept-98389-a-light-in-the-darkness",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 98389,
            priority = 2290,
        },
        {
            priority = 2300,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Accept A Light in the Darkness from Aramis Hammerhand in Deathknell.",
            id = "woven-accept-98389-a-light-in-the-darkness",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98389, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-90902-rediscovering-the-light",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 90902,
            priority = 2310,
        },
        {
            priority = 2320,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Accept Rediscovering the Light from Aramis Hammerhand in Deathknell.",
            id = "woven-accept-90902-rediscovering-the-light",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 90902, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2330,
            route = {
                { y = 0.594, mapID = 1420, label = "Webbed Forsaken", offMapText = "Travel to Webbed Forsaken.", x = 0.266 },
            },
            text = "Free 6 Webbed Forsaken in Night Web's Hollow.",
            id = "woven-objective-98389-a-light-in-the-darkness",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98389, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98389-a-light-in-the-darkness" },
        },
        {
            priority = 2340,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Turn in A Light in the Darkness to Aramis Hammerhand in Deathknell.",
            id = "woven-turnin-98389-a-light-in-the-darkness",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98389, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98389-a-light-in-the-darkness", "woven-objective-98389-a-light-in-the-darkness" },
        },
        {
            priority = 2350,
            id = "woven-objective-90902-rediscovering-the-light",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-90902-rediscovering-the-light" },
            classAction = "objective-90902-reviewed-mechanics",
        },
        {
            priority = 2360,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Turn in Rediscovering the Light to Aramis Hammerhand in Deathknell.",
            id = "woven-turnin-90902-rediscovering-the-light",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 90902, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-90902-rediscovering-the-light", "woven-objective-90902-rediscovering-the-light" },
        },
        {
            id = "level-before-woven-accept-91208-coming-to-terms",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 91208,
            priority = 2370,
        },
        {
            priority = 2380,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Accept Coming to Terms from Aramis Hammerhand in Deathknell.",
            id = "woven-accept-91208-coming-to-terms",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91208, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2390,
            route = {
                { y = 0.638, mapID = 1420, label = "Frightened Paladin", offMapText = "Travel to Frightened Paladin.", x = 0.276 },
            },
            text = "Find the Frightened Paladin in the hills west of the Deathknell chapel.",
            id = "woven-objective-91208-coming-to-terms",
            kind = "objective",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91208, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91208-coming-to-terms" },
        },
        {
            priority = 2400,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Turn in Coming to Terms to Aramis Hammerhand in Deathknell.",
            id = "woven-turnin-91208-coming-to-terms",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91208, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91208-coming-to-terms", "woven-objective-91208-coming-to-terms" },
        },
        {
            priority = 2410,
            route = {
                { y = 0.662, mapID = 1420, label = "Aramis Hammerhand", offMapText = "Travel to Aramis Hammerhand.", x = 0.31 },
            },
            text = "Accept Continue Your Training from Aramis Hammerhand in Deathknell.",
            id = "woven-accept-91209-continue-your-training",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91209, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91208 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-96656-the-adventurer",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 96656,
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96659 },
            priority = 2420,
        },
        {
            priority = 2430,
            route = {
                { y = 0.66, mapID = 1420, label = "Executor Arren", offMapText = "Travel to Executor Arren.", x = 0.32 },
            },
            text = "Accept The Adventurer from Executor Arren in Deathknell.",
            id = "woven-accept-96656-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96656, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2440,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", offMapText = "Travel to Shari Stilwell.", x = 0.602 },
            },
            text = "Turn in Continue Your Training to Shari Stilwell in Brill.",
            id = "woven-turnin-91209-continue-your-training",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91209, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91208 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91209-continue-your-training" },
        },
        {
            priority = 2450,
            route = {
                { y = 0.554, mapID = 1420, label = "Eleanor Shackleton", offMapText = "Travel to Eleanor Shackleton.", x = 0.572 },
            },
            text = "Turn in The Adventurer to Eleanor Shackleton in Brill.",
            id = "woven-turnin-96656-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96656, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96656-the-adventurer" },
        },
        {
            priority = 2460,
            route = {
                { mapID = 1420, x = 0.5722999999999999, y = 0.5547, label = "Eleanor Shackleton", offMapText = "Travel to Eleanor Shackleton." },
            },
            text = "Accept The Great Outdoors from Eleanor Shackleton.",
            id = "woven-accept-96607-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96607, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2470,
            text = "Type /sit beside Eleanor Shackleton's Basic Campfire and wait until you receive the Boosted Rest buff.",
            id = "woven-objective-96607-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96607, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96607-the-great-outdoors" },
            route = {
                { mapID = 1420, x = 0.5722999999999999, y = 0.5547, label = "Eleanor Shackleton", offMapText = "Travel to Eleanor Shackleton." },
            },
        },
        {
            priority = 2480,
            route = {
                { mapID = 1420, x = 0.5722999999999999, y = 0.5547, label = "Eleanor Shackleton", offMapText = "Travel to Eleanor Shackleton." },
            },
            text = "Turn in The Great Outdoors to Eleanor Shackleton.",
            id = "woven-turnin-96607-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96607, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96607-the-great-outdoors", "woven-objective-96607-the-great-outdoors" },
        },
        {
            priority = 2490,
            route = {
                { y = 0.518, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand.", x = 0.606 },
            },
            text = "Accept Discipline from Executor Zygand in Brill.",
            id = "woven-accept-99134-discipline",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99134, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-95314-that-shadowvale-green-elixir",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95314,
            priority = 2500,
        },
        {
            priority = 2510,
            route = {
                { y = 0.522, mapID = 1420, label = "Carolai Anise", offMapText = "Travel to Carolai Anise.", x = 0.594 },
            },
            text = "Accept That Shadowvale Green Elixir from Carolai Anise in Brill.",
            id = "woven-accept-95314-that-shadowvale-green-elixir",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95314, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2520,
            route = {
                { y = 0.49, mapID = 1420, label = "Junior Apothecary Holland", offMapText = "Travel to Junior Apothecary Holland.", x = 0.576 },
            },
            text = "Accept Tomb Weed from Junior Apothecary Holland in Brill.",
            id = "woven-accept-99142-tomb-weed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99142, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5482 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2530,
            route = {
                { y = 0.6, mapID = 1420, label = "Balnir Farmstead", offMapText = "Travel to Balnir Farmstead.", x = 0.75 },
            },
            text = "Collect 5 Tomb Weed at Balnir Farmstead, on the same trip as Rear Guard Patrol.",
            id = "woven-objective-99142-tomb-weed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99142, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5482 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99142-tomb-weed" },
        },
        {
            priority = 2540,
            route = {
                { y = 0.49, mapID = 1420, label = "Junior Apothecary Holland", offMapText = "Travel to Junior Apothecary Holland.", x = 0.576 },
            },
            text = "Turn in Tomb Weed to Junior Apothecary Holland.",
            id = "woven-turnin-99142-tomb-weed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99142, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 5482 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99142-tomb-weed", "woven-objective-99142-tomb-weed" },
        },
        {
            priority = 2550,
            route = {
                { y = 0.518, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand.", x = 0.606 },
            },
            text = "Motivate the Deathguards Executor Zygand named. They stand in Brill and along the roads you are already riding, including Deathknell.",
            id = "woven-objective-99134-discipline",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99134, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99134-discipline" },
        },
        {
            priority = 2560,
            route = {
                { y = 0.518, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand.", x = 0.606 },
            },
            text = "Turn in Discipline to Executor Zygand.",
            id = "woven-turnin-99134-discipline",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99134, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99134-discipline", "woven-objective-99134-discipline" },
        },
        {
            priority = 2570,
            route = {
                { y = 0.518, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand.", x = 0.606 },
            },
            text = "Accept Patience from Executor Zygand.",
            id = "woven-accept-99141-patience",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99141, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2580,
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger.", x = 0.582 },
            },
            text = "Collect reports from Deathguard Dillinger, Deathguard Kristof, and Gordo.",
            id = "woven-objective-99141-patience",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99141, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99141-patience" },
        },
        {
            priority = 2590,
            route = {
                { y = 0.518, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand.", x = 0.606 },
            },
            text = "Turn in Patience to Executor Zygand.",
            id = "woven-turnin-99141-patience",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99141, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99141-patience", "woven-objective-99141-patience" },
        },
        {
            priority = 2600,
            route = {
                { y = 0.6, mapID = 1420, label = "Shelene Rhobart", offMapText = "Travel to Shelene Rhobart.", x = 0.654 },
            },
            text = "Accept Hides for the Forsaken from Shelene Rhobart.",
            id = "woven-accept-97558-hides-for-the-forsaken",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97558, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2610,
            route = {
                { y = 0.6, mapID = 1420, label = "Shelene Rhobart", offMapText = "Travel to Shelene Rhobart.", x = 0.654 },
            },
            text = "Collect 8 Duskbat Wing Membranes, 6 Darkhound Hides, and 3 Vile Fin Murloc Skins.",
            id = "woven-objective-97558-hides-for-the-forsaken",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97558, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97558-hides-for-the-forsaken" },
        },
        {
            priority = 2620,
            route = {
                { y = 0.66, mapID = 1420, label = "Shadowvale", offMapText = "Travel to Shadowvale.", x = 0.11 },
            },
            text = "Collect 8 Bottles of Whispering Elixir in Shadowvale. A Whispering Horror may drop residue. Use it if it does.",
            id = "woven-objective-95314-that-shadowvale-green-elixir",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95314, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95314-that-shadowvale-green-elixir" },
        },
        {
            priority = 2630,
            route = {
                { y = 0.48, mapID = 1420, label = "Bareth Dawnstone", offMapText = "Travel to Bareth Dawnstone.", x = 0.34 },
            },
            text = "Accept Seeking Refuge from Bareth Dawnstone at the top of the tower in Solliden Farmstead.",
            id = "woven-accept-99144-seeking-refuge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99144, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2640,
            route = {
                { y = 0.48, mapID = 1420, label = "Bareth Dawnstone", offMapText = "Travel to Bareth Dawnstone.", x = 0.34 },
            },
            text = "Escort Bareth Dawnstone out of Solliden Farmstead.",
            id = "woven-objective-99144-seeking-refuge",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99144, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99144-seeking-refuge" },
        },
        {
            priority = 2650,
            route = {
                { y = 0.602, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea.", x = 0.654 },
            },
            text = "Accept Rear Guard Patrol from Deathguard Linnea.",
            id = "woven-accept-99156-rear-guard-patrol",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99156, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 356 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2660,
            route = {
                { y = 0.442, mapID = 1420, label = "Riptear", offMapText = "Travel to Riptear.", x = 0.828 },
            },
            text = "Kill Riptear and bring Riptear's Heart to Deathguard Linnea.",
            id = "woven-objective-99156-rear-guard-patrol",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99156, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 356 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99156-rear-guard-patrol" },
        },
        {
            priority = 2670,
            route = {
                { y = 0.602, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea.", x = 0.654 },
            },
            text = "Turn in Rear Guard Patrol to Deathguard Linnea.",
            id = "woven-turnin-99156-rear-guard-patrol",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99156, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 356 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99156-rear-guard-patrol", "woven-objective-99156-rear-guard-patrol" },
        },
        {
            priority = 2680,
            route = {
                { y = 0.6, mapID = 1420, label = "Shelene Rhobart", offMapText = "Travel to Shelene Rhobart.", x = 0.654 },
            },
            text = "Turn in Hides for the Forsaken to Shelene Rhobart.",
            id = "woven-turnin-97558-hides-for-the-forsaken",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97558, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97558-hides-for-the-forsaken", "woven-objective-97558-hides-for-the-forsaken" },
        },
        {
            priority = 2690,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", offMapText = "Travel to Shari Stilwell.", x = 0.602 },
            },
            text = "Turn in Seeking Refuge to Shari Stilwell in Brill.",
            id = "woven-turnin-99144-seeking-refuge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99144, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99144-seeking-refuge", "woven-objective-99144-seeking-refuge" },
        },
        {
            priority = 2700,
            route = {
                { y = 0.522, mapID = 1420, label = "Carolai Anise", offMapText = "Travel to Carolai Anise.", x = 0.594 },
            },
            text = "Turn in That Shadowvale Green Elixir to Carolai Anise in Brill.",
            id = "woven-turnin-95314-that-shadowvale-green-elixir",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95314, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95314-that-shadowvale-green-elixir", "woven-objective-95314-that-shadowvale-green-elixir" },
        },
        {
            id = "level-before-woven-accept-91282-a-second-home",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 91282,
            priority = 2710,
        },
        {
            priority = 2720,
            route = {
                { y = 0.526, mapID = 1420, label = "Shari Stilwell", offMapText = "Travel to Shari Stilwell.", x = 0.602 },
            },
            text = "Accept A Second Home from Shari Stilwell in Brill.",
            id = "woven-accept-91282-a-second-home",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91282, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91209 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2730,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", offMapText = "Travel to Breton Samuels.", x = 0.218 },
            },
            text = "Turn in A Second Home to Breton Samuels at Bandarion Keep.",
            id = "woven-turnin-91282-a-second-home",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91282, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91209 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91282-a-second-home" },
        },
        {
            priority = 2740,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", offMapText = "Travel to Breton Samuels.", x = 0.218 },
            },
            text = "Accept Murlocs at the Gates from Breton Samuels at Bandarion Keep.",
            id = "woven-accept-91285-murlocs-at-the-gates",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91285, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91282 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2750,
            route = {
                { y = 0.582, mapID = 1420, label = "Vile Fin Seer", offMapText = "Travel to Vile Fin Seer.", x = 0.172 },
            },
            text = "Kill Vile Fin Attackers and Vile Fin Seers for Breton Samuels.",
            id = "woven-objective-91285-murlocs-at-the-gates",
            kind = "objective",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91285, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91282 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91285-murlocs-at-the-gates" },
        },
        {
            priority = 2760,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", offMapText = "Travel to Breton Samuels.", x = 0.218 },
            },
            text = "Turn in Murlocs at the Gates to Breton Samuels at Bandarion Keep.",
            id = "woven-turnin-91285-murlocs-at-the-gates",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91285, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91282 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91285-murlocs-at-the-gates", "woven-objective-91285-murlocs-at-the-gates" },
        },
        {
            priority = 2770,
            route = {
                { y = 0.452, mapID = 1420, label = "Breton Samuels", offMapText = "Travel to Breton Samuels.", x = 0.218 },
            },
            text = "Accept Touring the Grounds from Breton Samuels at Bandarion Keep.",
            id = "woven-accept-91294-touring-the-grounds",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91294, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91285 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2780,
            route = {
                { y = 0.472, mapID = 1420, label = "Hilda the Breaker", offMapText = "Travel to Hilda the Breaker.", x = 0.22 },
            },
            text = "Speak with Danitha Morr, Hilda the Breaker, Jorin Croge, and Ander Solliden at Bandarion Keep.",
            id = "woven-objective-91294-touring-the-grounds",
            kind = "objective",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91294, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91285 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91294-touring-the-grounds" },
        },
        {
            priority = 2790,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Turn in Touring the Grounds to Danitha Morr at Bandarion Keep.",
            id = "woven-turnin-91294-touring-the-grounds",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91294, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91285 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91294-touring-the-grounds", "woven-objective-91294-touring-the-grounds" },
        },
        {
            priority = 2800,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", offMapText = "Travel to Jorin Croge.", x = 0.226 },
            },
            text = "Accept Making Repairs from Jorin Croge at Bandarion Keep.",
            id = "woven-accept-91316-making-repairs",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91316, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-91317-the-tarnished",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 91317,
            priority = 2810,
        },
        {
            priority = 2820,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Accept The Tarnished from Danitha Morr at Bandarion Keep.",
            id = "woven-accept-91317-the-tarnished",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91317, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91294 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            priority = 2830,
            id = "woven-objective-91316-making-repairs",
            useClientPin = true,
            dependsOn = { "woven-accept-91316-making-repairs" },
            classAction = "objective-91316-making-repairs",
        },
        {
            priority = 2840,
            route = {
                { y = 0.642, mapID = 1420, label = "Rudolph Gelhardt", offMapText = "Travel to Rudolph Gelhardt.", x = 0.116 },
            },
            text = "The Tarnished: Rudolph Gelhardt's Head.",
            id = "woven-objective-91317-the-tarnished",
            kind = "objective",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91317, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91294 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91317-the-tarnished" },
        },
        {
            priority = 2850,
            route = {
                { y = 0.448, mapID = 1420, label = "Jorin Croge", offMapText = "Travel to Jorin Croge.", x = 0.226 },
            },
            text = "Turn in Making Repairs to Jorin Croge at Bandarion Keep.",
            id = "woven-turnin-91316-making-repairs",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91316, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91316-making-repairs", "woven-objective-91316-making-repairs" },
        },
        {
            priority = 2860,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Turn in The Tarnished to Danitha Morr at Bandarion Keep.",
            id = "woven-turnin-91317-the-tarnished",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 91317, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91294 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-91317-the-tarnished", "woven-objective-91317-the-tarnished" },
        },
        {
            priority = 2870,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Accept A Token of Good Faith from Danitha Morr at Bandarion Keep.",
            id = "woven-accept-95803-a-token-of-good-faith",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95803, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91317 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2880,
            route = {
                { y = 0.918, mapID = 1458, label = "Lady Sylvanas Windrunner", offMapText = "Travel to Lady Sylvanas Windrunner.", x = 0.578 },
            },
            text = "Turn in A Token of Good Faith to Lady Sylvanas Windrunner in the Royal Quarter.",
            id = "woven-turnin-95803-a-token-of-good-faith",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95803, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91317 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95803-a-token-of-good-faith" },
        },
        {
            id = "level-before-woven-accept-94427-a-lesson-in-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94427,
            priority = 2890,
        },
        {
            priority = 2900,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr at Bandarion Keep.",
            id = "woven-accept-94427-a-lesson-in-divinity",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94427, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91317 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2910,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", offMapText = "Travel to Tanis Alderwood.", x = 0.656 },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in the Undercity.",
            id = "woven-turnin-94427-a-lesson-in-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94427, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 91317 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94427-a-lesson-in-divinity" },
        },
        {
            priority = 2920,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", offMapText = "Travel to Tanis Alderwood.", x = 0.656 },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in the Undercity.",
            id = "woven-accept-94434-a-lesson-in-divinity-undercity",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94434, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94427 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            priority = 2930,
            id = "woven-objective-94434-a-lesson-in-divinity-undercity",
            useClientPin = true,
            dependsOn = { "woven-accept-94434-a-lesson-in-divinity-undercity" },
            classAction = "objective-94434-a-lesson-in-divinity",
        },
        {
            priority = 2940,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", offMapText = "Travel to Tanis Alderwood.", x = 0.656 },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in the Undercity.",
            id = "woven-turnin-94434-a-lesson-in-divinity-undercity",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94434, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94427 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-94434-a-lesson-in-divinity-undercity",
                "woven-objective-94434-a-lesson-in-divinity-undercity",
            },
        },
        {
            priority = 2950,
            route = {
                { y = 0.378, mapID = 1458, label = "Tanis Alderwood", offMapText = "Travel to Tanis Alderwood.", x = 0.656 },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in the Undercity.",
            id = "woven-accept-94435-a-lesson-in-divinity-return",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94435, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94434 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2960,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr at Bandarion Keep.",
            id = "woven-turnin-94435-a-lesson-in-divinity-return",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94435, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94434 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94435-a-lesson-in-divinity-return" },
        },
        {
            priority = 2970,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr at Bandarion Keep.",
            id = "woven-accept-94436-a-lesson-in-divinity-billmuth",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94436, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94435 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2980,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", offMapText = "Travel to Deathguard Billmuth.", x = 0.22 },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth at Bandarion Keep.",
            id = "woven-turnin-94436-a-lesson-in-divinity-billmuth",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94436, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94435 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94436-a-lesson-in-divinity-billmuth" },
        },
        {
            priority = 2990,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", offMapText = "Travel to Deathguard Billmuth.", x = 0.22 },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth at Bandarion Keep.",
            id = "woven-accept-94438-a-lesson-in-divinity-falgan",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94438, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94436 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3000,
            id = "objective-94438-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-94438-a-lesson-in-divinity-falgan" },
            classAction = "objective-94438-reviewed-mechanics",
        },
        {
            priority = 3010,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", offMapText = "Travel to Deathguard Falgan.", x = 0.866 },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Falgan.",
            id = "woven-turnin-94438-a-lesson-in-divinity-falgan",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94438, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94436 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94438-a-lesson-in-divinity-falgan", "objective-94438-reviewed-mechanics" },
        },
        {
            priority = 3020,
            route = {
                { y = 0.476, mapID = 1420, label = "Deathguard Falgan", offMapText = "Travel to Deathguard Falgan.", x = 0.866 },
            },
            text = "Accept A Lesson in Divinity from Deathguard Falgan.",
            id = "woven-accept-94440-a-lesson-in-divinity-scarlets",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94440, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94438 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3030,
            id = "woven-objective-94440-a-lesson-in-divinity-scarlets",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-94440-a-lesson-in-divinity-scarlets" },
            classAction = "objective-94440-a-lesson-in-divinity",
        },
        {
            priority = 3040,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", offMapText = "Travel to Deathguard Billmuth.", x = 0.22 },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth at Bandarion Keep.",
            id = "woven-turnin-94440-a-lesson-in-divinity-scarlets",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94440, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94438 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94440-a-lesson-in-divinity-scarlets", "woven-objective-94440-a-lesson-in-divinity-scarlets" },
        },
        {
            priority = 3050,
            route = {
                { y = 0.446, mapID = 1420, label = "Deathguard Billmuth", offMapText = "Travel to Deathguard Billmuth.", x = 0.22 },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth at Bandarion Keep.",
            id = "woven-accept-94441-a-lesson-in-divinity-done",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94441, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94440 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3060,
            route = {
                { y = 0.446, mapID = 1420, label = "Danitha Morr", offMapText = "Travel to Danitha Morr.", x = 0.22 },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr at Bandarion Keep.",
            id = "woven-turnin-94441-a-lesson-in-divinity-done",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 94441, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94440 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94441-a-lesson-in-divinity-done" },
        },
        {
            id = "level-before-woven-accept-96895-the-argent-emissary",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 96895,
            priority = 3070,
        },
        {
            priority = 3080,
            route = {
                { y = 0.534, mapID = 1420, label = "Deathguard Terrence", offMapText = "Travel to Deathguard Terrence.", x = 0.614 },
            },
            text = "Accept The Argent Emissary from Deathguard Terrence in Brill.",
            id = "woven-accept-96895-the-argent-emissary",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96895, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3090,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Turn in The Argent Emissary to Hadric Harlson, on the road toward the Undercity.",
            id = "woven-turnin-96895-the-argent-emissary",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96895, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96895-the-argent-emissary" },
        },
        {
            priority = 3100,
            route = {
                { y = 0.448, mapID = 1420, label = "Leonid Barthalomew the Revered", offMapText = "Travel to Leonid Barthalomew the Revered.", x = 0.22 },
            },
            text = "Accept A Righteous Cause from Leonid Barthalomew the Revered.",
            id = "woven-accept-96896-a-righteous-cause",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96896, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3110,
            route = {
                { y = 0.448, mapID = 1420, label = "Leonid Barthalomew the Revered", offMapText = "Travel to Leonid Barthalomew the Revered.", x = 0.22 },
            },
            text = "Observe the conversation between Danitha Morr and Leonid Barthalomew.",
            id = "woven-objective-96896-a-righteous-cause",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96896, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96896-a-righteous-cause" },
        },
        {
            priority = 3120,
            route = {
                { y = 0.448, mapID = 1420, label = "Leonid Barthalomew the Revered", offMapText = "Travel to Leonid Barthalomew the Revered.", x = 0.22 },
            },
            text = "Turn in A Righteous Cause to Leonid Barthalomew the Revered.",
            id = "woven-turnin-96896-a-righteous-cause",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96896, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96896-a-righteous-cause", "woven-objective-96896-a-righteous-cause" },
        },
        {
            priority = 3130,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Accept The Cult of the Damned from Hadric Harlson.",
            id = "woven-accept-96897-the-cult-of-the-damned",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96897, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3140,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Accept Remnants of War from Hadric Harlson.",
            id = "woven-accept-96898-remnants-of-war",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96898, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3150,
            route = {
                { y = 0.654, mapID = 1420, label = "Dark Neophyte", offMapText = "Travel to Dark Neophyte.", x = 0.666 },
            },
            text = "Kill 8 Dark Neophytes and 8 Dark Enforcers.",
            id = "woven-objective-96897-the-cult-of-the-damned",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96897, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96897-the-cult-of-the-damned" },
        },
        {
            priority = 3160,
            route = {
                { y = 0.654, mapID = 1420, label = "Dark Neophyte", offMapText = "Travel to Dark Neophyte.", x = 0.666 },
            },
            text = "Gather 12 Necrotic Crystal Fragments.",
            id = "woven-objective-96898-remnants-of-war",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96898, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96898-remnants-of-war" },
        },
        {
            priority = 3170,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Turn in The Cult of the Damned to Hadric Harlson.",
            id = "woven-turnin-96897-the-cult-of-the-damned",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96897, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96897-the-cult-of-the-damned", "woven-objective-96897-the-cult-of-the-damned" },
        },
        {
            priority = 3180,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Turn in Remnants of War to Hadric Harlson.",
            id = "woven-turnin-96898-remnants-of-war",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96898, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96898-remnants-of-war", "woven-objective-96898-remnants-of-war" },
        },
        {
            priority = 3190,
            route = {
                { y = 0.61, mapID = 1420, label = "Hadric Harlson", offMapText = "Travel to Hadric Harlson.", x = 0.658 },
            },
            text = "Accept Bandarion Keep from Hadric Harlson.",
            id = "woven-accept-96899-bandarion-keep",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96899, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3200,
            route = {
                { y = 0.448, mapID = 1420, label = "Leonid Barthalomew the Revered", offMapText = "Travel to Leonid Barthalomew the Revered.", x = 0.22 },
            },
            text = "Turn in Bandarion Keep to Leonid Barthalomew the Revered.",
            id = "woven-turnin-96899-bandarion-keep",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96899, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96899-bandarion-keep" },
        },
        {
            priority = 3210,
            route = {
                { y = 0.472, mapID = 1420, label = "Hilda the Breaker", offMapText = "Travel to Hilda the Breaker.", x = 0.22 },
            },
            text = "Accept As Above, So Below from Hilda the Breaker at Bandarion Keep.",
            id = "woven-accept-99152-as-above-so-below",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99152, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3220,
            route = {
                { y = 0.464, mapID = 1420, label = "Ephram Barbaro", offMapText = "Travel to Ephram Barbaro.", x = 0.202 },
            },
            text = "Accept The One That Got Away from Ephram Barbaro at Bandarion Keep.",
            id = "woven-accept-99153-the-one-that-got-away",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99153, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3230,
            route = {
                { y = 0.65, mapID = 1420, label = "Shadowvale cellars", offMapText = "Travel to the burned house entrance to the Shadowvale cellars.", x = 0.13 },
                { y = 0.694, mapID = 1420, label = "Shadowvale cellars", offMapText = "Travel into the Shadowvale cellars.", x = 0.097 },
            },
            text = "Collect 6 Faintly Glowing Bones from Shadowvale Lurchers and Shadowvale Mystics in the Shadowvale cellars. The Glowing Crystal Fragment for The One That Got Away is in the same cellar.",
            id = "woven-objective-99152-as-above-so-below",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99152, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99152-as-above-so-below" },
        },
        {
            priority = 3240,
            route = {
                { y = 0.65, mapID = 1420, label = "Shadowvale cellars", offMapText = "Travel to the burned house entrance to the Shadowvale cellars.", x = 0.13 },
                { y = 0.694, mapID = 1420, label = "Glowing Crystal Fragment", offMapText = "Travel to the Glowing Crystal Fragment.", x = 0.097 },
            },
            text = "Pick up the Glowing Crystal Fragment in the Shadowvale cellars.",
            id = "woven-objective-99153-the-one-that-got-away",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99153, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99153-the-one-that-got-away" },
        },
        {
            priority = 3250,
            route = {
                { y = 0.472, mapID = 1420, label = "Hilda the Breaker", offMapText = "Travel to Hilda the Breaker.", x = 0.22 },
            },
            text = "Turn in As Above, So Below to Hilda the Breaker at Bandarion Keep.",
            id = "woven-turnin-99152-as-above-so-below",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99152, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99152-as-above-so-below", "woven-objective-99152-as-above-so-below" },
        },
        {
            priority = 3260,
            route = {
                { y = 0.464, mapID = 1420, label = "Ephram Barbaro", offMapText = "Travel to Ephram Barbaro.", x = 0.202 },
            },
            text = "Turn in The One That Got Away to Ephram Barbaro at Bandarion Keep.",
            id = "woven-turnin-99153-the-one-that-got-away",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99153, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 96899 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99153-the-one-that-got-away", "woven-objective-99153-the-one-that-got-away" },
        },
        {
            priority = 3270,
            route = {
                { y = 0.448, mapID = 1420, label = "Leonid Barthalomew the Revered", offMapText = "Travel to Leonid Barthalomew the Revered.", x = 0.22 },
            },
            text = "Accept Leonid's Letter from Leonid Barthalomew.",
            id = "woven-accept-98545-leonid-s-letter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98545, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3280,
            route = {
                { y = 0.47, mapID = 1458, label = "Glix Xizzix", offMapText = "Travel to Glix Xizzix.", x = 0.698 },
            },
            text = "Deliver it to Glix Xizzix in the Undercity.",
            id = "woven-turnin-98545-leonids-letter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98545, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98545-leonid-s-letter" },
        },
        {
            id = "loot-starter-before-accept-95328-verified-pickup",
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
            text = "Loot Whispering Horror Residue from Whispering Horror. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Whispering Horror Residue", minCount = 1 },
                    },
                    {
                        quest = { id = 95328, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1420, x = 0.0857, y = 0.5958, label = "Whispering Horror", offMapText = "Travel to Whispering Horror." },
            },
            dependsOn = {},
            priority = 3290,
        },
        {
            priority = 3300,
            text = "Use the Whispering Horror Residue to accept Whispering Horror Residue.",
            id = "accept-95328-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95328, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3310,
            text = "For Whispering Horror Residue: Deliver Whispering Horror Residue to Father Lankester in the War Quarter of Undercity.",
            id = "objective-95328-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95328, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-95328-verified-pickup" },
        },
        {
            priority = 3320,
            route = {
                { y = 0.156, mapID = 1458, label = "Father Lankester", offMapText = "Travel to Father Lankester.", x = 0.496 },
            },
            text = "Turn in Whispering Horror Residue to Father Lankester in the War Quarter if you found it.",
            id = "woven-turnin-95328-whispering-horror-residue",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95328, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-95328-quest-work", "accept-95328-verified-pickup" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Horde = "leveling-casual-horde" },
})
