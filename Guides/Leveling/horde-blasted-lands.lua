local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Blasted Lands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-blasted-lands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 50 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-2581-snickerfang-jowls",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2581,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept Snickerfang Jowls from Bloodmage Drazial.",
            id = "accept-2581-snickerfang-jowls",
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
                quest = { id = 2581, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept A Boar's Vitality from Bloodmage Drazial.",
            id = "accept-2583-a-boar-s-vitality",
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
                quest = { id = 2583, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            text = "Accept The Decisive Striker from Bloodmage Drazial.",
            id = "accept-2585-the-decisive-striker",
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
                quest = { id = 2585, state = "activeOrCompleted" },
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
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            text = "Accept The Basilisk's Bite from Bloodmage Lynnore.",
            id = "accept-2601-the-basilisk-s-bite",
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
                quest = { id = 2601, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            text = "Accept Vulture's Vigor from Bloodmage Lynnore.",
            id = "accept-2603-vulture-s-vigor",
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
                quest = { id = 2603, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            text = "Accept Everything Counts In Large Amounts from Kum'isha the Collector.",
            id = "accept-3501-everything-counts-in-large-amounts",
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
                quest = { id = 3501, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            text = "Accept To Serve Kum'isha from Kum'isha the Collector.",
            id = "accept-2521-to-serve-kum-isha",
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
                quest = { id = 2521, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "For Everything Counts In Large Amounts: Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.",
            id = "objective-3501-quest-work",
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
                quest = { id = 3501, state = "complete" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3501-everything-counts-in-large-amounts" },
        },
        {
            priority = 100,
            text = "Turn in Everything Counts In Large Amounts to Kum'isha the Collector.",
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            dependsOn = { "accept-3501-everything-counts-in-large-amounts", "objective-3501-quest-work" },
            id = "turnin-3501-everything-counts-in-large-amounts",
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
                quest = { id = 3501, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "For To Serve Kum'isha: In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector. Be warned, this gem is one of the most rare crystals in all of Azeroth. Any creature in these lands could be holding a Flawless Draenethyst Sphere. You will be rewarded for each Flawless Draenethyst Sphere you have collected.",
            id = "objective-2521-quest-work",
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
                quest = { id = 2521, state = "complete" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2521-to-serve-kum-isha" },
        },
        {
            priority = 120,
            text = "Turn in To Serve Kum'isha to Kum'isha the Collector.",
            route = {
                { y = 0.3564, mapID = 1419, label = "Kum'isha the Collector", offMapText = "Travel to Kum'isha the Collector in Blasted Lands.", x = 0.518 },
            },
            dependsOn = { "accept-2521-to-serve-kum-isha", "objective-2521-quest-work" },
            id = "turnin-2521-to-serve-kum-isha",
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
                quest = { id = 2521, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "For The Basilisk's Bite: Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.",
            id = "objective-2601-quest-work",
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
                quest = { id = 2601, state = "complete" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2601-the-basilisk-s-bite" },
        },
        {
            priority = 140,
            text = "Turn in The Basilisk's Bite to Bloodmage Lynnore.",
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            dependsOn = { "accept-2601-the-basilisk-s-bite", "objective-2601-quest-work" },
            id = "turnin-2601-the-basilisk-s-bite",
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
                quest = { id = 2601, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "For Vulture's Vigor: Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.",
            id = "objective-2603-quest-work",
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
                quest = { id = 2603, state = "complete" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2603-vulture-s-vigor" },
        },
        {
            priority = 160,
            text = "Turn in Vulture's Vigor to Bloodmage Lynnore.",
            route = {
                { y = 0.143, mapID = 1419, label = "Bloodmage Lynnore", offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.", x = 0.5064 },
            },
            dependsOn = { "accept-2603-vulture-s-vigor", "objective-2603-quest-work" },
            id = "turnin-2603-vulture-s-vigor",
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
                quest = { id = 2603, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "For Snickerfang Jowls: Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.",
            id = "objective-2581-quest-work",
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
                quest = { id = 2581, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2581-snickerfang-jowls" },
        },
        {
            priority = 180,
            text = "Turn in Snickerfang Jowls to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2581-snickerfang-jowls", "objective-2581-quest-work" },
            id = "turnin-2581-snickerfang-jowls",
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
                quest = { id = 2581, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "For A Boar's Vitality: Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.",
            id = "objective-2583-quest-work",
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
                quest = { id = 2583, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2583-a-boar-s-vitality" },
        },
        {
            priority = 200,
            text = "Turn in A Boar's Vitality to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2583-a-boar-s-vitality", "objective-2583-quest-work" },
            id = "turnin-2583-a-boar-s-vitality",
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
                quest = { id = 2583, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "For The Decisive Striker: Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.",
            id = "objective-2585-quest-work",
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
                quest = { id = 2585, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2585-the-decisive-striker" },
        },
        {
            priority = 220,
            text = "Turn in The Decisive Striker to Bloodmage Drazial.",
            route = {
                { y = 0.1421, mapID = 1419, label = "Bloodmage Drazial", offMapText = "Travel to Bloodmage Drazial in Blasted Lands.", x = 0.5055 },
            },
            dependsOn = { "accept-2585-the-decisive-striker", "objective-2585-quest-work" },
            id = "turnin-2585-the-decisive-striker",
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
                quest = { id = 2585, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
