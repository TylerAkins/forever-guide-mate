local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tanaris",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-tanaris-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 42 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-992-gadgetzan-water-survey",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 992,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            id = "accept-992-gadgetzan-water-survey",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-654-tanaris-field-sampling",
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
            text = "Loot Model 4711-FTZ Power Source from Model 4711-FTZ Power Source. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Model 4711-FTZ Power Source", minCount = 1 },
                    },
                    {
                        quest = { id = 654, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 30,
        },
        {
            id = "level-before-accept-654-tanaris-field-sampling",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 654,
            priority = 40,
        },
        {
            priority = 50,
            text = "Use the Model 4711-FTZ Power Source to accept Tanaris Field Sampling.",
            id = "accept-654-tanaris-field-sampling",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 654, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            route = {
                { y = 0.2917, mapID = 1446, label = "Untapped Dowsing Widget", offMapText = "Travel to Untapped Dowsing Widget.", x = 0.3909 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey" },
            id = "objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                questObjective = { id = 992, text = "Untapped Dowsing Widget", index = 1, count = 1 },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-654-3-acceptable-scorpid-sample",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill Scorpid Hunters and loot Untested Scorpid Samples. Use each sample to test it until you have 8 Acceptable Scorpid Samples.",
            complete = {
                questObjective = { id = 654, index = 3, count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.532, y = 0.312, label = "Scorpid Hunters", offMapText = "Travel to Scorpid Hunters." },
            },
            sourceStep = 7,
            priority = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-654-tanaris-field-sampling" },
        },
        {
            id = "objective-654-2-acceptable-hyena-sample",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill Starving Blisterpaws and loot Untested Hyena Samples. Use each sample to test it until you have 8 Acceptable Hyena Samples.",
            complete = {
                questObjective = { id = 654, index = 2, count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.502, y = 0.316, label = "Starving Blisterpaws", offMapText = "Travel to Starving Blisterpaws." },
            },
            sourceStep = 8,
            priority = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-654-tanaris-field-sampling" },
        },
        {
            id = "objective-654-1-acceptable-basilisk-sample",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill Glasshide Basilisks and loot Untested Basilisk Samples. Use each sample to test it until you have 8 Acceptable Basilisk Samples.",
            complete = {
                questObjective = { id = 654, index = 1, count = 8 },
            },
            route = {
                { mapID = 1446, x = 0.494, y = 0.31, label = "Glasshide Basilisks", offMapText = "Travel to Glasshide Basilisks." },
            },
            sourceStep = 9,
            priority = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-654-tanaris-field-sampling" },
        },
        {
            priority = 100,
            text = "Turn in Tanaris Field Sampling to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = {
                "accept-654-tanaris-field-sampling",
                "objective-654-3-acceptable-scorpid-sample",
                "objective-654-2-acceptable-hyena-sample",
                "objective-654-1-acceptable-basilisk-sample",
            },
            id = "turnin-654-tanaris-field-sampling",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 654, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 379 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            dependsOn = { "accept-992-gadgetzan-water-survey", "objective-992-1-untapped-dowsing-widget" },
            id = "turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 992, state = "completed" },
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
