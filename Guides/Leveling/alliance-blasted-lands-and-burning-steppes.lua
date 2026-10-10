local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Blasted Lands & Burning Steppes",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-blasted-lands-and-burning-steppes",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 51 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-2783-petty-squabbles",
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
            checkpointQuest = 2783,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.1929, mapID = 1419, label = "Ambassador Ardalan", offMapText = "Travel to Ambassador Ardalan in Blasted Lands.", x = 0.6757 },
            },
            text = "Accept Petty Squabbles from Ambassador Ardalan.",
            id = "accept-2783-petty-squabbles",
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
                quest = { id = 2783, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "Turn in Petty Squabbles to Fallen Hero of the Horde.",
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            dependsOn = { "accept-2783-petty-squabbles" },
            id = "turnin-2783-petty-squabbles",
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
                quest = { id = 2783, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2801-a-tale-of-sorrow",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2801,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            text = "Accept A Tale of Sorrow from Fallen Hero of the Horde.",
            id = "accept-2801-a-tale-of-sorrow",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2801, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Speak with the Fallen Hero of the Horde and ask him to continue his story. Follow the conversation until the quest is ready to turn in.",
            id = "objective-2801-quest-work",
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
                quest = { id = 2801, state = "complete" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2801-a-tale-of-sorrow" },
        },
        {
            priority = 70,
            text = "Turn in A Tale of Sorrow to Fallen Hero of the Horde.",
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            dependsOn = { "accept-2801-a-tale-of-sorrow", "objective-2801-quest-work" },
            id = "turnin-2801-a-tale-of-sorrow",
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
                quest = { id = 2801, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2623, 2783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept Snickerfang Jowls from Bloodmage Drazial.",
            id = "accept-2581-snickerfang-jowls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2581, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept A Boar's Vitality from Bloodmage Drazial.",
            id = "accept-2583-a-boar-s-vitality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2583, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept The Decisive Striker from Bloodmage Drazial.",
            id = "accept-2585-the-decisive-striker",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2585, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            text = "Accept The Basilisk's Bite from Bloodmage Lynnore.",
            id = "accept-2601-the-basilisk-s-bite",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2601, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            text = "Accept Vulture's Vigor from Bloodmage Lynnore.",
            id = "accept-2603-vulture-s-vigor",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2603, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            text = "Accept Everything Counts In Large Amounts from Kum'isha the Collector.",
            id = "accept-3501-everything-counts-in-large-amounts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3501, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            text = "Accept To Serve Kum'isha from Kum'isha the Collector.",
            id = "accept-2521-to-serve-kum-isha",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 2521, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "For Everything Counts In Large Amounts: Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.",
            id = "objective-3501-quest-work",
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
                quest = { id = 3501, state = "complete" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3501-everything-counts-in-large-amounts" },
        },
        {
            priority = 160,
            text = "Turn in Everything Counts In Large Amounts to Kum'isha the Collector.",
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            dependsOn = { "accept-3501-everything-counts-in-large-amounts", "objective-3501-quest-work" },
            id = "turnin-3501-everything-counts-in-large-amounts",
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
                quest = { id = 3501, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "For To Serve Kum'isha: In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector. Be warned, this gem is one of the most rare crystals in all of Azeroth. Any creature in these lands could be holding a Flawless Draenethyst Sphere. You will be rewarded for each Flawless Draenethyst Sphere you have collected.",
            id = "objective-2521-quest-work",
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
                quest = { id = 2521, state = "complete" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2521-to-serve-kum-isha" },
        },
        {
            priority = 180,
            text = "Turn in To Serve Kum'isha to Kum'isha the Collector.",
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            dependsOn = { "accept-2521-to-serve-kum-isha", "objective-2521-quest-work" },
            id = "turnin-2521-to-serve-kum-isha",
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
                quest = { id = 2521, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "For The Basilisk's Bite: Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.",
            id = "objective-2601-quest-work",
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
                quest = { id = 2601, state = "complete" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2601-the-basilisk-s-bite" },
        },
        {
            priority = 200,
            text = "Turn in The Basilisk's Bite to Bloodmage Lynnore.",
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            dependsOn = { "accept-2601-the-basilisk-s-bite", "objective-2601-quest-work" },
            id = "turnin-2601-the-basilisk-s-bite",
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
                quest = { id = 2601, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "For Vulture's Vigor: Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.",
            id = "objective-2603-quest-work",
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
                quest = { id = 2603, state = "complete" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2603-vulture-s-vigor" },
        },
        {
            priority = 220,
            text = "Turn in Vulture's Vigor to Bloodmage Lynnore.",
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            dependsOn = { "accept-2603-vulture-s-vigor", "objective-2603-quest-work" },
            id = "turnin-2603-vulture-s-vigor",
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
                quest = { id = 2603, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "For Snickerfang Jowls: Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.",
            id = "objective-2581-quest-work",
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
                quest = { id = 2581, state = "complete" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2581-snickerfang-jowls" },
        },
        {
            priority = 240,
            text = "Turn in Snickerfang Jowls to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2581-snickerfang-jowls", "objective-2581-quest-work" },
            id = "turnin-2581-snickerfang-jowls",
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
                quest = { id = 2581, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "For A Boar's Vitality: Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.",
            id = "objective-2583-quest-work",
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
                quest = { id = 2583, state = "complete" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2583-a-boar-s-vitality" },
        },
        {
            priority = 260,
            text = "Turn in A Boar's Vitality to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2583-a-boar-s-vitality", "objective-2583-quest-work" },
            id = "turnin-2583-a-boar-s-vitality",
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
                quest = { id = 2583, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "For The Decisive Striker: Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.",
            id = "objective-2585-quest-work",
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
                quest = { id = 2585, state = "complete" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2585-the-decisive-striker" },
        },
        {
            priority = 280,
            text = "Turn in The Decisive Striker to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2585-the-decisive-striker", "objective-2585-quest-work" },
            id = "turnin-2585-the-decisive-striker",
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
                quest = { id = 2585, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.6868, mapID = 1428, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456 },
            },
            text = "Accept Extinguish the Firegut from Oralius.",
            id = "accept-3823-extinguish-the-firegut",
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
                quest = { id = 3823, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Kill 7 Firegut Ogre.",
            route = {
                { y = 0.5, mapID = 1428, label = "Firegut Ogre", offMapText = "Travel to Firegut Ogre.", x = 0.756 },
            },
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            id = "objective-3823-2-firegut-ogre",
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
                questObjective = { id = 3823, text = "Firegut Ogre", index = 2, count = 7 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Kill 7 Firegut Brute.",
            route = {
                { y = 0.5, mapID = 1428, label = "Firegut Brute", offMapText = "Travel to Firegut Brute.", x = 0.756 },
            },
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            id = "objective-3823-3-firegut-brute",
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
                questObjective = { id = 3823, text = "Firegut Brute", index = 3, count = 7 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Kill 15 Firegut Ogre Mage.",
            route = {
                { y = 0.5, mapID = 1428, label = "Firegut Ogre Mage", offMapText = "Travel to Firegut Ogre Mage.", x = 0.756 },
            },
            dependsOn = { "accept-3823-extinguish-the-firegut" },
            id = "objective-3823-1-firegut-ogre-mage",
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
                questObjective = { id = 3823, text = "Firegut Ogre Mage", index = 1, count = 15 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in Extinguish the Firegut to Oralius.",
            route = {
                { mapID = 1428, x = 0.8456, y = 0.6868000000000001, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes." },
            },
            dependsOn = {
                "accept-3823-extinguish-the-firegut",
                "objective-3823-2-firegut-ogre",
                "objective-3823-3-firegut-brute",
                "objective-3823-1-firegut-ogre-mage",
            },
            id = "turnin-3823-extinguish-the-firegut",
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
                quest = { id = 3823, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.2337, mapID = 1455, label = "Laris Geardawdle", offMapText = "Travel to Laris Geardawdle in Ironforge.", x = 0.7577 },
            },
            text = "Accept A Little Slime Goes a Long Way from Laris Geardawdle.",
            id = "accept-4512-a-little-slime-goes-a-long-way",
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
                quest = { id = 4512, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.148, mapID = 1455, label = "Curator Thorius", offMapText = "Travel to Curator Thorius in Ironforge.", x = 0.712 },
            },
            text = "Turn in Proof of Deed to Curator Thorius.",
            id = "turnin-3182-proof-of-deed",
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
                quest = { id = 3182, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { y = 0.148, mapID = 1455, label = "Curator Thorius", offMapText = "Travel to Curator Thorius in Ironforge.", x = 0.712 },
            },
            text = "Turn in Suntara Stones to Curator Thorius.",
            id = "turnin-3368-suntara-stones",
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
                quest = { id = 3368, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { y = 0.148, mapID = 1455, label = "Curator Thorius", offMapText = "Travel to Curator Thorius in Ironforge.", x = 0.712 },
            },
            text = "Accept At Last! from Curator Thorius.",
            id = "accept-3201-at-last",
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
                quest = { id = 3201, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            route = {
                { y = 0.1184, mapID = 1455, label = "Historian Karnik", offMapText = "Travel to Historian Karnik in Ironforge.", x = 0.7755 },
            },
            text = "Accept Passing the Burden from Historian Karnik.",
            id = "accept-3448-passing-the-burden",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3448, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Turn in Passing the Burden to Tymor.",
            route = {
                { y = 0.0481, mapID = 1455, label = "Tymor", offMapText = "Travel to Tymor in Ironforge.", x = 0.3097 },
            },
            dependsOn = { "accept-3448-passing-the-burden" },
            id = "turnin-3448-passing-the-burden",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3448, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.0481, mapID = 1455, label = "Tymor", offMapText = "Travel to Tymor in Ironforge.", x = 0.3097 },
            },
            text = "Accept Arcane Runes from Tymor.",
            id = "accept-3449-arcane-runes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3449, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            route = {
                { y = 0.0481, mapID = 1455, label = "Tymor", offMapText = "Travel to Tymor in Ironforge.", x = 0.3097 },
            },
            text = "Accept An Easy Pickup from Tymor.",
            id = "accept-3450-an-easy-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3450, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { y = 0.5146, mapID = 1455, label = "Innkeeper Firebrew", offMapText = "Travel to Innkeeper Firebrew in Ironforge.", x = 0.1815 },
            },
            text = "Accept Assisting Arch Druid Staghelm from Innkeeper Firebrew.",
            id = "accept-3790-assisting-arch-druid-staghelm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3790, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            alternativeQuests = { 3763, 3789 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { y = 0.6014, mapID = 1455, label = "Wildkin Feather", offMapText = "Travel to Wildkin Feather.", x = 0.3592 },
            },
            text = "Collect 15 Wildkin Feather.",
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
            complete = {
                questObjective = { id = 3661, text = "Wildkin Feather", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Turn in An Easy Pickup to Xiggs Fuselighter.",
            route = {
                { y = 0.9457, mapID = 1455, label = "Xiggs Fuselighter", offMapText = "Travel to Xiggs Fuselighter in Ironforge.", x = 0.7087 },
            },
            dependsOn = { "accept-3450-an-easy-pickup" },
            id = "turnin-3450-an-easy-pickup",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3450, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.9457, mapID = 1455, label = "Xiggs Fuselighter", offMapText = "Travel to Xiggs Fuselighter in Ironforge.", x = 0.7087 },
            },
            text = "Accept Signal for Pickup from Xiggs Fuselighter.",
            id = "accept-3451-signal-for-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3451, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3450 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Signal for Pickup to Xiggs Fuselighter.",
            route = {
                { y = 0.9457, mapID = 1455, label = "Xiggs Fuselighter", offMapText = "Travel to Xiggs Fuselighter in Ironforge.", x = 0.7087 },
            },
            dependsOn = { "accept-3451-signal-for-pickup" },
            id = "turnin-3451-signal-for-pickup",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3451, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3450 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Accept A Call to Arms: The Plaguelands! from Courier Hammerfall.",
            id = "accept-5090-a-call-to-arms-the-plaguelands",
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
                quest = { id = 5090, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {},
            alternativeQuests = { 5066, 5091 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in At Last! to Mountaineer Pebblebitty.",
            route = {
                { y = 0.84, mapID = 1432, label = "Mountaineer Pebblebitty", offMapText = "Travel to Mountaineer Pebblebitty in Loch Modan.", x = 0.1819 },
            },
            dependsOn = { "accept-3201-at-last" },
            id = "turnin-3201-at-last",
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
                quest = { id = 3201, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.4448, mapID = 1425, label = "Gryphon Master Talonaxe", offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.", x = 0.0976 },
            },
            text = "Turn in The Altar of Zul to Gryphon Master Talonaxe.",
            id = "turnin-2989-the-altar-of-zul",
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
                quest = { id = 2989, state = "completed" },
            },
            sourceStep = 47,
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
            priority = 500,
            route = {
                { mapID = 1425, x = 0.486, y = 0.426, label = "Green Sludge", offMapText = "Travel to Green Sludge." },
            },
            text = "For Skulk Rock Clean-up: Kill 10 Green Sludges and 10 Jade Oozes.",
            id = "objective-2877-quest-work",
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
                quest = { id = 2877, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            route = {
                { y = 0.4456, mapID = 1425, label = "Fraggar Thundermantle", offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.", x = 0.1483 },
            },
            text = "Turn in Skulk Rock Clean-up to Fraggar Thundermantle.",
            id = "turnin-2877-skulk-rock-clean-up",
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
                quest = { id = 2877, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2877-quest-work" },
        },
        {
            id = "objective-2641-1-violet-tragan",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            text = "Collect 1 Violet Tragan.",
            complete = {
                questObjective = { id = 2641, index = 1, text = "Violet Tragan", count = 1 },
            },
            route = {
                { mapID = 1425, x = 0.41009999999999996, y = 0.5977, label = "Violet Tragan", offMapText = "Travel to Violet Tragan." },
            },
            sourceStep = 49,
            priority = 520,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
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
                { y = 0.4681, mapID = 1425, label = "Cortello's Riddle", offMapText = "Travel to Cortello's Riddle.", x = 0.8081 },
            },
            text = "Turn in Cortello's Riddle.",
            id = "turnin-626-cortello-s-riddle",
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
                quest = { id = 626, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 625 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
