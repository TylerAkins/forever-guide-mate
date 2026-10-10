local _, ns = ...

ns:RegisterGuide({
    id = "dungeons-class-prerequisites",
    title = "Class Dungeon Prerequisites",
    category = "Dungeon Quest Guides",
    revision = 2,
    routeMode = "ordered",
    goals = {
        {
            id = "level-before-helper-95036",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                },
            },
            requiredLevel = 20,
            checkpointQuest = 95036,
            complete = {
                level = { min = 20 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 10,
            dependsOn = {},
        },
        {
            id = "accept-95036-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 95036, state = "activeOrCompleted" },
            },
            text = "Accept A Moon-Kissed Blade from Lumina Windsinger.",
            route = {
                { mapID = 1421, x = 0.432, y = 0.408, label = "Lumina Windsinger", offMapText = "Travel to Lumina Windsinger." },
            },
            priority = 20,
            dependsOn = {},
        },
        {
            id = "objective-95036-material-1",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            dependsOn = { "accept-95036-authored-class-prerequisite" },
            text = "Speak with Trevan Rol at the Sepulcher to receive his weapon notes. Read the notes.",
            complete = {
                questObjective = { id = 95036, index = 1, text = "Trevan's Weapon Notes", count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1421, x = 0.434, y = 0.41, label = "Trevan Rol", offMapText = "Travel to the Sepulcher in Silverpine Forest." },
            },
            priority = 30,
        },
        {
            id = "objective-95036-material-2",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            dependsOn = { "accept-95036-authored-class-prerequisite" },
            text = "Enter the Deadmines with your group. Kill Goblin Woodcarvers and collect 1 Whitestone Oak Lumber.",
            complete = {
                questObjective = { id = 95036, index = 2, text = "Whitestone Oak Lumber", count = 1 },
            },
            useClientText = false,
            useClientPin = true,
            priority = 40,
        },
        {
            id = "objective-95036-material-3",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            dependsOn = { "accept-95036-authored-class-prerequisite" },
            text = "Enter Shadowfang Keep with your group. Collect 1 Enchanted Silver Ingot from the table beside Arugal.",
            complete = {
                questObjective = { id = 95036, index = 3, text = "Enchanted Silver Ingot", count = 1 },
            },
            useClientText = false,
            useClientPin = true,
            priority = 50,
        },
        {
            id = "accept-95042-moon-kissed-material",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            dependsOn = {},
            priority = 60,
            classAction = "accept-95042-seeking-the-kor-gem",
        },
        {
            id = "objective-95042-moon-kissed-material",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1440, x = 0.1355, y = 0.1206, label = "Naga at Blackfathom Deeps", offMapText = "Travel north along the Zoram Strand in Ashenvale." },
            },
            dependsOn = { "accept-95042-moon-kissed-material" },
            priority = 70,
            classAction = "objective-95042-seeking-the-kor-gem",
        },
        {
            id = "turnin-95042-moon-kissed-material",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1440, x = 0.118, y = 0.344, label = "Ulric Frostveil", offMapText = "Travel to the Zoram Strand in Ashenvale." },
            },
            dependsOn = { "accept-95042-moon-kissed-material", "objective-95042-moon-kissed-material" },
            priority = 80,
            classAction = "turnin-95042-seeking-the-kor-gem",
        },
        {
            id = "objective-95036-material-4",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            dependsOn = { "accept-95036-authored-class-prerequisite" },
            text = "Keep 1 Purified Kor Gem from Ulric Frostveil for Trevan Rol.",
            complete = {
                questObjective = { id = 95036, index = 4, text = "Purified Kor Gem", count = 1 },
            },
            useClientText = false,
            useClientPin = true,
            priority = 90,
        },
        {
            id = "turnin-95036-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 95036, state = "completed" },
            },
            text = "Turn in A Moon-Kissed Blade to Trevan Rol.",
            route = {
                { mapID = 1421, x = 0.434, y = 0.41, label = "Trevan Rol", offMapText = "Travel to Trevan Rol." },
            },
            dependsOn = {
                "accept-95036-authored-class-prerequisite",
                "objective-95036-material-1",
                "objective-95036-material-2",
                "objective-95036-material-3",
                "objective-95036-material-4",
                "turnin-95042-moon-kissed-material",
            },
            priority = 100,
        },
        {
            id = "level-before-helper-1951",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                class = { 8 },
            },
            requiredLevel = 30,
            checkpointQuest = 1951,
            complete = {
                level = { min = 30 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 110,
            dependsOn = {},
        },
        {
            id = "accept-1951-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1950 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 1951, state = "activeOrCompleted" },
            },
            text = "Accept Rituals of Power from Magus Tirth.",
            route = {
                { mapID = 1441, x = 0.7829, y = 0.757, label = "Magus Tirth", offMapText = "Travel to Magus Tirth." },
            },
            priority = 120,
            dependsOn = {},
        },
        {
            id = "objective-1951-authored-class-prerequisite",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1950 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            complete = {
                quest = { id = 1951, state = "complete" },
            },
            text = "Enter Scarlet Monastery Library with your group. Collect the Rituals of Power book in the Athenaeum beside the doorway. Bring it to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1951-authored-class-prerequisite" },
            priority = 130,
        },
        {
            id = "turnin-1951-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1950 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 1951, state = "completed" },
            },
            text = "Turn in Rituals of Power to Tabetha.",
            route = {
                { mapID = 1445, x = 0.4606, y = 0.5709, label = "Tabetha", offMapText = "Travel to Tabetha." },
            },
            dependsOn = { "accept-1951-authored-class-prerequisite", "objective-1951-authored-class-prerequisite" },
            priority = 140,
        },
        {
            id = "level-before-helper-7668",
            kind = "note",
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                },
            },
            requiredLevel = 58,
            checkpointQuest = 7668,
            complete = {
                level = { min = 58 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            alternativeQuests = { 8258 },
            priority = 150,
            dependsOn = {},
        },
        {
            id = "accept-7668-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7668, state = "activeOrCompleted" },
            },
            text = "Accept The Darkreaver Menace from Sagorne Creststrider.",
            route = {
                { mapID = 1454, x = 0.386, y = 0.362, label = "Sagorne Creststrider", offMapText = "Travel to Sagorne Creststrider." },
            },
            alternativeQuests = { 8258 },
            priority = 160,
            dependsOn = {},
        },
        {
            id = "objective-7668-authored-class-prerequisite",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            complete = {
                quest = { id = 7668, state = "complete" },
            },
            text = "Collect Darkreaver's Head from Death Knight Darkreaver in Scholomance and bring it to Sagorne Creststrider in Orgrimmar's Valley of Wisdom.",
            dependsOn = { "accept-7668-authored-class-prerequisite" },
            alternativeQuests = { 8258 },
            priority = 170,
        },
        {
            id = "turnin-7668-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7668, state = "completed" },
            },
            text = "Turn in The Darkreaver Menace to Sagorne Creststrider.",
            route = {
                { mapID = 1454, x = 0.386, y = 0.362, label = "Sagorne Creststrider", offMapText = "Travel to Sagorne Creststrider." },
            },
            dependsOn = { "accept-7668-authored-class-prerequisite", "objective-7668-authored-class-prerequisite" },
            alternativeQuests = { 8258 },
            priority = 180,
        },
        {
            id = "level-before-helper-7581",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                class = { 9 },
            },
            requiredLevel = 60,
            checkpointQuest = 7581,
            complete = {
                level = { min = 60 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 190,
            dependsOn = {},
        },
        {
            id = "accept-7581-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7581, state = "activeOrCompleted" },
            },
            text = "Accept The Prison's Bindings from Daio the Decrepit.",
            route = {
                { mapID = 1419, x = 0.34, y = 0.502, label = "Daio the Decrepit", offMapText = "Travel to Daio the Decrepit." },
            },
            priority = 200,
            dependsOn = {},
        },
        {
            id = "objective-7581-authored-class-prerequisite",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            complete = {
                quest = { id = 7581, state = "complete" },
            },
            text = "Enter Dire Maul East, the Warpwood Quarter, with your group. Kill Wildspawn Satyr and collect 15 Satyr Blood. Bring it to Daio the Decrepit in the Tainted Scar, Blasted Lands.",
            dependsOn = { "accept-7581-authored-class-prerequisite" },
            priority = 210,
        },
        {
            id = "turnin-7581-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7581, state = "completed" },
            },
            text = "Turn in The Prison's Bindings to Daio the Decrepit.",
            route = {
                { mapID = 1419, x = 0.34, y = 0.502, label = "Daio the Decrepit", offMapText = "Travel to Daio the Decrepit." },
            },
            dependsOn = { "accept-7581-authored-class-prerequisite", "objective-7581-authored-class-prerequisite" },
            priority = 220,
        },
        {
            id = "level-before-helper-7642",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    { faction = "Alliance" },
                },
            },
            requiredLevel = 60,
            checkpointQuest = 7642,
            complete = {
                level = { min = 60 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            priority = 230,
            dependsOn = {},
        },
        {
            id = "accept-7642-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7642, state = "activeOrCompleted" },
            },
            text = "Accept Collection of Goods from Grimand Elmore.",
            route = {
                { mapID = 1453, x = 0.5174, y = 0.1207, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore." },
            },
            priority = 240,
            dependsOn = {},
        },
        {
            id = "objective-7642-authored-class-prerequisite",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            complete = {
                quest = { id = 7642, state = "complete" },
            },
            text = "Collect 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears and 5 Stratholme Holy Water from Stratholme supply crates. The quest also requires 150 gold. Bring these to Grimand Elmore in Stormwind's Dwarven District.",
            dependsOn = { "accept-7642-authored-class-prerequisite" },
            priority = 250,
        },
        {
            id = "turnin-7642-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 7642, state = "completed" },
            },
            text = "Turn in Collection of Goods to Grimand Elmore.",
            route = {
                { mapID = 1453, x = 0.5174, y = 0.1207, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore." },
            },
            dependsOn = { "accept-7642-authored-class-prerequisite", "objective-7642-authored-class-prerequisite" },
            priority = 260,
        },
        {
            id = "level-before-helper-8258",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                },
            },
            requiredLevel = 60,
            checkpointQuest = 8258,
            complete = {
                level = { min = 60 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            alternativeQuests = { 7668 },
            priority = 270,
            dependsOn = {},
        },
        {
            id = "accept-8258-authored-class-prerequisite",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 8258, state = "activeOrCompleted" },
            },
            text = "Accept The Darkreaver Menace from Sagorne Creststrider.",
            route = {
                { mapID = 1454, x = 0.386, y = 0.362, label = "Sagorne Creststrider", offMapText = "Travel to Sagorne Creststrider." },
            },
            alternativeQuests = { 7668 },
            priority = 280,
            dependsOn = {},
        },
        {
            id = "objective-8258-authored-class-prerequisite",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            complete = {
                quest = { id = 8258, state = "complete" },
            },
            text = "Enter Scholomance with your group. Use the Divination Scryer in the basement of the Great Ossuary. Defeat the summoned spirits, then Death Knight Darkreaver, and loot Darkreaver's Head.",
            dependsOn = { "accept-8258-authored-class-prerequisite" },
            alternativeQuests = { 7668 },
            priority = 290,
        },
        {
            id = "turnin-8258-authored-class-prerequisite",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7667 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            complete = {
                quest = { id = 8258, state = "completed" },
            },
            text = "Turn in The Darkreaver Menace to Sagorne Creststrider.",
            route = {
                { mapID = 1454, x = 0.386, y = 0.362, label = "Sagorne Creststrider", offMapText = "Travel to Sagorne Creststrider." },
            },
            dependsOn = { "accept-8258-authored-class-prerequisite", "objective-8258-authored-class-prerequisite" },
            alternativeQuests = { 7668 },
            priority = 300,
        },
    },
})
