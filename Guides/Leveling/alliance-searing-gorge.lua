local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Searing Gorge",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-searing-gorge",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 50 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-7723-curse-these-fat-fingers",
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
            checkpointQuest = 7723,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.278, mapID = 1427, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge.", x = 0.3857 },
            },
            text = "Accept Curse These Fat Fingers from Hansel Heavyhands.",
            id = "accept-7723-curse-these-fat-fingers",
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
                quest = { id = 7723, state = "activeOrCompleted" },
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
                { y = 0.278, mapID = 1427, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge.", x = 0.3857 },
            },
            text = "Accept Fiery Menace! from Hansel Heavyhands.",
            id = "accept-7724-fiery-menace",
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
                quest = { id = 7724, state = "activeOrCompleted" },
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
                { y = 0.278, mapID = 1427, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge.", x = 0.3857 },
            },
            text = "Accept Incendosaurs? Whateverosaur is More Like It from Hansel Heavyhands.",
            id = "accept-7727-incendosaurs-whateverosaur-is-more-like-",
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
                quest = { id = 7727, state = "activeOrCompleted" },
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
                { y = 0.2653, mapID = 1427, label = "STOLEN: Smithing Tuyere and Lookout's Spyglass", offMapText = "Travel to STOLEN: Smithing Tuyere and Lookout's Spyglass.", x = 0.3763 },
            },
            text = "Accept STOLEN: Smithing Tuyere and Lookout's Spyglass.",
            id = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
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
                quest = { id = 7728, state = "activeOrCompleted" },
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
                { y = 0.2653, mapID = 1427, label = "JOB OPPORTUNITY: Culling the Competition", offMapText = "Travel to JOB OPPORTUNITY: Culling the Competition.", x = 0.3763 },
            },
            text = "Accept JOB OPPORTUNITY: Culling the Competition.",
            id = "accept-7729-job-opportunity-culling-the-competition",
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
                quest = { id = 7729, state = "activeOrCompleted" },
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
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            text = "Accept Divine Retribution from Velarok Windblade.",
            id = "accept-3441-divine-retribution",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3441, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Speak with Kalaran Windblade and ask what drives his vengeance. Follow his story until the quest is ready to turn in.",
            id = "objective-3441-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3441, state = "complete" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3441-divine-retribution" },
        },
        {
            priority = 90,
            text = "Turn in Divine Retribution to Velarok Windblade.",
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            dependsOn = { "accept-3441-divine-retribution", "objective-3441-quest-work" },
            id = "turnin-3441-divine-retribution",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3441, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            text = "Accept The Flawless Flame from Velarok Windblade.",
            id = "accept-3442-the-flawless-flame",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3442, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Collect 1 Smithing Tuyere.",
            route = {
                { y = 0.494, mapID = 1427, label = "Dark Iron Steamsmith", offMapText = "Travel to Dark Iron Steamsmith.", x = 0.392 },
            },
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            id = "objective-7728-1-dark-iron-steamsmith",
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
                questObjective = { id = 7728, text = "Dark Iron Steamsmith", index = 1, count = 1 },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3442-1-heart-of-flame",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 4 Heart of Flame.",
            complete = {
                questObjective = { id = 3442, index = 1, text = "Heart of Flame", count = 4 },
            },
            route = {
                { mapID = 1427, x = 0.42579999999999996, y = 0.3858, label = "Heart of Flame", offMapText = "Travel to Heart of Flame." },
            },
            sourceStep = 8,
            priority = 120,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3442-the-flawless-flame" },
        },
        {
            id = "objective-3442-2-golem-oil",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 4 Golem Oil.",
            complete = {
                questObjective = { id = 3442, index = 2, text = "Golem Oil", count = 4 },
            },
            route = {
                { mapID = 1427, x = 0.392, y = 0.434, label = "Golem Oil", offMapText = "Travel to Golem Oil." },
            },
            sourceStep = 9,
            priority = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3442-the-flawless-flame" },
        },
        {
            priority = 140,
            text = "Turn in The Flawless Flame to Velarok Windblade.",
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            dependsOn = { "accept-3442-the-flawless-flame", "objective-3442-1-heart-of-flame", "objective-3442-2-golem-oil" },
            id = "turnin-3442-the-flawless-flame",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3442, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            text = "Accept Forging the Shaft from Velarok Windblade.",
            id = "accept-3443-forging-the-shaft",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3443, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3442 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Kill 20 Incendosaur.",
            route = {
                { mapID = 1427, x = 0.514, y = 0.36, label = "Incendosaur", offMapText = "Travel to Incendosaur." },
            },
            dependsOn = { "accept-7727-incendosaurs-whateverosaur-is-more-like-" },
            id = "objective-7727-1-incendosaur",
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
                questObjective = { id = 7727, text = "Incendosaur", index = 1, count = 20 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-4451-the-key-to-freedom",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot Grimesilt Outhouse Key from Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster, Dark Iron Lookout. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Grimesilt Outhouse Key", minCount = 1 },
                    },
                    {
                        quest = { id = 4451, state = "activeOrCompleted" },
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
            priority = 180,
            text = "Use the Grimesilt Outhouse Key to accept The Key to Freedom.",
            id = "accept-4451-the-key-to-freedom",
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
                quest = { id = 4451, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-3443-1-thorium-plated-dagger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 8 Thorium Plated Dagger.",
            complete = {
                questObjective = { id = 3443, index = 1, text = "Thorium Plated Dagger", count = 8 },
            },
            route = {
                { mapID = 1427, x = 0.446, y = 0.374, label = "Thorium Plated Dagger", offMapText = "Travel to Thorium Plated Dagger." },
            },
            sourceStep = 16,
            priority = 190,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3442 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3443-forging-the-shaft" },
        },
        {
            id = "objective-7729-1-dark-iron-taskmaster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 15 Dark Iron Taskmaster.",
            complete = {
                questObjective = { id = 7729, index = 1, text = "Dark Iron Taskmaster", count = 15 },
            },
            route = {
                { mapID = 1427, x = 0.446, y = 0.374, label = "Dark Iron Taskmaster", offMapText = "Travel to Dark Iron Taskmaster." },
            },
            sourceStep = 17,
            priority = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7729-job-opportunity-culling-the-competition" },
        },
        {
            id = "objective-7729-2-dark-iron-slaver",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 15 Dark Iron Slaver.",
            complete = {
                questObjective = { id = 7729, index = 2, text = "Dark Iron Slaver", count = 15 },
            },
            route = {
                { mapID = 1427, x = 0.446, y = 0.374, label = "Dark Iron Slaver", offMapText = "Travel to Dark Iron Slaver." },
            },
            sourceStep = 17,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7729-job-opportunity-culling-the-competition" },
        },
        {
            priority = 220,
            text = "Turn in Forging the Shaft to Velarok Windblade.",
            route = {
                { mapID = 1427, x = 0.3906, y = 0.3899, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge." },
            },
            dependsOn = { "accept-3443-forging-the-shaft", "objective-3443-1-thorium-plated-dagger" },
            id = "turnin-3443-forging-the-shaft",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3443, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3442 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { mapID = 1427, x = 0.3906, y = 0.3899, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge." },
            },
            text = "Accept The Flame's Casing from Velarok Windblade.",
            id = "accept-3452-the-flame-s-casing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3452, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3443 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Collect 1 Symbol of Ragnaros.",
            route = {
                { y = 0.364, mapID = 1427, label = "Twilight Dark Shaman", offMapText = "Travel to Twilight Dark Shaman.", x = 0.25 },
            },
            dependsOn = { "accept-3452-the-flame-s-casing" },
            id = "objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3452, text = "Twilight Dark Shaman", index = 1, count = 1 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3443 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Turn in The Flame's Casing to Velarok Windblade.",
            route = {
                { mapID = 1427, x = 0.39049999999999996, y = 0.3899, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge." },
            },
            dependsOn = { "accept-3452-the-flame-s-casing", "objective-3452-1-twilight-dark-shaman" },
            id = "turnin-3452-the-flame-s-casing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3452, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3443 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { mapID = 1427, x = 0.39049999999999996, y = 0.3899, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge." },
            },
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            id = "accept-3453-the-torch-of-retribution",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3453, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3452 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "For The Torch of Retribution: Wait for Kalaran Windblade to complete the Torch of Retribution.",
            id = "objective-3453-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3453, state = "complete" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3452 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3453-the-torch-of-retribution" },
        },
        {
            priority = 280,
            text = "Turn in The Torch of Retribution to Velarok Windblade.",
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            dependsOn = { "accept-3453-the-torch-of-retribution", "objective-3453-quest-work" },
            id = "turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3453, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3452 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.3899, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            id = "accept-3454-the-torch-of-retribution",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3454, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Turn in The Torch of Retribution.",
            route = {
                { y = 0.3906, mapID = 1427, label = "The Torch of Retribution", offMapText = "Travel to The Torch of Retribution.", x = 0.3906 },
            },
            dependsOn = { "accept-3454-the-torch-of-retribution" },
            id = "turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3454, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3453 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.39, mapID = 1427, label = "Velarok Windblade", offMapText = "Travel to Velarok Windblade in Searing Gorge.", x = 0.3905 },
            },
            text = "Accept Squire Maltrake from Velarok Windblade.",
            id = "accept-3462-squire-maltrake",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3462, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3454 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Turn in Squire Maltrake to Squire Maltrake.",
            route = {
                { y = 0.3899, mapID = 1427, label = "Squire Maltrake", offMapText = "Travel to Squire Maltrake in Searing Gorge.", x = 0.3916 },
            },
            dependsOn = { "accept-3462-squire-maltrake" },
            id = "turnin-3462-squire-maltrake",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3462, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3454 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.3899, mapID = 1427, label = "Squire Maltrake", offMapText = "Travel to Squire Maltrake in Searing Gorge.", x = 0.3916 },
            },
            text = "Accept Set Them Ablaze! from Squire Maltrake.",
            id = "accept-3463-set-them-ablaze",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3463, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Turn in The Key to Freedom.",
            route = {
                { y = 0.6223, mapID = 1427, label = "The Key to Freedom", offMapText = "Travel to The Key to Freedom.", x = 0.6553 },
            },
            dependsOn = { "accept-4451-the-key-to-freedom" },
            id = "turnin-4451-the-key-to-freedom",
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
                quest = { id = 4451, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.6223, mapID = 1427, label = "Caught!", offMapText = "Travel to Caught!.", x = 0.6553 },
            },
            text = "Accept Caught!.",
            id = "accept-4449-caught",
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
                quest = { id = 4449, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Kill 8 Dark Iron Geologist.",
            route = {
                { y = 0.614, mapID = 1427, label = "Dark Iron Geologist", offMapText = "Travel to Dark Iron Geologist.", x = 0.634 },
            },
            dependsOn = { "accept-4449-caught" },
            id = "objective-4449-1-dark-iron-geologist",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4449, text = "Dark Iron Geologist", index = 1, count = 8 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-note-3181-margol-loot",
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
            checkpointQuest = 3181,
            priority = 370,
        },
        {
            priority = 380,
            route = {
                { y = 0.72, mapID = 1427, label = "Margol the Rager", offMapText = "Travel to Margol the Rager.", x = 0.37 },
            },
            text = "Kill Margol the Rager and loot Margol's Horn.",
            id = "note-3181-margol-loot",
            kind = "note",
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
                any = {
                    {
                        quest = { id = 3181, state = "activeOrCompleted" },
                    },
                    { item = "Margol's Horn" },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-3181-the-horn-of-the-beast",
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
            text = "Loot Margol's Horn from Margol the Rager. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Margol's Horn", minCount = 1 },
                    },
                    {
                        quest = { id = 3181, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 390,
        },
        {
            priority = 400,
            text = "Use the Margol's Horn to accept The Horn of the Beast.",
            id = "accept-3181-the-horn-of-the-beast",
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
                quest = { id = 3181, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "collect-before-pickup-objective-4449-2-silk-cloth",
            kind = "note",
            conditions = { faction = "Alliance" },
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            complete = {
                item = { name = "Silk Cloth", minCount = 15 },
            },
            route = {
                { mapID = 1427, x = 0.634, y = 0.614, label = "Silk Cloth", offMapText = "Travel to Silk Cloth." },
            },
            sourceStep = 39,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 4449,
        },
        {
            priority = 420,
            text = "Turn in Caught!.",
            route = {
                { y = 0.6224, mapID = 1427, label = "Caught!", offMapText = "Travel to Caught!.", x = 0.6554 },
            },
            dependsOn = { "accept-4449-caught", "objective-4449-1-dark-iron-geologist" },
            id = "turnin-4449-caught",
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
                quest = { id = 4449, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.6098, mapID = 1427, label = "Dorius Stonetender", offMapText = "Travel to Dorius Stonetender in Searing Gorge.", x = 0.6392 },
            },
            text = "Accept Suntara Stones from Dorius Stonetender.",
            id = "accept-3367-suntara-stones",
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
                quest = { id = 3367, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-3367-reviewed-escort",
            kind = "objective",
            text = "Follow and protect Dorius Stonetender until he escapes the excavation.",
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
            requiredQuests = {},
            complete = {
                quest = { id = 3367, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1427, x = 0.7442, y = 0.1941, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 42,
            dependsOn = { "accept-3367-suntara-stones" },
            priority = 440,
        },
        {
            priority = 450,
            text = "Turn in Suntara Stones.",
            route = {
                { y = 0.1929, mapID = 1427, label = "Suntara Stones", offMapText = "Travel to Suntara Stones.", x = 0.7445 },
            },
            dependsOn = { "accept-3367-suntara-stones", "objective-3367-reviewed-escort" },
            id = "turnin-3367-suntara-stones",
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
                quest = { id = 3367, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.1929, mapID = 1427, label = "Suntara Stones", offMapText = "Travel to Suntara Stones.", x = 0.7445 },
            },
            text = "Accept Suntara Stones.",
            id = "accept-3368-suntara-stones",
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
                quest = { id = 3368, state = "activeOrCompleted" },
            },
            sourceStep = 43,
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
            priority = 470,
            text = "Climb the northern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            id = "objective-3463-4-authored-Northern-Tower",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3463, index = 4, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                { mapID = 1427, x = 0.3331, y = 0.5449, label = "Northern-Tower", offMapText = "Travel to Northern-Tower." },
            },
        },
        {
            priority = 480,
            text = "Climb the western sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            id = "objective-3463-1-authored-Western-Tower",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3463, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                { mapID = 1427, x = 0.3567, y = 0.6068, label = "Western-Tower", offMapText = "Travel to Western-Tower." },
            },
        },
        {
            priority = 490,
            text = "Climb the southern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            id = "objective-3463-2-authored-Southern-Tower",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3463, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                { mapID = 1427, x = 0.4403, y = 0.6091, label = "Southern-Tower", offMapText = "Travel to Southern-Tower." },
            },
        },
        {
            priority = 500,
            text = "Cross the hanging bridge at Searing Gorge 52.48,57.95 and climb the eastern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            id = "objective-3463-3-authored-Eastern-Tower",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3463, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3463-set-them-ablaze" },
            route = {
                { mapID = 1427, x = 0.5006, y = 0.5474, label = "Eastern-Tower", offMapText = "Travel to Eastern-Tower." },
            },
        },
        {
            priority = 510,
            text = "Turn in Set Them Ablaze! to Squire Maltrake.",
            route = {
                { y = 0.39, mapID = 1427, label = "Squire Maltrake", offMapText = "Travel to Squire Maltrake in Searing Gorge.", x = 0.3917 },
            },
            dependsOn = {
                "accept-3463-set-them-ablaze",
                "objective-3463-4-authored-Northern-Tower",
                "objective-3463-1-authored-Western-Tower",
                "objective-3463-2-authored-Southern-Tower",
                "objective-3463-3-authored-Eastern-Tower",
            },
            id = "turnin-3463-set-them-ablaze",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3463, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.3899, mapID = 1427, label = "Trinkets..", offMapText = "Travel to Trinkets....", x = 0.3886 },
            },
            text = "Accept Trinkets...",
            id = "accept-3481-trinkets",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3481, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3463 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            text = "Turn in Trinkets...",
            route = {
                { y = 0.3899, mapID = 1427, label = "Trinkets..", offMapText = "Travel to Trinkets....", x = 0.3886 },
            },
            dependsOn = { "accept-3481-trinkets" },
            id = "turnin-3481-trinkets",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3481, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3463 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-7728-2-lookout-s-spyglass",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Collect 1 Lookout's Spyglass.",
            complete = {
                questObjective = { id = 7728, index = 2, text = "Lookout's Spyglass", count = 1 },
            },
            route = {
                { mapID = 1427, x = 0.332, y = 0.536, label = "Lookout's Spyglass", offMapText = "Travel to Lookout's Spyglass." },
            },
            sourceStep = 49,
            priority = 540,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
        },
        {
            priority = 550,
            conditions = { faction = "Alliance" },
            text = "Open the Hoard of the Black Dragonflight from Kalaran Windblade to obtain the Black Dragonflight Molt. Keep it for Cyrus Therepentous.",
            id = "open-objective-4022-1-hoard-of-the-black-dragonflight",
            kind = "note",
            useClientPin = true,
            complete = {
                item = { name = "Black Dragonflight Molt", minCount = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            dependsOn = {},
            referenceQuest = 4022,
        },
        {
            id = "objective-7724-1-greater-lava-spider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 20 Greater Lava Spider.",
            complete = {
                questObjective = { id = 7724, index = 1, text = "Greater Lava Spider", count = 20 },
            },
            route = {
                { mapID = 1427, x = 0.326, y = 0.426, label = "Greater Lava Spider", offMapText = "Travel to Greater Lava Spider." },
            },
            sourceStep = 50,
            priority = 560,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7724-fiery-menace" },
        },
        {
            id = "objective-7723-1-heavy-war-golem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Kill 20 Heavy War Golem.",
            complete = {
                questObjective = { id = 7723, index = 1, text = "Heavy War Golem", count = 20 },
            },
            route = {
                { mapID = 1427, x = 0.392, y = 0.434, label = "Heavy War Golem", offMapText = "Travel to Heavy War Golem." },
            },
            sourceStep = 51,
            priority = 570,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7723-curse-these-fat-fingers" },
        },
        {
            priority = 580,
            text = "Turn in Curse These Fat Fingers to Hansel Heavyhands.",
            route = {
                { mapID = 1427, x = 0.3859, y = 0.2781, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge." },
            },
            dependsOn = { "accept-7723-curse-these-fat-fingers", "objective-7723-1-heavy-war-golem" },
            id = "turnin-7723-curse-these-fat-fingers",
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
                quest = { id = 7723, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Turn in Fiery Menace! to Hansel Heavyhands.",
            route = {
                { mapID = 1427, x = 0.3859, y = 0.2781, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge." },
            },
            dependsOn = { "accept-7724-fiery-menace", "objective-7724-1-greater-lava-spider" },
            id = "turnin-7724-fiery-menace",
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
                quest = { id = 7724, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in Incendosaurs? Whateverosaur is More Like It to Hansel Heavyhands.",
            route = {
                { mapID = 1427, x = 0.3859, y = 0.2781, label = "Hansel Heavyhands", offMapText = "Travel to Hansel Heavyhands in Searing Gorge." },
            },
            dependsOn = { "accept-7727-incendosaurs-whateverosaur-is-more-like-", "objective-7727-1-incendosaur" },
            id = "turnin-7727-incendosaurs-whateverosaur-is-more-like-",
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
                quest = { id = 7727, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange.",
            route = {
                { y = 0.2751, mapID = 1427, label = "Taskmaster Scrange", offMapText = "Travel to Taskmaster Scrange in Searing Gorge.", x = 0.3898 },
            },
            dependsOn = {
                "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
                "objective-7728-1-dark-iron-steamsmith",
                "objective-7728-2-lookout-s-spyglass",
            },
            id = "turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
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
                quest = { id = 7728, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in JOB OPPORTUNITY: Culling the Competition to Taskmaster Scrange.",
            route = {
                { y = 0.2751, mapID = 1427, label = "Taskmaster Scrange", offMapText = "Travel to Taskmaster Scrange in Searing Gorge.", x = 0.3898 },
            },
            dependsOn = {
                "accept-7729-job-opportunity-culling-the-competition",
                "objective-7729-1-dark-iron-taskmaster",
                "objective-7729-2-dark-iron-slaver",
            },
            id = "turnin-7729-job-opportunity-culling-the-competition",
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
                quest = { id = 7729, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in The Horn of the Beast to Mountaineer Pebblebitty.",
            route = {
                { y = 0.84, mapID = 1432, label = "Mountaineer Pebblebitty", offMapText = "Travel to Mountaineer Pebblebitty in Loch Modan.", x = 0.1819 },
            },
            dependsOn = { "accept-3181-the-horn-of-the-beast" },
            id = "turnin-3181-the-horn-of-the-beast",
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
                quest = { id = 3181, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.84, mapID = 1432, label = "Mountaineer Pebblebitty", offMapText = "Travel to Mountaineer Pebblebitty in Loch Modan.", x = 0.1819 },
            },
            text = "Accept Proof of Deed from Mountaineer Pebblebitty.",
            id = "accept-3182-proof-of-deed",
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
                quest = { id = 3182, state = "activeOrCompleted" },
            },
            sourceStep = 57,
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
