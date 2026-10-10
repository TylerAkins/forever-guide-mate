local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Human Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-elwynn-forest",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.4265, mapID = 1429, label = "Drusilla La Salle", offMapText = "Travel to Drusilla La Salle in Elwynn Forest.", x = 0.4987 },
            },
            text = "Accept The Stolen Tome from Drusilla La Salle.",
            id = "accept-1598-the-stolen-tome",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1598, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            alternativeQuests = { 1599 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1598-1-powers-of-the-void",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            text = "Collect 1 Powers of the Void.",
            complete = {
                questObjective = { id = 1598, index = 1, text = "Powers of the Void", count = 1 },
            },
            route = {
                { mapID = 1429, x = 0.5674, y = 0.43770000000000003, label = "Powers of the Void", offMapText = "Travel to Powers of the Void." },
            },
            sourceStep = 7,
            priority = 20,
            requiredQuests = {},
            alternativeQuests = { 1599 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1598-the-stolen-tome" },
        },
        {
            priority = 30,
            text = "Turn in The Stolen Tome to Drusilla La Salle.",
            route = {
                { y = 0.4265, mapID = 1429, label = "Drusilla La Salle", offMapText = "Travel to Drusilla La Salle in Elwynn Forest.", x = 0.4987 },
            },
            dependsOn = { "accept-1598-the-stolen-tome", "objective-1598-1-powers-of-the-void" },
            id = "turnin-1598-the-stolen-tome",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1598, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            alternativeQuests = { 1599 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 40,
            route = {
                { y = 0.4295, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            id = "accept-783-a-threat-within",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 12,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-783-a-threat-within",
        },
        {
            priority = 50,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-783-a-threat-within" },
            id = "turnin-783-a-threat-within",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            classAction = "turnin-783-a-threat-within",
        },
        {
            priority = 60,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            id = "accept-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7-kobold-camp-cleanup",
        },
        {
            priority = 70,
            route = {
                { y = 0.4295, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            text = "Accept Eagan Peltskinner from Deputy Willem.",
            id = "accept-5261-eagan-peltskinner",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5261, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in Eagan Peltskinner to Eagan Peltskinner.",
            route = {
                { y = 0.4016, mapID = 1429, label = "Eagan Peltskinner", offMapText = "Travel to Eagan Peltskinner in Elwynn Forest.", x = 0.4894 },
            },
            dependsOn = { "accept-5261-eagan-peltskinner" },
            id = "turnin-5261-eagan-peltskinner",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5261, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.4016, mapID = 1429, label = "Eagan Peltskinner", offMapText = "Travel to Eagan Peltskinner in Elwynn Forest.", x = 0.4894 },
            },
            text = "Accept Wolves Across the Border from Eagan Peltskinner.",
            id = "accept-33-wolves-across-the-border",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 33, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Collect 8 Tough Wolf Meat.",
            route = {
                { y = 0.396, mapID = 1429, label = "Timber Wolf", offMapText = "Travel to Timber Wolf.", x = 0.468 },
            },
            dependsOn = { "accept-33-wolves-across-the-border" },
            id = "objective-33-1-timber-wolf",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 33, text = "Timber Wolf", index = 1, count = 8 },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.376, mapID = 1429, label = "Kobold Vermin", offMapText = "Travel to Kobold Vermin.", x = 0.48 },
            },
            dependsOn = { "accept-7-kobold-camp-cleanup" },
            id = "objective-7-1-kobold-vermin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 18,
            useClientPin = false,
            classAction = "objective-7-1-kobold-vermin",
        },
        {
            priority = 120,
            text = "Turn in Wolves Across the Border to Eagan Peltskinner.",
            route = {
                { y = 0.4016, mapID = 1429, label = "Eagan Peltskinner", offMapText = "Travel to Eagan Peltskinner in Elwynn Forest.", x = 0.4894 },
            },
            dependsOn = { "accept-33-wolves-across-the-border", "objective-33-1-timber-wolf" },
            id = "turnin-33-wolves-across-the-border",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 33, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-7-kobold-camp-cleanup", "objective-7-1-kobold-vermin" },
            id = "turnin-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 20,
            useClientPin = false,
            classAction = "turnin-7-kobold-camp-cleanup",
        },
        {
            priority = 140,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Investigate Echo Ridge from Marshal McBride.",
            id = "accept-15-investigate-echo-ridge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 15, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Kill 10 Kobold Worker.",
            route = {
                { y = 0.37, mapID = 1429, label = "Kobold Worker", offMapText = "Travel to Kobold Worker.", x = 0.474 },
            },
            dependsOn = { "accept-15-investigate-echo-ridge" },
            id = "objective-15-1-kobold-worker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 15, text = "Kobold Worker", index = 1, count = 10 },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in Investigate Echo Ridge to Marshal McBride.",
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-15-investigate-echo-ridge", "objective-15-1-kobold-worker" },
            id = "turnin-15-investigate-echo-ridge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 15, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Skirmish at Echo Ridge from Marshal McBride.",
            id = "accept-21-skirmish-at-echo-ridge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 21, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 15 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Glyphic Letter from Marshal McBride.",
            id = "accept-3104-glyphic-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3104, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Simple Letter from Marshal McBride.",
            id = "accept-3100-simple-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3100, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Tainted Letter from Marshal McBride.",
            id = "accept-3105-tainted-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3105, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Encrypted Letter from Marshal McBride.",
            id = "accept-3102-encrypted-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3102, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Hallowed Letter from Marshal McBride.",
            id = "accept-3103-hallowed-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3103, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
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
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Consecrated Letter from Marshal McBride.",
            id = "accept-3101-consecrated-letter",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3101, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Read Simple Letter in your bags. Turn in Simple Letter to Llane Beshere.",
            route = {
                { y = 0.4228, mapID = 1429, label = "Llane Beshere", offMapText = "Travel to Llane Beshere in Elwynn Forest.", x = 0.5024 },
            },
            dependsOn = { "accept-3100-simple-letter" },
            id = "turnin-3100-simple-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3100, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Read Consecrated Letter in your bags. Turn in Consecrated Letter to Brother Sammuel.",
            route = {
                { y = 0.4212, mapID = 1429, label = "Brother Sammuel", offMapText = "Travel to Brother Sammuel in Elwynn Forest.", x = 0.5043 },
            },
            dependsOn = { "accept-3101-consecrated-letter" },
            id = "turnin-3101-consecrated-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3101, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Read Hallowed Letter in your bags. Turn in Hallowed Letter to Priestess Anetta.",
            route = {
                { y = 0.3949, mapID = 1429, label = "Priestess Anetta", offMapText = "Travel to Priestess Anetta in Elwynn Forest.", x = 0.4981 },
            },
            dependsOn = { "accept-3103-hallowed-letter" },
            id = "turnin-3103-hallowed-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3103, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Read Glyphic Letter in your bags. Turn in Glyphic Letter to Khelden Bremen.",
            route = {
                { y = 0.3941, mapID = 1429, label = "Khelden Bremen", offMapText = "Travel to Khelden Bremen in Elwynn Forest.", x = 0.4966 },
            },
            dependsOn = { "accept-3104-glyphic-letter" },
            id = "turnin-3104-glyphic-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3104, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-18-brotherhood-of-thieves",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 18,
            priority = 280,
        },
        {
            priority = 290,
            route = {
                { y = 0.4293, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            text = "Accept Brotherhood of Thieves from Deputy Willem.",
            id = "accept-18-brotherhood-of-thieves",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 18, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Read Tainted Letter in your bags. Turn in Tainted Letter to Drusilla La Salle.",
            route = {
                { y = 0.4265, mapID = 1429, label = "Drusilla La Salle", offMapText = "Travel to Drusilla La Salle in Elwynn Forest.", x = 0.4987 },
            },
            dependsOn = { "accept-3105-tainted-letter" },
            id = "turnin-3105-tainted-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3105, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Collect 12 Red Burlap Bandana.",
            route = {
                { y = 0.47, mapID = 1429, label = "Defias Thug", offMapText = "Travel to Defias Thug.", x = 0.514 },
            },
            dependsOn = { "accept-18-brotherhood-of-thieves" },
            id = "objective-18-1-defias-thug",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 18, text = "Defias Thug", index = 1, count = 12 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Brotherhood of Thieves to Deputy Willem.",
            route = {
                { y = 0.4294, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            dependsOn = { "accept-18-brotherhood-of-thieves", "objective-18-1-defias-thug" },
            id = "turnin-18-brotherhood-of-thieves",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 18, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.4294, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            text = "Accept Milly Osworth from Deputy Willem.",
            id = "accept-3903-milly-osworth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3903, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            route = {
                { y = 0.4294, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            text = "Accept Bounty on Garrick Padfoot from Deputy Willem.",
            id = "accept-6-bounty-on-garrick-padfoot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            text = "Kill 12 Kobold Laborer.",
            route = {
                { y = 0.3186, mapID = 1429, label = "Kobold Laborer", offMapText = "Travel to Kobold Laborer.", x = 0.4767 },
            },
            dependsOn = { "accept-21-skirmish-at-echo-ridge" },
            id = "objective-21-1-kobold-laborer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 21, text = "Kobold Laborer", index = 1, count = 12 },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 15 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Milly Osworth to Milly Osworth.",
            route = {
                { mapID = 1429, x = 0.5069, y = 0.3935, label = "Milly Osworth", offMapText = "Travel to Milly Osworth in Elwynn Forest." },
            },
            dependsOn = { "accept-3903-milly-osworth" },
            id = "turnin-3903-milly-osworth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3903, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { mapID = 1429, x = 0.5069, y = 0.3935, label = "Milly Osworth", offMapText = "Travel to Milly Osworth in Elwynn Forest." },
            },
            text = "Accept Milly's Harvest from Milly Osworth.",
            id = "accept-3904-milly-s-harvest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3904, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Read Encrypted Letter in your bags. Turn in Encrypted Letter to Jorik Kerridan.",
            route = {
                { y = 0.3992, mapID = 1429, label = "Jorik Kerridan", offMapText = "Travel to Jorik Kerridan in Elwynn Forest.", x = 0.5031 },
            },
            dependsOn = { "accept-3102-encrypted-letter" },
            id = "turnin-3102-encrypted-letter",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 3102, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Collect 1 Garrick's Head.",
            route = {
                { y = 0.4825, mapID = 1429, label = "Garrick Padfoot", offMapText = "Travel to Garrick Padfoot.", x = 0.5751 },
            },
            dependsOn = { "accept-6-bounty-on-garrick-padfoot" },
            id = "objective-6-1-garrick-padfoot",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6, text = "Garrick Padfoot", index = 1, count = 1 },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Collect 8 Milly's Harvest.",
            route = {
                { y = 0.49, mapID = 1429, label = "Milly's Harvest", offMapText = "Travel to Milly's Harvest.", x = 0.551 },
            },
            dependsOn = { "accept-3904-milly-s-harvest" },
            id = "objective-3904-1-milly-s-harvest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3904, text = "Milly's Harvest", index = 1, count = 8 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in Milly's Harvest to Milly Osworth.",
            route = {
                { y = 0.3935, mapID = 1429, label = "Milly Osworth", offMapText = "Travel to Milly Osworth in Elwynn Forest.", x = 0.5069 },
            },
            dependsOn = { "accept-3904-milly-s-harvest", "objective-3904-1-milly-s-harvest" },
            id = "turnin-3904-milly-s-harvest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3904, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.3935, mapID = 1429, label = "Milly Osworth", offMapText = "Travel to Milly Osworth in Elwynn Forest.", x = 0.5069 },
            },
            text = "Accept Grape Manifest from Milly Osworth.",
            id = "accept-3905-grape-manifest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3905, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3904 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in Bounty on Garrick Padfoot to Deputy Willem.",
            route = {
                { y = 0.4294, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            dependsOn = { "accept-6-bounty-on-garrick-padfoot", "objective-6-1-garrick-padfoot" },
            id = "turnin-6-bounty-on-garrick-padfoot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 18 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Turn in Skirmish at Echo Ridge to Marshal McBride.",
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-21-skirmish-at-echo-ridge", "objective-21-1-kobold-laborer" },
            id = "turnin-21-skirmish-at-echo-ridge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 21, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 15 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            text = "Accept Report to Goldshire from Marshal McBride.",
            id = "accept-54-report-to-goldshire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 54, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 21 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5623-in-favor-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1 },
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
            checkpointQuest = 5623,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.3949, mapID = 1429, label = "Priestess Anetta", offMapText = "Travel to Priestess Anetta in Elwynn Forest.", x = 0.4981 },
            },
            text = "Accept In Favor of the Light from Priestess Anetta.",
            id = "accept-5623-in-favor-of-the-light",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5623, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in Grape Manifest to Brother Neals.",
            route = {
                { y = 0.4159, mapID = 1429, label = "Brother Neals", offMapText = "Travel to Brother Neals in Elwynn Forest.", x = 0.4947 },
            },
            dependsOn = { "accept-3905-grape-manifest" },
            id = "turnin-3905-grape-manifest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3905, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3904 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.4774, mapID = 1429, label = "Falkhaan Isenstrider", offMapText = "Travel to Falkhaan Isenstrider in Elwynn Forest.", x = 0.4556 },
            },
            text = "Accept Rest and Relaxation from Falkhaan Isenstrider.",
            id = "accept-2158-rest-and-relaxation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2158, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Report to Goldshire to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-54-report-to-goldshire" },
            id = "turnin-54-report-to-goldshire",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 54, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 21 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-62-the-fargodeep-mine",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 62,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            text = "Accept The Fargodeep Mine from Marshal Dughan.",
            id = "accept-62-the-fargodeep-mine",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 62, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.657, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            text = "Accept Kobold Candles from William Pestle.",
            id = "accept-60-kobold-candles",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 60, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Rest and Relaxation to Innkeeper Farley.",
            route = {
                { y = 0.6581, mapID = 1429, label = "Innkeeper Farley", offMapText = "Travel to Innkeeper Farley in Elwynn Forest.", x = 0.4377 },
            },
            dependsOn = { "accept-2158-rest-and-relaxation" },
            id = "turnin-2158-rest-and-relaxation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2158, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in In Favor of the Light to Priestess Josetta.",
            route = {
                { y = 0.6572, mapID = 1429, label = "Priestess Josetta", offMapText = "Travel to Priestess Josetta in Elwynn Forest.", x = 0.4328 },
            },
            dependsOn = { "accept-5623-in-favor-of-the-light" },
            id = "turnin-5623-in-favor-of-the-light",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5623, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.6572, mapID = 1429, label = "Priestess Josetta", offMapText = "Travel to Priestess Josetta in Elwynn Forest.", x = 0.4328 },
            },
            text = "Accept Garments of the Light from Priestess Josetta.",
            id = "accept-5624-garments-of-the-light",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5624, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            id = "objective-5624-quest-work",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            sourceStep = 61,
            useClientPin = true,
            dependsOn = { "accept-5624-garments-of-the-light" },
            classAction = "objective-5624-quest-work",
        },
        {
            priority = 580,
            text = "Turn in Garments of the Light to Priestess Josetta.",
            route = {
                { y = 0.6572, mapID = 1429, label = "Priestess Josetta", offMapText = "Travel to Priestess Josetta in Elwynn Forest.", x = 0.4328 },
            },
            dependsOn = { "accept-5624-garments-of-the-light", "objective-5624-quest-work" },
            id = "turnin-5624-garments-of-the-light",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5624, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            route = {
                { y = 0.6726, mapID = 1429, label = "Remy \"Two Times\"", offMapText = "Travel to Remy \"Two Times\" in Elwynn Forest.", x = 0.4214 },
            },
            text = "Accept Gold Dust Exchange from Remy \"Two Times\".",
            id = "accept-47-gold-dust-exchange",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 47, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-85-lost-necklace",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 85,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.8426, mapID = 1429, label = "\"Auntie\" Bernice Stonefield", offMapText = "Travel to \"Auntie\" Bernice Stonefield in Elwynn Forest.", x = 0.3448 },
            },
            text = "Accept Lost Necklace from \"Auntie\" Bernice Stonefield.",
            id = "accept-85-lost-necklace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 85, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in Lost Necklace to Billy Maclure.",
            route = {
                { y = 0.8572, mapID = 1429, label = "Billy Maclure", offMapText = "Travel to Billy Maclure in Elwynn Forest.", x = 0.4313 },
            },
            dependsOn = { "accept-85-lost-necklace" },
            id = "turnin-85-lost-necklace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 85, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.8572, mapID = 1429, label = "Billy Maclure", offMapText = "Travel to Billy Maclure in Elwynn Forest.", x = 0.4313 },
            },
            text = "Accept Pie for Billy from Billy Maclure.",
            id = "accept-86-pie-for-billy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 86, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 85 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            route = {
                { y = 0.8962, mapID = 1429, label = "Maybell Maclure", offMapText = "Travel to Maybell Maclure in Elwynn Forest.", x = 0.4315 },
            },
            text = "Accept Young Lovers from Maybell Maclure.",
            id = "accept-106-young-lovers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 106, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-86-1-chunk-of-boar-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 4 Chunk of Boar Meat.",
            complete = {
                questObjective = { id = 86, index = 1, text = "Chunk of Boar Meat", count = 4 },
            },
            route = {
                { mapID = 1429, x = 0.41859999999999997, y = 0.8712000000000001, label = "Chunk of Boar Meat", offMapText = "Travel to Chunk of Boar Meat." },
            },
            sourceStep = 71,
            priority = 650,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 85 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-86-pie-for-billy" },
        },
        {
            priority = 660,
            text = "Turn in Young Lovers to Tommy Joe Stonefield.",
            route = {
                { y = 0.8599, mapID = 1429, label = "Tommy Joe Stonefield", offMapText = "Travel to Tommy Joe Stonefield in Elwynn Forest.", x = 0.2984 },
            },
            dependsOn = { "accept-106-young-lovers" },
            id = "turnin-106-young-lovers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 106, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { y = 0.8599, mapID = 1429, label = "Tommy Joe Stonefield", offMapText = "Travel to Tommy Joe Stonefield in Elwynn Forest.", x = 0.2984 },
            },
            text = "Accept Speak with Gramma from Tommy Joe Stonefield.",
            id = "accept-111-speak-with-gramma",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 111, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in Pie for Billy to \"Auntie\" Bernice Stonefield.",
            route = {
                { y = 0.8426, mapID = 1429, label = "\"Auntie\" Bernice Stonefield", offMapText = "Travel to \"Auntie\" Bernice Stonefield in Elwynn Forest.", x = 0.3448 },
            },
            dependsOn = { "accept-86-pie-for-billy", "objective-86-1-chunk-of-boar-meat" },
            id = "turnin-86-pie-for-billy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 86, state = "completed" },
            },
            sourceStep = 73,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 85 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.8426, mapID = 1429, label = "\"Auntie\" Bernice Stonefield", offMapText = "Travel to \"Auntie\" Bernice Stonefield in Elwynn Forest.", x = 0.3448 },
            },
            text = "Accept Back to Billy from \"Auntie\" Bernice Stonefield.",
            id = "accept-84-back-to-billy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 84, state = "activeOrCompleted" },
            },
            sourceStep = 73,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 86 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Turn in Speak with Gramma to Gramma Stonefield.",
            route = {
                { y = 0.8386, mapID = 1429, label = "Gramma Stonefield", offMapText = "Travel to Gramma Stonefield in Elwynn Forest.", x = 0.3494 },
            },
            dependsOn = { "accept-111-speak-with-gramma" },
            id = "turnin-111-speak-with-gramma",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 111, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 106 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.8386, mapID = 1429, label = "Gramma Stonefield", offMapText = "Travel to Gramma Stonefield in Elwynn Forest.", x = 0.3494 },
            },
            text = "Accept Note to William from Gramma Stonefield.",
            id = "accept-107-note-to-william",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 107, state = "activeOrCompleted" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 111 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            text = "Turn in Back to Billy to Billy Maclure.",
            route = {
                { y = 0.8572, mapID = 1429, label = "Billy Maclure", offMapText = "Travel to Billy Maclure in Elwynn Forest.", x = 0.4313 },
            },
            dependsOn = { "accept-84-back-to-billy" },
            id = "turnin-84-back-to-billy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 84, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 86 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            route = {
                { y = 0.8572, mapID = 1429, label = "Billy Maclure", offMapText = "Travel to Billy Maclure in Elwynn Forest.", x = 0.4313 },
            },
            text = "Accept Goldtooth from Billy Maclure.",
            id = "accept-87-goldtooth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 87, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 84 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-60-1-large-candle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 8 Large Candle.",
            complete = {
                questObjective = { id = 60, index = 1, text = "Large Candle", count = 8 },
            },
            route = {
                { mapID = 1429, x = 0.3961, y = 0.8020999999999999, label = "Large Candle", offMapText = "Travel to Large Candle." },
            },
            sourceStep = 78,
            priority = 740,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-60-kobold-candles" },
        },
        {
            id = "objective-47-1-gold-dust",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 10 Gold Dust.",
            complete = {
                questObjective = { id = 47, index = 1, text = "Gold Dust", count = 10 },
            },
            route = {
                { mapID = 1429, x = 0.3961, y = 0.8020999999999999, label = "Gold Dust", offMapText = "Travel to Gold Dust." },
            },
            sourceStep = 78,
            priority = 750,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-47-gold-dust-exchange" },
        },
        {
            priority = 760,
            text = "For Goldtooth: Bring Bernice's Necklace to \"Auntie\" Bernice Stonefield at the Stonefield Farm.",
            id = "objective-87-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 87, state = "complete" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 84 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-87-goldtooth" },
        },
        {
            priority = 770,
            text = "Turn in Goldtooth to \"Auntie\" Bernice Stonefield.",
            route = {
                { y = 0.8425, mapID = 1429, label = "\"Auntie\" Bernice Stonefield", offMapText = "Travel to \"Auntie\" Bernice Stonefield in Elwynn Forest.", x = 0.3449 },
            },
            dependsOn = { "accept-87-goldtooth", "objective-87-quest-work" },
            id = "turnin-87-goldtooth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 87, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 84 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "Turn in Gold Dust Exchange to Remy \"Two Times\".",
            route = {
                { y = 0.6726, mapID = 1429, label = "Remy \"Two Times\"", offMapText = "Travel to Remy \"Two Times\" in Elwynn Forest.", x = 0.4214 },
            },
            dependsOn = { "accept-47-gold-dust-exchange", "objective-47-1-gold-dust" },
            id = "turnin-47-gold-dust-exchange",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 47, state = "completed" },
            },
            sourceStep = 84,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-40-a-fishy-peril",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 40,
            priority = 790,
        },
        {
            priority = 800,
            route = {
                { y = 0.6726, mapID = 1429, label = "Remy \"Two Times\"", offMapText = "Travel to Remy \"Two Times\" in Elwynn Forest.", x = 0.4214 },
            },
            text = "Accept A Fishy Peril from Remy \"Two Times\".",
            id = "accept-40-a-fishy-peril",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 40, state = "activeOrCompleted" },
            },
            sourceStep = 84,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            text = "Turn in A Fishy Peril to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-40-a-fishy-peril" },
            id = "turnin-40-a-fishy-peril",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 40, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            text = "Accept Further Concerns from Marshal Dughan.",
            id = "accept-35-further-concerns",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 35, state = "activeOrCompleted" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 40 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            text = "Turn in The Fargodeep Mine to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-62-the-fargodeep-mine" },
            id = "turnin-62-the-fargodeep-mine",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 62, state = "completed" },
            },
            sourceStep = 85,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 840,
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            text = "Accept The Jasperlode Mine from Marshal Dughan.",
            id = "accept-76-the-jasperlode-mine",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 76, state = "activeOrCompleted" },
            },
            sourceStep = 85,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 62 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            text = "Turn in Kobold Candles to William Pestle.",
            route = {
                { y = 0.657, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            dependsOn = { "accept-60-kobold-candles", "objective-60-1-large-candle" },
            id = "turnin-60-kobold-candles",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 60, state = "completed" },
            },
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            route = {
                { y = 0.657, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            text = "Accept Shipment to Stormwind from William Pestle.",
            id = "accept-61-shipment-to-stormwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 61, state = "activeOrCompleted" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 60 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            text = "Turn in Note to William to William Pestle.",
            route = {
                { y = 0.657, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            dependsOn = { "accept-107-note-to-william" },
            id = "turnin-107-note-to-william",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 107, state = "completed" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 111 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            route = {
                { y = 0.657, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            text = "Accept Collecting Kelp from William Pestle.",
            id = "accept-112-collecting-kelp",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 112, state = "activeOrCompleted" },
            },
            sourceStep = 86,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 107 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            text = "Collect 4 Crystal Kelp Frond.",
            route = {
                { y = 0.662, mapID = 1429, label = "Murloc", offMapText = "Travel to Murloc.", x = 0.494 },
            },
            dependsOn = { "accept-112-collecting-kelp" },
            id = "objective-112-1-murloc",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 112, text = "Murloc", index = 1, count = 4 },
            },
            sourceStep = 95,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 107 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 900,
            text = "Turn in Further Concerns to Guard Thomas.",
            route = {
                { mapID = 1429, x = 0.7397, y = 0.7218000000000001, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest." },
            },
            dependsOn = { "accept-35-further-concerns" },
            id = "turnin-35-further-concerns",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 35, state = "completed" },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 40 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
            route = {
                { mapID = 1429, x = 0.7397, y = 0.7218000000000001, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest." },
            },
            text = "Accept Find the Lost Guards from Guard Thomas.",
            id = "accept-37-find-the-lost-guards",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 37, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 35 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            route = {
                { mapID = 1429, x = 0.7397, y = 0.7218000000000001, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest." },
            },
            text = "Accept Protect the Frontier from Guard Thomas.",
            id = "accept-52-protect-the-frontier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 52, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 930,
            text = "Turn in Find the Lost Guards.",
            route = {
                { y = 0.6033, mapID = 1429, label = "Find the Lost Guards", offMapText = "Travel to Find the Lost Guards.", x = 0.7265 },
            },
            dependsOn = { "accept-37-find-the-lost-guards" },
            id = "turnin-37-find-the-lost-guards",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 37, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 35 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            route = {
                { y = 0.6033, mapID = 1429, label = "Discover Rolf's Fate", offMapText = "Travel to Discover Rolf's Fate.", x = 0.7265 },
            },
            text = "Accept Discover Rolf's Fate.",
            id = "accept-45-discover-rolf-s-fate",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 45, state = "activeOrCompleted" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 37 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 950,
            route = {
                { y = 0.6611, mapID = 1429, label = "Supervisor Raelen", offMapText = "Travel to Supervisor Raelen in Elwynn Forest.", x = 0.8138 },
            },
            text = "Accept A Bundle of Trouble from Supervisor Raelen.",
            id = "accept-5545-a-bundle-of-trouble",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5545, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 960,
            text = "Collect 8 Bundle of Wood.",
            route = {
                { y = 0.594, mapID = 1429, label = "Bundle of Wood", offMapText = "Travel to Bundle of Wood.", x = 0.791 },
            },
            dependsOn = { "accept-5545-a-bundle-of-trouble" },
            id = "objective-5545-1-bundle-of-wood",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5545, text = "Bundle of Wood", index = 1, count = 8 },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-52-2-young-forest-bear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 5 Young Forest Bear.",
            complete = {
                questObjective = { id = 52, index = 2, text = "Young Forest Bear", count = 5 },
            },
            route = {
                { mapID = 1429, x = 0.8140000000000001, y = 0.588, label = "Young Forest Bear", offMapText = "Travel to Young Forest Bear." },
            },
            sourceStep = 101,
            priority = 970,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-52-protect-the-frontier" },
        },
        {
            id = "objective-52-1-prowler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Prowler.",
            complete = {
                questObjective = { id = 52, index = 1, text = "Prowler", count = 8 },
            },
            route = {
                { mapID = 1429, x = 0.8, y = 0.5920000000000001, label = "Prowler", offMapText = "Travel to Prowler." },
            },
            sourceStep = 102,
            priority = 980,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-52-protect-the-frontier" },
        },
        {
            priority = 990,
            text = "Turn in Discover Rolf's Fate.",
            route = {
                { y = 0.5552, mapID = 1429, label = "Discover Rolf's Fate", offMapText = "Travel to Discover Rolf's Fate.", x = 0.798 },
            },
            dependsOn = { "accept-45-discover-rolf-s-fate" },
            id = "turnin-45-discover-rolf-s-fate",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 45, state = "completed" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 37 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1000,
            route = {
                { y = 0.5552, mapID = 1429, label = "Report to Thomas", offMapText = "Travel to Report to Thomas.", x = 0.798 },
            },
            text = "Accept Report to Thomas.",
            id = "accept-71-report-to-thomas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 71, state = "activeOrCompleted" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 45 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1010,
            text = "Turn in A Bundle of Trouble to Supervisor Raelen.",
            route = {
                { y = 0.6612, mapID = 1429, label = "Supervisor Raelen", offMapText = "Travel to Supervisor Raelen in Elwynn Forest.", x = 0.8138 },
            },
            dependsOn = { "accept-5545-a-bundle-of-trouble", "objective-5545-1-bundle-of-wood" },
            id = "turnin-5545-a-bundle-of-trouble",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5545, state = "completed" },
            },
            sourceStep = 105,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            route = {
                { y = 0.6878, mapID = 1429, label = "Sara Timberlain", offMapText = "Travel to Sara Timberlain in Elwynn Forest.", x = 0.7946 },
            },
            text = "Accept Red Linen Goods from Sara Timberlain.",
            id = "accept-83-red-linen-goods",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 83, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1030,
            text = "Turn in Protect the Frontier to Guard Thomas.",
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            dependsOn = { "accept-52-protect-the-frontier", "objective-52-2-young-forest-bear", "objective-52-1-prowler" },
            id = "turnin-52-protect-the-frontier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 52, state = "completed" },
            },
            sourceStep = 107,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            text = "Turn in Report to Thomas to Guard Thomas.",
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            dependsOn = { "accept-71-report-to-thomas" },
            id = "turnin-71-report-to-thomas",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 71, state = "completed" },
            },
            sourceStep = 107,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 45 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Deliver Thomas' Report from Guard Thomas.",
            id = "accept-39-deliver-thomas-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 39, state = "activeOrCompleted" },
            },
            sourceStep = 107,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 71 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-109-report-to-gryan-stoutmantle",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 109,
            priority = 1060,
        },
        {
            priority = 1070,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Report to Gryan Stoutmantle from Guard Thomas.",
            id = "accept-109-report-to-gryan-stoutmantle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 109, state = "activeOrCompleted" },
            },
            sourceStep = 107,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "Collect 6 Red Linen Bandana.",
            route = {
                { y = 0.764, mapID = 1429, label = "Defias Bandit", offMapText = "Travel to Defias Bandit.", x = 0.702 },
            },
            dependsOn = { "accept-83-red-linen-goods" },
            id = "objective-83-1-defias-bandit",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 83, text = "Defias Bandit", index = 1, count = 6 },
            },
            sourceStep = 108,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-184-furlbrow-s-deed",
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
            text = "Loot Westfall Deed from Defias Bandit, Defias Rogue Wizard, Surena Caledon. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Westfall Deed", minCount = 1 },
                    },
                    {
                        quest = { id = 184, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.3406, y = 0.5559000000000001, label = "Defias Bandit", offMapText = "Travel to Defias Bandit." },
            },
            dependsOn = {},
            priority = 1090,
        },
        {
            priority = 1100,
            text = "Use the Westfall Deed to accept Furlbrow's Deed.",
            id = "accept-184-furlbrow-s-deed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 184, state = "activeOrCompleted" },
            },
            sourceStep = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1110,
            text = "Turn in Red Linen Goods to Sara Timberlain.",
            route = {
                { y = 0.6879, mapID = 1429, label = "Sara Timberlain", offMapText = "Travel to Sara Timberlain in Elwynn Forest.", x = 0.7946 },
            },
            dependsOn = { "accept-83-red-linen-goods", "objective-83-1-defias-bandit" },
            id = "turnin-83-red-linen-goods",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 83, state = "completed" },
            },
            sourceStep = 111,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Turn in Collecting Kelp to William Pestle.",
            route = {
                { y = 0.6571, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            dependsOn = { "accept-112-collecting-kelp", "objective-112-1-murloc" },
            id = "turnin-112-collecting-kelp",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 112, state = "completed" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 107 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1130,
            route = {
                { y = 0.6571, mapID = 1429, label = "William Pestle", offMapText = "Travel to William Pestle in Elwynn Forest.", x = 0.4332 },
            },
            text = "Accept The Escape from William Pestle.",
            id = "accept-114-the-escape",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 114, state = "activeOrCompleted" },
            },
            sourceStep = 114,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1140,
            text = "Turn in Deliver Thomas' Report to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-39-deliver-thomas-report" },
            id = "turnin-39-deliver-thomas-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 39, state = "completed" },
            },
            sourceStep = 115,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 71 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1150,
            text = "Turn in The Jasperlode Mine to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-76-the-jasperlode-mine" },
            id = "turnin-76-the-jasperlode-mine",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 76, state = "completed" },
            },
            sourceStep = 115,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 62 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1160,
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            text = "Accept Westbrook Garrison Needs Help! from Marshal Dughan.",
            id = "accept-239-westbrook-garrison-needs-help",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 239, state = "activeOrCompleted" },
            },
            sourceStep = 115,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 76 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1170,
            route = {
                { y = 0.6555, mapID = 1429, label = "Smith Argus", offMapText = "Travel to Smith Argus in Elwynn Forest.", x = 0.4171 },
            },
            text = "Accept Elmore's Task from Smith Argus.",
            id = "accept-1097-elmore-s-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1097, state = "activeOrCompleted" },
            },
            sourceStep = 116,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1685-gakin-s-summons",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
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
            checkpointQuest = 1685,
            priority = 1180,
        },
        {
            priority = 1190,
            route = {
                { y = 0.6627, mapID = 1429, label = "Remen Marcot", offMapText = "Travel to Remen Marcot in Elwynn Forest.", x = 0.4449 },
            },
            text = "Accept Gakin's Summons from Remen Marcot.",
            id = "accept-1685-gakin-s-summons",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1685, state = "activeOrCompleted" },
            },
            sourceStep = 118,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5635-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 1 },
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
            checkpointQuest = 5635,
            alternativeQuests = { 5634, 5636, 5637, 5638, 5639, 5640 },
            priority = 1200,
        },
        {
            priority = 1210,
            route = {
                { y = 0.6572, mapID = 1429, label = "Priestess Josetta", offMapText = "Travel to Priestess Josetta in Elwynn Forest.", x = 0.4328 },
            },
            text = "Accept Desperate Prayer from Priestess Josetta.",
            id = "accept-5635-desperate-prayer",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5635, state = "activeOrCompleted" },
            },
            sourceStep = 122,
            requiredQuests = {},
            alternativeQuests = { 5634, 5636, 5637, 5638, 5639, 5640 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2205-seek-out-si-7",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2205,
            priority = 1220,
        },
        {
            priority = 1230,
            route = {
                { y = 0.6594, mapID = 1429, label = "Keryn Sylvius", offMapText = "Travel to Keryn Sylvius in Elwynn Forest.", x = 0.4387 },
            },
            text = "Accept Seek out SI: 7 from Keryn Sylvius.",
            id = "accept-2205-seek-out-si-7",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
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
                quest = { id = 2205, state = "activeOrCompleted" },
            },
            sourceStep = 124,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1638-a-warrior-s-training",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
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
            checkpointQuest = 1638,
            alternativeQuests = { 1678, 1683, 1639 },
            priority = 1240,
        },
        {
            priority = 1250,
            route = {
                { y = 0.6577, mapID = 1429, label = "Lyria Du Lac", offMapText = "Travel to Lyria Du Lac in Elwynn Forest.", x = 0.4109 },
            },
            text = "Accept A Warrior's Training from Lyria Du Lac.",
            id = "accept-1638-a-warrior-s-training",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1638, state = "activeOrCompleted" },
            },
            sourceStep = 127,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683, 1639 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1260,
            text = "Turn in The Escape to Maybell Maclure.",
            route = {
                { y = 0.8962, mapID = 1429, label = "Maybell Maclure", offMapText = "Travel to Maybell Maclure in Elwynn Forest.", x = 0.4315 },
            },
            dependsOn = { "accept-114-the-escape" },
            id = "turnin-114-the-escape",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 114, state = "completed" },
            },
            sourceStep = 128,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1270,
            text = "Turn in Westbrook Garrison Needs Help! to Deputy Rainer.",
            route = {
                { y = 0.7445, mapID = 1429, label = "Deputy Rainer", offMapText = "Travel to Deputy Rainer in Elwynn Forest.", x = 0.2423 },
            },
            dependsOn = { "accept-239-westbrook-garrison-needs-help" },
            id = "turnin-239-westbrook-garrison-needs-help",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 239, state = "completed" },
            },
            sourceStep = 129,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 76 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1280,
            route = {
                { y = 0.7445, mapID = 1429, label = "Deputy Rainer", offMapText = "Travel to Deputy Rainer in Elwynn Forest.", x = 0.2423 },
            },
            text = "Accept Riverpaw Gnoll Bounty from Deputy Rainer.",
            id = "accept-11-riverpaw-gnoll-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 11, state = "activeOrCompleted" },
            },
            sourceStep = 129,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 76 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1290,
            text = "Collect 8 Painted Gnoll Armband.",
            route = {
                { y = 0.822, mapID = 1429, label = "Riverpaw Runt", offMapText = "Travel to Riverpaw Runt.", x = 0.272 },
            },
            dependsOn = { "accept-11-riverpaw-gnoll-bounty" },
            id = "objective-11-1-riverpaw-runt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 11, text = "Riverpaw Runt", index = 1, count = 8 },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 76 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1300,
            text = "Turn in Riverpaw Gnoll Bounty to Deputy Rainer.",
            route = {
                { y = 0.7445, mapID = 1429, label = "Deputy Rainer", offMapText = "Travel to Deputy Rainer in Elwynn Forest.", x = 0.2423 },
            },
            dependsOn = { "accept-11-riverpaw-gnoll-bounty", "objective-11-1-riverpaw-runt" },
            id = "turnin-11-riverpaw-gnoll-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 11, state = "completed" },
            },
            sourceStep = 131,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 76 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1310,
            text = "Turn in Furlbrow's Deed to Farmer Furlbrow.",
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            dependsOn = { "accept-184-furlbrow-s-deed" },
            id = "turnin-184-furlbrow-s-deed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 184, state = "completed" },
            },
            sourceStep = 132,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1320,
            route = {
                { y = 0.1936, mapID = 1436, label = "Farmer Furlbrow", offMapText = "Travel to Farmer Furlbrow in Westfall.", x = 0.5996 },
            },
            text = "Accept The Forgotten Heirloom from Farmer Furlbrow.",
            id = "accept-64-the-forgotten-heirloom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 64, state = "activeOrCompleted" },
            },
            sourceStep = 132,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1330,
            route = {
                { y = 0.1942, mapID = 1436, label = "Verna Furlbrow", offMapText = "Travel to Verna Furlbrow in Westfall.", x = 0.5992 },
            },
            text = "Accept Westfall Stew from Verna Furlbrow.",
            id = "accept-36-westfall-stew",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 36, state = "activeOrCompleted" },
            },
            sourceStep = 133,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1340,
            route = {
                { y = 0.1942, mapID = 1436, label = "Verna Furlbrow", offMapText = "Travel to Verna Furlbrow in Westfall.", x = 0.5992 },
            },
            text = "Accept Poor Old Blanchy from Verna Furlbrow.",
            id = "accept-151-poor-old-blanchy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 151, state = "activeOrCompleted" },
            },
            sourceStep = 133,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1350,
            route = {
                { y = 0.3122, mapID = 1436, label = "Farmer Saldean", offMapText = "Travel to Farmer Saldean in Westfall.", x = 0.5605 },
            },
            text = "Accept The Killing Fields from Farmer Saldean.",
            id = "accept-9-the-killing-fields",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 9, state = "activeOrCompleted" },
            },
            sourceStep = 134,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1360,
            text = "Turn in Westfall Stew to Salma Saldean.",
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            dependsOn = { "accept-36-westfall-stew" },
            id = "turnin-36-westfall-stew",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 36, state = "completed" },
            },
            sourceStep = 135,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            text = "Accept Westfall Stew from Salma Saldean.",
            id = "accept-38-westfall-stew",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 38, state = "activeOrCompleted" },
            },
            sourceStep = 135,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 36 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1380,
            route = {
                { y = 0.3052, mapID = 1436, label = "Salma Saldean", offMapText = "Travel to Salma Saldean in Westfall.", x = 0.5642 },
            },
            text = "Accept Goretusk Liver Pie from Salma Saldean.",
            id = "accept-22-goretusk-liver-pie",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 22, state = "activeOrCompleted" },
            },
            sourceStep = 135,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1390,
            text = "Turn in Report to Gryan Stoutmantle to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-109-report-to-gryan-stoutmantle" },
            id = "turnin-109-report-to-gryan-stoutmantle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 109, state = "completed" },
            },
            sourceStep = 136,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1400,
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The People's Militia from Gryan Stoutmantle.",
            id = "accept-12-the-people-s-militia",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 12, state = "activeOrCompleted" },
            },
            sourceStep = 136,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1410,
            route = {
                { y = 0.4762, mapID = 1436, label = "Captain Danuvin", offMapText = "Travel to Captain Danuvin in Westfall.", x = 0.5642 },
            },
            text = "Accept Patrolling Westfall from Captain Danuvin.",
            id = "accept-102-patrolling-westfall",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 102, state = "activeOrCompleted" },
            },
            sourceStep = 137,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6181-a-swift-message",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1 },
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
            checkpointQuest = 6181,
            priority = 1420,
        },
        {
            priority = 1430,
            route = {
                { y = 0.4717, mapID = 1436, label = "Quartermaster Lewis", offMapText = "Travel to Quartermaster Lewis in Westfall.", x = 0.57 },
            },
            text = "Accept A Swift Message from Quartermaster Lewis.",
            id = "accept-6181-a-swift-message",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6181, state = "activeOrCompleted" },
            },
            sourceStep = 138,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1440,
            text = "Turn in A Swift Message to Thor.",
            route = {
                { y = 0.5264, mapID = 1436, label = "Thor", offMapText = "Travel to Thor in Westfall.", x = 0.5656 },
            },
            dependsOn = { "accept-6181-a-swift-message" },
            id = "turnin-6181-a-swift-message",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6181, state = "completed" },
            },
            sourceStep = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1450,
            route = {
                { y = 0.5264, mapID = 1436, label = "Thor", offMapText = "Travel to Thor in Westfall.", x = 0.5656 },
            },
            text = "Accept Continue to Stormwind from Thor.",
            id = "accept-6281-continue-to-stormwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6281, state = "activeOrCompleted" },
            },
            sourceStep = 140,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1460,
            text = "Turn in Shipment to Stormwind to Morgan Pestle.",
            route = {
                { y = 0.6459, mapID = 1453, label = "Morgan Pestle", offMapText = "Travel to Morgan Pestle in Stormwind City.", x = 0.5621 },
            },
            dependsOn = { "accept-61-shipment-to-stormwind" },
            id = "turnin-61-shipment-to-stormwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 61, state = "completed" },
            },
            sourceStep = 142,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 60 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-1685-gakin-s-summons",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1685,
            priority = 1470,
        },
        {
            priority = 1480,
            text = "Turn in Gakin's Summons to Gakin the Darkbinder.",
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1685-gakin-s-summons" },
            id = "turnin-1685-gakin-s-summons",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1685, state = "completed" },
            },
            sourceStep = 144,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1490,
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Accept Surena Caledon from Gakin the Darkbinder.",
            id = "accept-1688-surena-caledon",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1688, state = "activeOrCompleted" },
            },
            sourceStep = 144,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1500,
            text = "Collect 1 Surena's Choker.",
            route = {
                { y = 0.8078, mapID = 1429, label = "Surena Caledon", offMapText = "Travel to Surena Caledon.", x = 0.7102 },
            },
            dependsOn = { "accept-1688-surena-caledon" },
            id = "objective-1688-1-surena-caledon",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1688, text = "Surena Caledon", index = 1, count = 1 },
            },
            sourceStep = 146,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
            text = "Turn in Surena Caledon to Gakin the Darkbinder.",
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1688-surena-caledon", "objective-1688-1-surena-caledon" },
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1688, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Accept The Binding from Gakin the Darkbinder.",
            id = "accept-1689-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1689, state = "activeOrCompleted" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1530,
            text = "Kill Summoned Voidwalker.",
            route = {
                { y = 0.7746, mapID = 1453, label = "Bloodstone Choker", offMapText = "Travel to Bloodstone Choker.", x = 0.2511 },
            },
            dependsOn = { "accept-1689-the-binding" },
            id = "objective-1689-1-bloodstone-choker",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1689, text = "Bloodstone Choker", index = 1 },
            },
            sourceStep = 148,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1540,
            text = "Turn in The Binding to Gakin the Darkbinder.",
            route = {
                { y = 0.7853, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2525 },
            },
            dependsOn = { "accept-1689-the-binding", "objective-1689-1-bloodstone-choker" },
            id = "turnin-1689-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1689, state = "completed" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            text = "Turn in Seek out SI: 7 to Master Mathias Shaw.",
            route = {
                { y = 0.5984, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            dependsOn = { "accept-2205-seek-out-si-7" },
            id = "turnin-2205-seek-out-si-7",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
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
                quest = { id = 2205, state = "completed" },
            },
            sourceStep = 151,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1560,
            text = "Turn in Continue to Stormwind to Osric Strang.",
            route = {
                { y = 0.4724, mapID = 1453, label = "Osric Strang", offMapText = "Travel to Osric Strang in Stormwind City.", x = 0.7432 },
            },
            dependsOn = { "accept-6281-continue-to-stormwind" },
            id = "turnin-6281-continue-to-stormwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6281, state = "completed" },
            },
            sourceStep = 152,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
            route = {
                { y = 0.4724, mapID = 1453, label = "Osric Strang", offMapText = "Travel to Osric Strang in Stormwind City.", x = 0.7432 },
            },
            text = "Accept Dungar Longdrink from Osric Strang.",
            id = "accept-6261-dungar-longdrink",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6261, state = "activeOrCompleted" },
            },
            sourceStep = 152,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1580,
            text = "Turn in A Warrior's Training to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1638-a-warrior-s-training" },
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1638, state = "completed" },
            },
            sourceStep = 153,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683, 1639 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1590,
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            text = "Accept Bartleby the Drunk from Harry Burlguard.",
            id = "accept-1639-bartleby-the-drunk",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "activeOrCompleted" },
            },
            sourceStep = 153,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1600,
            text = "Turn in Bartleby the Drunk to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            id = "turnin-1639-bartleby-the-drunk",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "completed" },
            },
            sourceStep = 154,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1610,
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            text = "Accept Beat Bartleby from Bartleby.",
            id = "accept-1640-beat-bartleby",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "activeOrCompleted" },
            },
            sourceStep = 154,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1640-1-bartleby",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1640,
            priority = 1620,
        },
        {
            priority = 1630,
            text = "Kill Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby" },
            id = "objective-1640-1-bartleby",
            kind = "objective",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
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
                questObjective = { id = 1640, text = "Bartleby", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1640,
            text = "Turn in Beat Bartleby to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby", "objective-1640-1-bartleby" },
            id = "turnin-1640-beat-bartleby",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "completed" },
            },
            sourceStep = 156,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1650,
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            text = "Accept Bartleby's Mug from Bartleby.",
            id = "accept-1665-bartleby-s-mug",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1660,
            text = "Turn in Bartleby's Mug to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1665-bartleby-s-mug" },
            id = "turnin-1665-bartleby-s-mug",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "completed" },
            },
            sourceStep = 157,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1670,
            text = "Turn in Desperate Prayer to High Priestess Laurena.",
            route = {
                { mapID = 1453, x = 0.3858, y = 0.2605, label = "High Priestess Laurena", offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5635-desperate-prayer" },
            id = "turnin-5635-desperate-prayer",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 5635, state = "completed" },
            },
            sourceStep = 158,
            requiredQuests = {},
            alternativeQuests = { 5634, 5636, 5637, 5638, 5639, 5640 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1680,
            text = "Turn in Elmore's Task to Grimand Elmore.",
            route = {
                { y = 0.1207, mapID = 1453, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore in Stormwind City.", x = 0.5176 },
            },
            dependsOn = { "accept-1097-elmore-s-task" },
            id = "turnin-1097-elmore-s-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1097, state = "completed" },
            },
            sourceStep = 163,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1690,
            route = {
                { y = 0.1207, mapID = 1453, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore in Stormwind City.", x = 0.5176 },
            },
            text = "Accept Stormpike's Delivery from Grimand Elmore.",
            id = "accept-353-stormpike-s-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 353, state = "activeOrCompleted" },
            },
            sourceStep = 163,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6661-deeprun-rat-roundup",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 6661,
            priority = 1700,
        },
        {
            priority = 1710,
            text = "Accept Deeprun Rat Roundup from Monty.",
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
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
                quest = { id = 6661, state = "activeOrCompleted" },
            },
            sourceStep = 165,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-6661-deeprun-rat-roundup" },
            id = "objective-6661-1-rat-catcher-s-flute",
            text = "In the Deeprun Tram tunnels, use the Rat Catcher's Flute on Deeprun Rats until five are captured.",
            useClientPin = true,
            complete = {
                questObjective = { id = 6661, text = "Rat Catcher's Flute", index = 1 },
            },
            kind = "objective",
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
            priority = 1720,
            requiredQuests = {},
            useClientText = false,
        },
        {
            dependsOn = { "accept-6661-deeprun-rat-roundup", "objective-6661-1-rat-catcher-s-flute" },
            id = "turnin-6661-deeprun-rat-roundup",
            text = "Turn in Deeprun Rat Roundup to Monty.",
            useClientPin = true,
            complete = {
                quest = { id = 6661, state = "completed" },
            },
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
            priority = 1730,
            sourceStep = 167,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 1740,
            route = {
                { y = 0.5383, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            text = "Accept Frostmane Hold from Senir Whitebeard.",
            id = "accept-287-frostmane-hold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 287, state = "activeOrCompleted" },
            },
            sourceStep = 172,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            route = {
                { y = 0.4937, mapID = 1426, label = "Razzle Sprysprocket", offMapText = "Travel to Razzle Sprysprocket in Dun Morogh.", x = 0.4585 },
            },
            text = "Accept Operation Recombobulation from Razzle Sprysprocket.",
            id = "accept-412-operation-recombobulation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 412, state = "activeOrCompleted" },
            },
            sourceStep = 173,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1760,
            route = {
                { mapID = 1426, x = 0.3457, y = 0.5165, label = "Tundra MacGrann", offMapText = "Travel to Tundra MacGrann in Dun Morogh." },
            },
            text = "Accept Tundra MacGrann's Stolen Stash from Tundra MacGrann.",
            id = "accept-312-tundra-macgrann-s-stolen-stash",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 312, state = "activeOrCompleted" },
            },
            sourceStep = 174,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-312-1-macgrann-s-dried-meats",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 MacGrann's Dried Meats.",
            complete = {
                questObjective = { id = 312, index = 1, text = "MacGrann's Dried Meats", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.3851, y = 0.5393, label = "MacGrann's Dried Meats", offMapText = "Travel to MacGrann's Dried Meats." },
            },
            sourceStep = 175,
            priority = 1770,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash" },
        },
        {
            priority = 1780,
            text = "Turn in Tundra MacGrann's Stolen Stash to Tundra MacGrann.",
            route = {
                { y = 0.5165, mapID = 1426, label = "Tundra MacGrann", offMapText = "Travel to Tundra MacGrann in Dun Morogh.", x = 0.3457 },
            },
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash", "objective-312-1-macgrann-s-dried-meats" },
            id = "turnin-312-tundra-macgrann-s-stolen-stash",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 312, state = "completed" },
            },
            sourceStep = 176,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-287-1-frostmane-headhunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 5 Frostmane Headhunter.",
            complete = {
                questObjective = { id = 287, index = 1, text = "Frostmane Headhunter", count = 5 },
            },
            route = {
                { mapID = 1426, x = 0.2487, y = 0.509, label = "Frostmane Headhunter", offMapText = "Travel to Frostmane Headhunter." },
            },
            sourceStep = 178,
            priority = 1790,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-287-frostmane-hold" },
        },
        {
            priority = 1800,
            text = "Collect 8 Restabilization Cog.",
            route = {
                { mapID = 1426, x = 0.244, y = 0.43, label = "Restabilization Cog", offMapText = "Travel to Restabilization Cog." },
            },
            dependsOn = { "accept-412-operation-recombobulation" },
            id = "objective-412-1-leper-gnome",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 412, text = "Leper Gnome", index = 1, count = 8 },
            },
            sourceStep = 179,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1810,
            text = "Collect 8 Gyromechanic Gear.",
            route = {
                { mapID = 1426, x = 0.244, y = 0.43, label = "Gyromechanic Gear", offMapText = "Travel to Gyromechanic Gear." },
            },
            dependsOn = { "accept-412-operation-recombobulation" },
            id = "objective-412-2-gyromechanic-gear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 412, text = "Gyromechanic Gear", index = 2, count = 8 },
            },
            sourceStep = 179,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1820,
            text = "Turn in Operation Recombobulation to Razzle Sprysprocket.",
            route = {
                { y = 0.4937, mapID = 1426, label = "Razzle Sprysprocket", offMapText = "Travel to Razzle Sprysprocket in Dun Morogh.", x = 0.4585 },
            },
            dependsOn = { "accept-412-operation-recombobulation", "objective-412-1-leper-gnome", "objective-412-2-gyromechanic-gear" },
            id = "turnin-412-operation-recombobulation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 412, state = "completed" },
            },
            sourceStep = 183,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1830,
            text = "Turn in Frostmane Hold to Senir Whitebeard.",
            route = {
                { y = 0.5382, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            dependsOn = { "accept-287-frostmane-hold", "objective-287-1-frostmane-headhunter" },
            id = "turnin-287-frostmane-hold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 287, state = "completed" },
            },
            sourceStep = 184,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1840,
            route = {
                { y = 0.5382, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            text = "Accept The Reports from Senir Whitebeard.",
            id = "accept-291-the-reports",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 291, state = "activeOrCompleted" },
            },
            sourceStep = 184,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 287 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1850,
            route = {
                { y = 0.5597, mapID = 1426, label = "Senator Mehr Stonehallow", offMapText = "Travel to Senator Mehr Stonehallow in Dun Morogh.", x = 0.6867 },
            },
            text = "Accept The Public Servant from Senator Mehr Stonehallow.",
            id = "accept-433-the-public-servant",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 433, state = "activeOrCompleted" },
            },
            sourceStep = 185,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1860,
            route = {
                { y = 0.5633, mapID = 1426, label = "Foreman Stonebrow", offMapText = "Travel to Foreman Stonebrow in Dun Morogh.", x = 0.6908 },
            },
            text = "Accept Those Blasted Troggs! from Foreman Stonebrow.",
            id = "accept-432-those-blasted-troggs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 432, state = "activeOrCompleted" },
            },
            sourceStep = 186,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1870,
            text = "Kill 10 Rockjaw Bonesnapper.",
            route = {
                { mapID = 1426, x = 0.7098, y = 0.5477000000000001, label = "Rockjaw Bonesnapper", offMapText = "Travel to Rockjaw Bonesnapper." },
            },
            dependsOn = { "accept-433-the-public-servant" },
            id = "objective-433-1-rockjaw-bonesnapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 433, text = "Rockjaw Bonesnapper", index = 1, count = 10 },
            },
            sourceStep = 187,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-432-1-rockjaw-skullthumper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 6 Rockjaw Skullthumper.",
            complete = {
                questObjective = { id = 432, index = 1, text = "Rockjaw Skullthumper", count = 6 },
            },
            route = {
                { mapID = 1426, x = 0.7070000000000001, y = 0.5649000000000001, label = "Rockjaw Skullthumper", offMapText = "Travel to Rockjaw Skullthumper." },
            },
            sourceStep = 188,
            priority = 1880,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-432-those-blasted-troggs" },
        },
        {
            priority = 1890,
            text = "Turn in The Public Servant to Senator Mehr Stonehallow.",
            route = {
                { mapID = 1426, x = 0.6867, y = 0.5597, label = "Senator Mehr Stonehallow", offMapText = "Travel to Senator Mehr Stonehallow in Dun Morogh." },
            },
            dependsOn = { "accept-433-the-public-servant", "objective-433-1-rockjaw-bonesnapper" },
            id = "turnin-433-the-public-servant",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 433, state = "completed" },
            },
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1900,
            text = "Turn in Those Blasted Troggs! to Foreman Stonebrow.",
            route = {
                { y = 0.5633, mapID = 1426, label = "Foreman Stonebrow", offMapText = "Travel to Foreman Stonebrow in Dun Morogh.", x = 0.6908 },
            },
            dependsOn = { "accept-432-those-blasted-troggs", "objective-432-1-rockjaw-skullthumper" },
            id = "turnin-432-those-blasted-troggs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 432, state = "completed" },
            },
            sourceStep = 191,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1910,
            route = {
                { y = 0.3919, mapID = 1426, label = "Pilot Hammerfoot", offMapText = "Travel to Pilot Hammerfoot in Dun Morogh.", x = 0.8389 },
            },
            text = "Accept The Lost Pilot from Pilot Hammerfoot.",
            id = "accept-419-the-lost-pilot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 419, state = "activeOrCompleted" },
            },
            sourceStep = 193,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1920,
            text = "Turn in The Lost Pilot.",
            route = {
                { y = 0.3617, mapID = 1426, label = "The Lost Pilot", offMapText = "Travel to The Lost Pilot.", x = 0.7967 },
            },
            dependsOn = { "accept-419-the-lost-pilot" },
            id = "turnin-419-the-lost-pilot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 419, state = "completed" },
            },
            sourceStep = 194,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1930,
            route = {
                { y = 0.3617, mapID = 1426, label = "A Pilot's Revenge", offMapText = "Travel to A Pilot's Revenge.", x = 0.7967 },
            },
            text = "Accept A Pilot's Revenge.",
            id = "accept-417-a-pilot-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 417, state = "activeOrCompleted" },
            },
            sourceStep = 194,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1940,
            text = "Collect 1 Mangy Claw.",
            route = {
                { y = 0.3702, mapID = 1426, label = "Mangeclaw", offMapText = "Travel to Mangeclaw.", x = 0.7897 },
            },
            dependsOn = { "accept-417-a-pilot-s-revenge" },
            id = "objective-417-1-mangeclaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 417, text = "Mangeclaw", index = 1, count = 1 },
            },
            sourceStep = 195,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1950,
            text = "Turn in A Pilot's Revenge to Pilot Hammerfoot.",
            route = {
                { y = 0.3919, mapID = 1426, label = "Pilot Hammerfoot", offMapText = "Travel to Pilot Hammerfoot in Dun Morogh.", x = 0.8389 },
            },
            dependsOn = { "accept-417-a-pilot-s-revenge", "objective-417-1-mangeclaw" },
            id = "turnin-417-a-pilot-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 417, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1960,
            text = "Turn in The Reports to Senator Barin Redstone in Ironforge.",
            route = {
                { y = 0.5749, mapID = 1455, label = "Senator Barin Redstone", offMapText = "Travel to Senator Barin Redstone.", x = 0.3955 },
            },
            dependsOn = { "accept-291-the-reports" },
            id = "turnin-291-the-reports",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 291, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 287 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1970,
            text = "Turn in Stormpike's Delivery to Mountaineer Stormpike.",
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            dependsOn = { "accept-353-stormpike-s-delivery" },
            id = "turnin-353-stormpike-s-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 353, state = "completed" },
            },
            sourceStep = 197,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1980,
            route = {
                { y = 0.4928, mapID = 1432, label = "Vidra Hearthstove", offMapText = "Travel to Vidra Hearthstove in Loch Modan.", x = 0.3483 },
            },
            text = "Accept Thelsamar Blood Sausages from Vidra Hearthstove.",
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "activeOrCompleted" },
            },
            sourceStep = 199,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1990,
            text = "Accept Rat Catching from Mountaineer Kadrell.",
            id = "accept-416-rat-catching",
            kind = "accept",
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
                quest = { id = 416, state = "activeOrCompleted" },
            },
            sourceStep = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 2000,
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell.",
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1339, state = "activeOrCompleted" },
            },
            sourceStep = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 2010,
            text = "Collect 12 Tunnel Rat Ear.",
            route = {
                { y = 0.45, mapID = 1432, label = "Tunnel Rat Scout", offMapText = "Travel to Tunnel Rat Scout.", x = 0.284 },
            },
            dependsOn = { "accept-416-rat-catching" },
            id = "objective-416-1-tunnel-rat-scout",
            kind = "objective",
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
                questObjective = { id = 416, text = "Tunnel Rat Scout", index = 1, count = 12 },
            },
            sourceStep = 201,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2020,
            text = "Turn in Mountaineer Stormpike's Task to Mountaineer Stormpike.",
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            dependsOn = { "accept-1339-mountaineer-stormpike-s-task" },
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1339, state = "completed" },
            },
            sourceStep = 202,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2030,
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            text = "Accept Stormpike's Order from Mountaineer Stormpike.",
            id = "accept-1338-stormpike-s-order",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1338, state = "activeOrCompleted" },
            },
            sourceStep = 202,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-416-rat-catching", "objective-416-1-tunnel-rat-scout" },
            id = "turnin-416-rat-catching",
            text = "Turn in Rat Catching to Mountaineer Kadrell.",
            useClientPin = true,
            complete = {
                quest = { id = 416, state = "completed" },
            },
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
            priority = 2040,
            sourceStep = 206,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 2050,
            text = "For Thelsamar Blood Sausages: Bring 3 pieces of Bear Meat, 3 Boar Intestines, and 3 Spider Ichor to Vidra Hearthstove in Thelsamar.",
            id = "objective-418-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "complete" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
        },
        {
            priority = 2060,
            text = "Turn in Thelsamar Blood Sausages to Vidra Hearthstove.",
            route = {
                { y = 0.4928, mapID = 1432, label = "Vidra Hearthstove", offMapText = "Travel to Vidra Hearthstove in Loch Modan.", x = 0.3483 },
            },
            dependsOn = { "accept-418-thelsamar-blood-sausages", "objective-418-quest-work" },
            id = "turnin-418-thelsamar-blood-sausages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "completed" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2070,
            route = {
                { y = 0.7312, mapID = 1432, label = "Mountaineer Cobbleflint", offMapText = "Travel to Mountaineer Cobbleflint in Loch Modan.", x = 0.2207 },
            },
            text = "Accept In Defense of the King's Lands from Mountaineer Cobbleflint.",
            id = "accept-224-in-defense-of-the-king-s-lands",
            kind = "accept",
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
                quest = { id = 224, state = "activeOrCompleted" },
            },
            sourceStep = 208,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2080,
            route = {
                { y = 0.7367, mapID = 1432, label = "Captain Rugelfuss", offMapText = "Travel to Captain Rugelfuss in Loch Modan.", x = 0.2323 },
            },
            text = "Accept The Trogg Threat from Captain Rugelfuss.",
            id = "accept-267-the-trogg-threat",
            kind = "accept",
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
                quest = { id = 267, state = "activeOrCompleted" },
            },
            sourceStep = 209,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-224-1-stonesplinter-trogg",
            kind = "objective",
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
            text = "Kill 10 Stonesplinter Trogg.",
            complete = {
                questObjective = { id = 224, index = 1, text = "Stonesplinter Trogg", count = 10 },
            },
            route = {
                { mapID = 1432, x = 0.326, y = 0.726, label = "Stonesplinter Trogg", offMapText = "Travel to Stonesplinter Trogg." },
            },
            sourceStep = 211,
            priority = 2090,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
        },
        {
            id = "objective-224-2-stonesplinter-scout",
            kind = "objective",
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
            text = "Kill 10 Stonesplinter Scout.",
            complete = {
                questObjective = { id = 224, index = 2, text = "Stonesplinter Scout", count = 10 },
            },
            route = {
                { mapID = 1432, x = 0.326, y = 0.726, label = "Stonesplinter Scout", offMapText = "Travel to Stonesplinter Scout." },
            },
            sourceStep = 211,
            priority = 2100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
        },
        {
            priority = 2110,
            text = "Turn in In Defense of the King's Lands to Mountaineer Cobbleflint.",
            route = {
                { mapID = 1432, x = 0.2207, y = 0.7313, label = "Mountaineer Cobbleflint", offMapText = "Travel to Mountaineer Cobbleflint in Loch Modan." },
            },
            dependsOn = {
                "accept-224-in-defense-of-the-king-s-lands",
                "objective-224-1-stonesplinter-trogg",
                "objective-224-2-stonesplinter-scout",
            },
            id = "turnin-224-in-defense-of-the-king-s-lands",
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
                quest = { id = 224, state = "completed" },
            },
            sourceStep = 213,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2120,
            text = "For The Trogg Threat: Bring 8 Trogg Stone Teeth to Captain Rugelfuss in the southern guard tower.",
            id = "objective-267-quest-work",
            kind = "objective",
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
                quest = { id = 267, state = "complete" },
            },
            sourceStep = 214,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-267-the-trogg-threat" },
        },
        {
            priority = 2130,
            text = "Turn in The Trogg Threat to Captain Rugelfuss.",
            route = {
                { y = 0.7367, mapID = 1432, label = "Captain Rugelfuss", offMapText = "Travel to Captain Rugelfuss in Loch Modan.", x = 0.2323 },
            },
            dependsOn = { "accept-267-the-trogg-threat", "objective-267-quest-work" },
            id = "turnin-267-the-trogg-threat",
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
                quest = { id = 267, state = "completed" },
            },
            sourceStep = 214,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1641-the-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1 },
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
            checkpointQuest = 1641,
            priority = 2140,
        },
        {
            priority = 2150,
            route = {
                { mapID = 1453, x = 0.3981, y = 0.298, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall.",
            id = "accept-1641-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1641, state = "activeOrCompleted" },
            },
            sourceStep = 219,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2160,
            text = "Turn in The Tome of Divinity to Duthorian Rall.",
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City.", x = 0.3981 },
            },
            dependsOn = { "accept-1641-the-tome-of-divinity" },
            id = "turnin-1641-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1641, state = "completed" },
            },
            sourceStep = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-1642-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 2170,
            classAction = "loot-starter-before-accept-1642-the-tome-of-divinity",
        },
        {
            priority = 2180,
            id = "accept-1642-the-tome-of-divinity",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            sourceStep = 221,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1642-the-tome-of-divinity",
        },
        {
            priority = 2190,
            text = "Turn in The Tome of Divinity to Duthorian Rall.",
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City.", x = 0.3981 },
            },
            dependsOn = { "accept-1642-the-tome-of-divinity" },
            id = "turnin-1642-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1642, state = "completed" },
            },
            sourceStep = 222,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2200,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City.", x = 0.3981 },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall.",
            id = "accept-1643-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1643, state = "activeOrCompleted" },
            },
            sourceStep = 222,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2210,
            text = "Turn in Stormpike's Order to Furen Longbeard.",
            route = {
                { y = 0.1655, mapID = 1453, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard in Stormwind City.", x = 0.5809 },
            },
            dependsOn = { "accept-1338-stormpike-s-order" },
            id = "turnin-1338-stormpike-s-order",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1338, state = "completed" },
            },
            sourceStep = 224,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2220,
            text = "Turn in The Tome of Divinity to Stephanie Turner.",
            route = {
                { y = 0.6174, mapID = 1453, label = "Stephanie Turner", offMapText = "Travel to Stephanie Turner in Stormwind City.", x = 0.5708 },
            },
            dependsOn = { "accept-1643-the-tome-of-divinity" },
            id = "turnin-1643-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1643, state = "completed" },
            },
            sourceStep = 227,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2230,
            route = {
                { y = 0.6174, mapID = 1453, label = "Stephanie Turner", offMapText = "Travel to Stephanie Turner in Stormwind City.", x = 0.5708 },
            },
            text = "Accept The Tome of Divinity from Stephanie Turner.",
            id = "accept-1644-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1644, state = "activeOrCompleted" },
            },
            sourceStep = 227,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1643 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2240,
            text = "For The Tome of Divinity: Bring 10 Linen Cloth to Stephanie Turner in Stormwind.",
            id = "objective-1644-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1644, state = "complete" },
            },
            sourceStep = 228,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1643 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1644-the-tome-of-divinity" },
        },
        {
            priority = 2250,
            text = "Turn in The Tome of Divinity to Stephanie Turner.",
            route = {
                { y = 0.6174, mapID = 1453, label = "Stephanie Turner", offMapText = "Travel to Stephanie Turner in Stormwind City.", x = 0.5708 },
            },
            dependsOn = { "accept-1644-the-tome-of-divinity", "objective-1644-quest-work" },
            id = "turnin-1644-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 1644, state = "completed" },
            },
            sourceStep = 228,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1643 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2260,
            text = "Turn in Dungar Longdrink to Dungar Longdrink.",
            route = {
                { mapID = 1453, x = 0.6627, y = 0.6213000000000001, label = "Dungar Longdrink", offMapText = "Travel to Dungar Longdrink in Stormwind City." },
            },
            dependsOn = { "accept-6261-dungar-longdrink" },
            id = "turnin-6261-dungar-longdrink",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6261, state = "completed" },
            },
            sourceStep = 229,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2270,
            route = {
                { mapID = 1453, x = 0.6627, y = 0.6213000000000001, label = "Dungar Longdrink", offMapText = "Travel to Dungar Longdrink in Stormwind City." },
            },
            text = "Accept Return to Lewis from Dungar Longdrink.",
            id = "accept-6285-return-to-lewis",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6285, state = "activeOrCompleted" },
            },
            sourceStep = 229,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2280,
            text = "Turn in Return to Lewis to Quartermaster Lewis.",
            route = {
                { y = 0.4717, mapID = 1436, label = "Quartermaster Lewis", offMapText = "Travel to Quartermaster Lewis in Westfall.", x = 0.57 },
            },
            dependsOn = { "accept-6285-return-to-lewis" },
            id = "turnin-6285-return-to-lewis",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 6285, state = "completed" },
            },
            sourceStep = 230,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2290,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride.", x = 0.488 },
            },
            text = "Accept A Scribbled Letter from Marshal McBride in Northshire Abbey.",
            id = "woven-accept-92479-a-scribbled-letter",
            kind = "accept",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 92479, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Read Scribbled Letter in your bags. Turn in A Scribbled Letter to Tordrin Sternblade in Northshire Abbey.",
            priority = 2300,
            route = {
                { y = 0.408, mapID = 1429, label = "Tordrin Sternblade", offMapText = "Travel to Tordrin Sternblade.", x = 0.512 },
            },
            dependsOn = { "woven-accept-92479-a-scribbled-letter" },
            id = "woven-turnin-92479-a-scribbled-letter",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 92479, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-91741-verified-pickup",
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
            text = "Loot Nibbled-On Book from Kobold Vermin, Kobold Laborer, Suspicious Barrel. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Nibbled-On Book", minCount = 1 },
                    },
                    {
                        quest = { id = 91741, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 2310,
        },
        {
            priority = 2320,
            text = "Use the Nibbled-On Book to accept Nibbled-On Book.",
            id = "accept-91741-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91741, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2330,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            text = "Turn in the Nibbled-On Book to Brother Paxton if a kobold dropped it.",
            id = "woven-turnin-91741-nibbled-on-book",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91741, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-91741-verified-pickup" },
        },
        {
            text = "Accept Rascally Rodents from Brother Paxton in Northshire Abbey.",
            priority = 2340,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            dependsOn = { "woven-turnin-91741-nibbled-on-book" },
            id = "woven-accept-91743-rascally-rodents",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91743, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 8 Stolen Books from the Northshire kobolds.",
            priority = 2350,
            route = {
                { y = 0.362, mapID = 1429, label = "Kobold Vermin", offMapText = "Travel to Kobold Vermin.", x = 0.474 },
            },
            dependsOn = { "woven-accept-91743-rascally-rodents" },
            id = "woven-objective-91743-rascally-rodents",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91743, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Rascally Rodents to Brother Paxton.",
            priority = 2360,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            dependsOn = { "woven-accept-91743-rascally-rodents", "woven-objective-91743-rascally-rodents" },
            id = "woven-turnin-91743-rascally-rodents",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91743, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Book Inventory from Brother Paxton.",
            priority = 2370,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            dependsOn = { "woven-turnin-91743-rascally-rodents" },
            id = "woven-accept-92124-book-inventory",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92124, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Book Inventory to Daniel.",
            priority = 2380,
            route = {
                { y = 0.406, mapID = 1429, label = "Daniel", offMapText = "Travel to Daniel.", x = 0.494 },
            },
            dependsOn = { "woven-accept-92124-book-inventory" },
            id = "woven-turnin-92124-book-inventory",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92124, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Mining Consultant from Brother Paxton.",
            priority = 2390,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            dependsOn = { "woven-turnin-92124-book-inventory" },
            id = "woven-accept-91745-mining-consultant",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91745, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Mining Consultant to Kelsey Fargo outside Echo Ridge Mine.",
            priority = 2400,
            route = {
                { y = 0.322, mapID = 1429, label = "Kelsey Fargo", offMapText = "Travel to Kelsey Fargo.", x = 0.472 },
            },
            dependsOn = { "woven-accept-91745-mining-consultant" },
            id = "woven-turnin-91745-mining-consultant",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91745, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Big Picture from Kelsey Fargo.",
            priority = 2410,
            route = {
                { y = 0.322, mapID = 1429, label = "Kelsey Fargo", offMapText = "Travel to Kelsey Fargo.", x = 0.472 },
            },
            dependsOn = { "woven-turnin-91745-mining-consultant" },
            id = "woven-accept-91752-the-big-picture",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91752, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the Sack of Picture Books from Shinyfinder Narf in Echo Ridge Mine.",
            priority = 2420,
            route = {
                { y = 0.278, mapID = 1429, label = "Shinyfinder Narf", offMapText = "Travel to Shinyfinder Narf.", x = 0.49 },
            },
            dependsOn = { "woven-accept-91752-the-big-picture" },
            id = "woven-objective-91752-the-big-picture",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91752, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Big Picture to Marshal McBride.",
            priority = 2430,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride.", x = 0.488 },
            },
            dependsOn = { "woven-accept-91752-the-big-picture", "woven-objective-91752-the-big-picture" },
            id = "woven-turnin-91752-the-big-picture",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91752, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Follow That Kobold! from Marshal McBride.",
            priority = 2440,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride.", x = 0.488 },
            },
            dependsOn = { "woven-turnin-91752-the-big-picture" },
            id = "woven-accept-91758-follow-that-kobold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91758, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Follow That Kobold! to Tordrin Sternblade behind the abbey.",
            priority = 2450,
            route = {
                { y = 0.408, mapID = 1429, label = "Tordrin Sternblade", offMapText = "Travel to Tordrin Sternblade.", x = 0.512 },
            },
            dependsOn = { "woven-accept-91758-follow-that-kobold" },
            id = "woven-turnin-91758-follow-that-kobold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91758, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Shhh! We're Hunting Kobolds from Tordrin Sternblade. Use the Kobold Tracking Kit on the tracks.",
            priority = 2460,
            route = {
                { y = 0.408, mapID = 1429, label = "Tordrin Sternblade", offMapText = "Travel to Tordrin Sternblade.", x = 0.512 },
            },
            dependsOn = { "woven-turnin-91758-follow-that-kobold" },
            id = "woven-accept-91772-shhh-were-hunting-kobolds",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91772, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-96627-the-adventurer",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 96627,
            alternativeQuests = { 96628, 96630, 96638, 96652, 96656, 96659 },
            priority = 2470,
        },
        {
            priority = 2480,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride.", x = 0.488 },
            },
            text = "Accept The Adventurer from Marshal McBride in Northshire Abbey.",
            id = "woven-accept-96627-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96627, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 96628, 96630, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in The Adventurer to Sam Sarsaparilla near Goldshire.",
            priority = 2490,
            route = {
                { y = 0.632, mapID = 1429, label = "Sam Sarsaparilla", offMapText = "Travel to Sam Sarsaparilla.", x = 0.448 },
            },
            dependsOn = { "woven-accept-96627-the-adventurer" },
            id = "woven-turnin-96627-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96627, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 96628, 96630, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Great Outdoors from Sam Sarsaparilla.",
            priority = 2500,
            route = {
                { mapID = 1429, x = 0.44799999999999995, y = 0.6344, label = "Sam Sarsaparilla", offMapText = "Travel to Sam Sarsaparilla." },
            },
            dependsOn = { "woven-turnin-96627-the-adventurer" },
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95998, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 96101, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2510,
            text = "Type /sit beside Sam Sarsaparilla's Basic Campfire and wait until you receive the Boosted Rest buff.",
            dependsOn = { "woven-accept-96101-the-great-outdoors" },
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95998, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 96101, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.44799999999999995, y = 0.6344, label = "Sam Sarsaparilla", offMapText = "Travel to Sam Sarsaparilla." },
            },
        },
        {
            text = "Turn in The Great Outdoors to Sam Sarsaparilla.",
            priority = 2520,
            route = {
                { mapID = 1429, x = 0.44799999999999995, y = 0.6344, label = "Sam Sarsaparilla", offMapText = "Travel to Sam Sarsaparilla." },
            },
            dependsOn = { "woven-accept-96101-the-great-outdoors", "woven-objective-96101-the-great-outdoors" },
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95998, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 96101, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.658, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan.", x = 0.422 },
            },
            dependsOn = { "woven-accept-91772-shhh-were-hunting-kobolds" },
            id = "woven-objective-91772-shhh-were-hunting-kobolds",
            text = "Follow the kobold tracks with the Kobold Tracking Kit.",
            useClientPin = false,
            complete = {
                quest = { id = 91772, state = "complete" },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 2530,
            requiredQuests = {},
            useClientText = false,
        },
        {
            text = "Turn in Shhh! We're Hunting Kobolds to Marshal Dughan.",
            priority = 2540,
            route = {
                { y = 0.658, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan.", x = 0.422 },
            },
            dependsOn = { "woven-accept-91772-shhh-were-hunting-kobolds", "woven-objective-91772-shhh-were-hunting-kobolds" },
            id = "woven-turnin-91772-shhh-were-hunting-kobolds",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91772, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Book Return from Marshal Dughan.",
            priority = 2550,
            route = {
                { y = 0.658, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan.", x = 0.422 },
            },
            dependsOn = { "woven-turnin-91772-shhh-were-hunting-kobolds" },
            id = "woven-accept-91775-book-return",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91775, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-91751-rough-wolf-pelts",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 91751,
            priority = 2560,
        },
        {
            priority = 2570,
            route = {
                { y = 0.622, mapID = 1429, label = "Helene Peltskinner", offMapText = "Travel to Helene Peltskinner.", x = 0.462 },
            },
            text = "Accept Rough Wolf Pelts from Helene Peltskinner near Goldshire.",
            id = "woven-accept-91751-rough-wolf-pelts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91751, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Skin wolves for 7 Rough Wolf Pelts. A wolf may drop Elmpaw's Head. Use it if it does.",
            priority = 2580,
            route = {
                { y = 0.63, mapID = 1429, label = "Gray Forest Wolf", offMapText = "Travel to Gray Forest Wolf.", x = 0.744 },
            },
            dependsOn = { "woven-accept-91751-rough-wolf-pelts" },
            id = "woven-objective-91751-rough-wolf-pelts",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91751, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Rough Wolf Pelts to Helene Peltskinner.",
            priority = 2590,
            route = {
                { y = 0.622, mapID = 1429, label = "Helene Peltskinner", offMapText = "Travel to Helene Peltskinner.", x = 0.462 },
            },
            dependsOn = { "woven-accept-91751-rough-wolf-pelts", "woven-objective-91751-rough-wolf-pelts" },
            id = "woven-turnin-91751-rough-wolf-pelts",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91751, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 6 Lost Books and Fun with Elementals from the Fargodeep kobolds. Use the Book Bag.",
            priority = 2600,
            route = {
                { y = 0.802, mapID = 1429, label = "Kobold Miner", offMapText = "Travel to Kobold Miner.", x = 0.396 },
            },
            dependsOn = { "woven-accept-91775-book-return" },
            id = "woven-objective-91775-book-return",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91775, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2610,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            text = "Accept A Net Disaster from Jason Mathers in Goldshire.",
            id = "woven-accept-99127-a-net-disaster",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99127, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Accept Slimy Menace from Jason Mathers. A murloc may drop Croaky's Head. Use it if it does.",
            priority = 2620,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            dependsOn = { "woven-turnin-99127-a-net-disaster" },
            id = "woven-accept-99128-slimy-menace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99128, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2630,
            route = {
                { y = 0.622, mapID = 1429, label = "Lee Brown", offMapText = "Travel to Lee Brown.", x = 0.474 },
            },
            text = "Accept Bottles and Baubles from Lee Brown in Goldshire.",
            id = "woven-accept-99143-bottles-and-baubles",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99143, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in Book Return to Marshal Dughan.",
            priority = 2640,
            route = {
                { y = 0.658, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan.", x = 0.422 },
            },
            dependsOn = { "woven-accept-91775-book-return", "woven-objective-91775-book-return" },
            id = "woven-turnin-91775-book-return",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91775, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Rare Books from Marshal Dughan.",
            priority = 2650,
            route = {
                { y = 0.658, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan.", x = 0.422 },
            },
            dependsOn = { "woven-turnin-91775-book-return" },
            id = "woven-accept-91777-rare-books",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91777, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Check the fishing nets at Crystal Lake for 7 Half-Eaten Fish.",
            priority = 2660,
            route = {
                { y = 0.668, mapID = 1429, label = "Crystal Lake", offMapText = "Travel to Crystal Lake.", x = 0.502 },
            },
            dependsOn = { "woven-accept-99127-a-net-disaster" },
            id = "woven-objective-99127-a-net-disaster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99127, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill the murlocs at Crystal Lake.",
            priority = 2670,
            route = {
                { y = 0.668, mapID = 1429, label = "Murloc", offMapText = "Travel to Murloc.", x = 0.502 },
            },
            dependsOn = { "woven-accept-99128-slimy-menace" },
            id = "woven-objective-99128-slimy-menace",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99128, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 6 pieces of shiny junk from the murloc camp.",
            priority = 2680,
            route = {
                { y = 0.668, mapID = 1429, label = "Murloc camp", offMapText = "Travel to Murloc camp.", x = 0.502 },
            },
            dependsOn = { "woven-accept-99143-bottles-and-baubles" },
            id = "woven-objective-99143-bottles-and-baubles",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99143, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Rare Books to Brother Paxton in Northshire Abbey.",
            priority = 2690,
            route = {
                { y = 0.404, mapID = 1429, label = "Brother Paxton", offMapText = "Travel to Brother Paxton.", x = 0.494 },
            },
            dependsOn = { "woven-accept-91777-rare-books", "woven-objective-91777-rare-books" },
            id = "woven-turnin-91777-rare-books",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91777, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Recover Geomancy for Curious Young Wizards and Arcane Explainer from Mother Fang and Geosculptor Yip in Jasperlode Mine.",
            priority = 2700,
            route = {
                { y = 0.478, mapID = 1429, label = "Mother Fang", offMapText = "Travel to Mother Fang.", x = 0.618 },
            },
            dependsOn = { "woven-accept-91777-rare-books" },
            id = "woven-objective-91777-rare-books",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91777, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-91723-delicate-instruments",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 91723,
            priority = 2710,
        },
        {
            priority = 2720,
            route = {
                { y = 0.698, mapID = 1429, label = "Hamish Bergwort", offMapText = "Travel to Hamish Bergwort.", x = 0.65 },
            },
            text = "Accept Delicate Instruments from Hamish Bergwort in the Tower of Azora.",
            id = "woven-accept-91723-delicate-instruments",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91723, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2730,
            route = {
                { y = 0.726, mapID = 1429, label = "Blixie Fitzwink", offMapText = "Travel to Blixie Fitzwink.", x = 0.632 },
            },
            text = "Accept Stolen Enchanting Supplies from Blixie Fitzwink near the Tower of Azora.",
            id = "woven-accept-91725-stolen-enchanting-supplies",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91725, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2740,
            route = {
                { y = 0.638, mapID = 1429, label = "Hagar Lowe", offMapText = "Travel to Hagar Lowe.", x = 0.824 },
            },
            text = "Accept Good Steel from Hagar Lowe in Eastvale Logging Camp.",
            id = "woven-accept-91732-good-steel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91732, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Kill 8 Kobold Geomancers in Jasperlode Mine. Disenchant their Crude Wax Effigies if you are on An Enchanting Lesson.",
            priority = 2750,
            route = {
                { y = 0.508, mapID = 1429, label = "Kobold Geomancer", offMapText = "Travel to Kobold Geomancer.", x = 0.606 },
            },
            dependsOn = { "woven-accept-91723-delicate-instruments" },
            id = "woven-objective-91723-delicate-instruments",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91723, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Delicate Instruments to Hamish Bergwort.",
            priority = 2760,
            route = {
                { y = 0.698, mapID = 1429, label = "Hamish Bergwort", offMapText = "Travel to Hamish Bergwort.", x = 0.65 },
            },
            dependsOn = { "woven-accept-91723-delicate-instruments", "woven-objective-91723-delicate-instruments" },
            id = "woven-turnin-91723-delicate-instruments",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91723, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept the next Delicate Instruments from Hamish Bergwort.",
            priority = 2770,
            route = {
                { y = 0.698, mapID = 1429, label = "Hamish Bergwort", offMapText = "Travel to Hamish Bergwort.", x = 0.65 },
            },
            dependsOn = { "woven-turnin-91723-delicate-instruments" },
            id = "woven-accept-91724-delicate-instruments",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91724, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 4 Mining Tools from Jasperlode Mine.",
            priority = 2780,
            route = {
                { y = 0.508, mapID = 1429, label = "Jasperlode Mine", offMapText = "Travel to Jasperlode Mine.", x = 0.606 },
            },
            dependsOn = { "woven-accept-91732-good-steel" },
            id = "woven-objective-91732-good-steel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91732, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2790,
            route = {
                { y = 0.72, mapID = 1429, label = "Ormin Pelford", offMapText = "Travel to Ormin Pelford.", x = 0.764 },
            },
            text = "Accept Downstream from Ormin Pelford in Eastvale Logging Camp.",
            id = "woven-accept-91733-downstream",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91733, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect the Waterlogged Axe, Waterlogged Saw, and Waterlogged Toolbox downstream from Eastvale.",
            priority = 2800,
            route = {
                { y = 0.72, mapID = 1429, label = "Eastvale river", offMapText = "Travel to Eastvale river.", x = 0.764 },
            },
            dependsOn = { "woven-accept-91733-downstream" },
            id = "woven-objective-91733-downstream",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91733, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Downstream to Ormin Pelford.",
            priority = 2810,
            route = {
                { y = 0.72, mapID = 1429, label = "Ormin Pelford", offMapText = "Travel to Ormin Pelford.", x = 0.764 },
            },
            dependsOn = { "woven-accept-91733-downstream", "woven-objective-91733-downstream" },
            id = "woven-turnin-91733-downstream",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91733, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 6 Defias Rogue Wizards at Stone Cairn Lake.",
            priority = 2820,
            route = {
                { y = 0.5548, mapID = 1429, label = "Defias Rogue Wizard", offMapText = "Travel to Defias Rogue Wizard.", x = 0.7968 },
            },
            dependsOn = { "woven-accept-91724-delicate-instruments" },
            id = "woven-objective-91724-delicate-instruments",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91724, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 5 Stolen Enchanting Supplies from the gnoll camps around Stone Cairn Lake.",
            priority = 2830,
            route = {
                { y = 0.5548, mapID = 1429, label = "Stone Cairn Lake", offMapText = "Travel to Stone Cairn Lake.", x = 0.7968 },
            },
            dependsOn = { "woven-accept-91725-stolen-enchanting-supplies" },
            id = "woven-objective-91725-stolen-enchanting-supplies",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91725, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Delicate Instruments to Hamish Bergwort.",
            priority = 2840,
            route = {
                { y = 0.698, mapID = 1429, label = "Hamish Bergwort", offMapText = "Travel to Hamish Bergwort.", x = 0.65 },
            },
            dependsOn = { "woven-accept-91724-delicate-instruments", "woven-objective-91724-delicate-instruments" },
            id = "woven-turnin-91724-delicate-instruments",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91724, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Stolen Enchanting Supplies to Blixie Fitzwink.",
            priority = 2850,
            route = {
                { y = 0.726, mapID = 1429, label = "Blixie Fitzwink", offMapText = "Travel to Blixie Fitzwink.", x = 0.632 },
            },
            dependsOn = { "woven-accept-91725-stolen-enchanting-supplies", "woven-objective-91725-stolen-enchanting-supplies" },
            id = "woven-turnin-91725-stolen-enchanting-supplies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91725, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Good Steel to Hagar Lowe.",
            priority = 2860,
            route = {
                { y = 0.638, mapID = 1429, label = "Hagar Lowe", offMapText = "Travel to Hagar Lowe.", x = 0.824 },
            },
            dependsOn = { "woven-accept-91732-good-steel", "woven-objective-91732-good-steel" },
            id = "woven-turnin-91732-good-steel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91732, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Net Disaster to Jason Mathers.",
            priority = 2870,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            dependsOn = { "woven-accept-99127-a-net-disaster", "woven-objective-99127-a-net-disaster" },
            id = "woven-turnin-99127-a-net-disaster",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99127, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Slimy Menace to Jason Mathers.",
            priority = 2880,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            dependsOn = { "woven-accept-99128-slimy-menace", "woven-objective-99128-slimy-menace" },
            id = "woven-turnin-99128-slimy-menace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99128, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Bottles and Baubles to Lee Brown.",
            priority = 2890,
            route = {
                { y = 0.622, mapID = 1429, label = "Lee Brown", offMapText = "Travel to Lee Brown.", x = 0.474 },
            },
            dependsOn = { "woven-accept-99143-bottles-and-baubles", "woven-objective-99143-bottles-and-baubles" },
            id = "woven-turnin-99143-bottles-and-baubles",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99143, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Man About a Murloc from Jason Mathers.",
            priority = 2900,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            dependsOn = { "woven-turnin-99128-slimy-menace" },
            id = "woven-accept-99129-a-man-about-a-murloc",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99129, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Man About a Murloc to Remy Two Times.",
            priority = 2910,
            route = {
                { y = 0.672, mapID = 1429, label = "Remy Two Times", offMapText = "Travel to Remy Two Times.", x = 0.422 },
            },
            dependsOn = { "woven-accept-99129-a-man-about-a-murloc" },
            id = "woven-turnin-99129-a-man-about-a-murloc",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99129, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept An Enticing Offer from Remy Two Times.",
            priority = 2920,
            route = {
                { y = 0.672, mapID = 1429, label = "Remy Two Times", offMapText = "Travel to Remy Two Times.", x = 0.422 },
            },
            dependsOn = { "woven-turnin-99129-a-man-about-a-murloc" },
            id = "woven-accept-99130-an-enticing-offer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99130, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 18 Duskweed Petals and 6 Vials of Animal Blood.",
            priority = 2930,
            route = {
                { y = 0.69, mapID = 1429, label = "Stonetusk Boar", offMapText = "Travel to Stonetusk Boar.", x = 0.418 },
            },
            dependsOn = { "woven-accept-99130-an-enticing-offer" },
            id = "woven-objective-99130-an-enticing-offer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99130, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in An Enticing Offer to Remy Two Times.",
            priority = 2940,
            route = {
                { y = 0.672, mapID = 1429, label = "Remy Two Times", offMapText = "Travel to Remy Two Times.", x = 0.422 },
            },
            dependsOn = { "woven-accept-99130-an-enticing-offer", "woven-objective-99130-an-enticing-offer" },
            id = "woven-turnin-99130-an-enticing-offer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99130, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Baited for Success from Remy Two Times.",
            priority = 2950,
            route = {
                { y = 0.672, mapID = 1429, label = "Remy Two Times", offMapText = "Travel to Remy Two Times.", x = 0.422 },
            },
            dependsOn = { "woven-turnin-99130-an-enticing-offer" },
            id = "woven-accept-99131-baited-for-success",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99131, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Return to Jason Mathers.",
            priority = 2960,
            route = {
                { y = 0.622, mapID = 1429, label = "Jason Mathers", offMapText = "Travel to Jason Mathers.", x = 0.474 },
            },
            dependsOn = { "woven-accept-99131-baited-for-success" },
            id = "woven-turnin-99131-baited-for-success",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99131, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-94774-divine-grace",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 94774,
            priority = 2970,
        },
        {
            priority = 2980,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", offMapText = "Travel to Priestess Josetta.", x = 0.434 },
            },
            text = "Accept Divine Grace from Priestess Josetta in Goldshire.",
            id = "woven-accept-94774-divine-grace",
            kind = "accept",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 94774, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Turn in Divine Grace to High Priestess Laurena in the Cathedral of Light.",
            priority = 2990,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", offMapText = "Travel to High Priestess Laurena.", x = 0.388 },
            },
            dependsOn = { "woven-accept-94774-divine-grace" },
            id = "woven-turnin-94774-divine-grace",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 94774, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Divine Grace from High Priestess Laurena in the Cathedral of Light.",
            priority = 3000,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", offMapText = "Travel to High Priestess Laurena.", x = 0.388 },
            },
            dependsOn = { "woven-turnin-94774-divine-grace" },
            id = "woven-accept-94773-divine-grace-laurena",
            kind = "accept",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                quest = { id = 94773, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94774 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { race = 1 },
                            { class = 5 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3010,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", offMapText = "Travel to High Priestess Laurena.", x = 0.388 },
            },
            dependsOn = { "woven-accept-94773-divine-grace-laurena" },
            id = "woven-turnin-94773-divine-grace-laurena",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94773-divine-grace",
        },
        {
            id = "level-before-woven-accept-94792-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
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
            checkpointQuest = 94792,
            priority = 3020,
        },
        {
            priority = 3030,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            id = "woven-accept-94792-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94792, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "woven-accept-94792-taming-the-beast" },
            id = "woven-objective-94792-taming-the-beast",
            useClientPin = true,
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            priority = 3040,
            classAction = "objective-94792-reviewed-mechanics",
        },
        {
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            priority = 3050,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-accept-94792-taming-the-beast", "woven-objective-94792-taming-the-beast" },
            id = "woven-turnin-94792-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94792, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            priority = 3060,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-turnin-94792-taming-the-beast" },
            id = "woven-accept-94863-taming-the-beast-2",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94863, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94792 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "woven-accept-94863-taming-the-beast-2" },
            id = "woven-objective-94863-taming-the-beast-2",
            useClientPin = true,
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            priority = 3070,
            classAction = "objective-94863-reviewed-mechanics",
        },
        {
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            priority = 3080,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-accept-94863-taming-the-beast-2", "woven-objective-94863-taming-the-beast-2" },
            id = "woven-turnin-94863-taming-the-beast-2",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94863, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94792 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Taming the Beast from Josephine Carson in Goldshire.",
            priority = 3090,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-turnin-94863-taming-the-beast-2" },
            id = "woven-accept-94864-taming-the-beast-3",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94864, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94863 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "woven-accept-94864-taming-the-beast-3" },
            id = "woven-objective-94864-taming-the-beast-3",
            useClientPin = true,
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            priority = 3100,
            classAction = "objective-94864-reviewed-mechanics",
        },
        {
            text = "Turn in Taming the Beast to Josephine Carson in Goldshire.",
            priority = 3110,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-accept-94864-taming-the-beast-3", "woven-objective-94864-taming-the-beast-3" },
            id = "woven-turnin-94864-taming-the-beast-3",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94864, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94863 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Training the Beast from Josephine Carson in Goldshire.",
            priority = 3120,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", offMapText = "Travel to Josephine Carson.", x = 0.412 },
            },
            dependsOn = { "woven-turnin-94864-taming-the-beast-3" },
            id = "woven-accept-94793-training-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94793, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94864 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Training the Beast to Isaac Chan in Goldshire.",
            priority = 3130,
            route = {
                { y = 0.664, mapID = 1429, label = "Isaac Chan", offMapText = "Travel to Isaac Chan.", x = 0.418 },
            },
            dependsOn = { "woven-accept-94793-training-the-beast" },
            id = "woven-turnin-94793-training-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94793, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94864 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 3 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-91746-verified-pickup",
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
            text = "Loot Elmpaw's Head from Elmpaw. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Elmpaw's Head", minCount = 1 },
                    },
                    {
                        quest = { id = 91746, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.7101999999999999, y = 0.4146, label = "Elmpaw", offMapText = "Travel to Elmpaw." },
            },
            dependsOn = {},
            priority = 3140,
        },
        {
            priority = 3150,
            text = "Use the Elmpaw's Head to accept Elmpaw's Head.",
            id = "accept-91746-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91746, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3160,
            route = {
                { y = 0.622, mapID = 1429, label = "Helene Peltskinner", offMapText = "Travel to Helene Peltskinner.", x = 0.462 },
            },
            text = "Turn in Elmpaw's Head to Helene Peltskinner if you found it.",
            id = "woven-turnin-91746-elmpaws-head",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91746, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-91746-verified-pickup" },
        },
        {
            priority = 3170,
            route = {
                { y = 0.73, mapID = 1429, label = "Sergeant De Vries", offMapText = "Travel to Sergeant De Vries.", x = 0.24 },
            },
            text = "Accept An Apple Treat from Sergeant De Vries at Westbrook Garrison.",
            id = "woven-accept-91738-an-apple-treat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91738, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect Thunder Applejack for Sergeant De Vries.",
            priority = 3180,
            route = {
                { y = 0.73, mapID = 1429, label = "Sergeant De Vries", offMapText = "Travel to Sergeant De Vries.", x = 0.24 },
            },
            dependsOn = { "woven-accept-91738-an-apple-treat" },
            id = "woven-objective-91738-an-apple-treat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91738, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in An Apple Treat to Sergeant De Vries.",
            priority = 3190,
            route = {
                { y = 0.73, mapID = 1429, label = "Sergeant De Vries", offMapText = "Travel to Sergeant De Vries.", x = 0.24 },
            },
            dependsOn = { "woven-accept-91738-an-apple-treat", "woven-objective-91738-an-apple-treat" },
            id = "woven-turnin-91738-an-apple-treat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91738, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-91740-verified-pickup",
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
            text = "Loot Croaky's Head from Croaky. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Croaky's Head", minCount = 1 },
                    },
                    {
                        quest = { id = 91740, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.7486, y = 0.8626999999999999, label = "Croaky", offMapText = "Travel to Croaky." },
            },
            dependsOn = {},
            priority = 3200,
        },
        {
            priority = 3210,
            text = "Use the Croaky's Head to accept Croaky's Head.",
            id = "accept-91740-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91740, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3220,
            route = {
                { y = 0.792, mapID = 1429, label = "Merell Ross", offMapText = "Travel to Merell Ross.", x = 0.846 },
            },
            text = "Turn in Croaky's Head to Merell Ross at Ridgepoint Tower if a murloc dropped it.",
            id = "woven-turnin-91740-croakys-head",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 91740, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-91740-verified-pickup" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Alliance = "leveling-casual-alliance" },
})
