local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-stranglethorn-vale-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 44 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-586-speaking-with-gan-zulah",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 586,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.276, mapID = 1434, label = "Speaking with Gan'zulah", offMapText = "Travel to Speaking with Gan'zulah.", x = 0.3222 },
            },
            text = "Accept Speaking with Gan'zulah.",
            id = "accept-586-speaking-with-gan-zulah",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 586, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-628-1-elder-saltwater-crocolisk",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 628,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.224, mapID = 1434, label = "Elder Saltwater Crocolisk", offMapText = "Travel to Elder Saltwater Crocolisk.", x = 0.292 },
            },
            text = "Collect 1 Elder Crocolisk Skin.",
            id = "objective-628-1-elder-saltwater-crocolisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                questObjective = { id = 628, text = "Elder Saltwater Crocolisk", index = 1, count = 1 },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 577 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "Collect 1 Broken Armor of Ana'thek.",
            route = {
                { y = 0.444, mapID = 1434, label = "Ana'thek the Cruel", offMapText = "Travel to Ana'thek the Cruel.", x = 0.444 },
            },
            dependsOn = { "accept-586-speaking-with-gan-zulah" },
            id = "objective-586-4-ana-thek-the-cruel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 586, text = "Ana'thek the Cruel", index = 4, count = 1 },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-586-2-skullsplitter-headhunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 6 Skullsplitter Headhunter.",
            complete = {
                questObjective = { id = 586, index = 2, text = "Skullsplitter Headhunter", count = 6 },
            },
            route = {
                { mapID = 1434, x = 0.47200000000000003, y = 0.43799999999999994, label = "Skullsplitter Headhunter", offMapText = "Travel to Skullsplitter Headhunter." },
            },
            sourceStep = 4,
            priority = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-586-speaking-with-gan-zulah" },
        },
        {
            id = "objective-586-3-skullsplitter-berserker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Skullsplitter Berserker.",
            complete = {
                questObjective = { id = 586, index = 3, text = "Skullsplitter Berserker", count = 4 },
            },
            route = {
                { mapID = 1434, x = 0.47200000000000003, y = 0.396, label = "Skullsplitter Berserker", offMapText = "Travel to Skullsplitter Berserker." },
            },
            sourceStep = 5,
            priority = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-586-speaking-with-gan-zulah" },
        },
        {
            id = "objective-586-1-skullsplitter-hunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Skullsplitter Hunter.",
            complete = {
                questObjective = { id = 586, index = 1, text = "Skullsplitter Hunter", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.47200000000000003, y = 0.396, label = "Skullsplitter Hunter", offMapText = "Travel to Skullsplitter Hunter." },
            },
            sourceStep = 5,
            priority = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-586-speaking-with-gan-zulah" },
        },
        {
            priority = 90,
            route = {
                { y = 0.2905, mapID = 1434, label = "Bhag'thera", offMapText = "Travel to Bhag'thera.", x = 0.4637 },
            },
            text = "Collect 1 Fang of Bhag'thera.",
            id = "objective-193-1-bhag-thera",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 193, text = "Bhag'thera", index = 1, count = 1 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 192 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "objective-193-1-bhag-thera" },
            id = "turnin-193-panther-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 193, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 192 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept The Green Hills of Stranglethorn from Barnil Stonepot.",
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 338, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
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
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter I from Barnil Stonepot.",
            id = "accept-339-chapter-i",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 339, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "For Chapter I: Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.",
            id = "objective-339-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 339, state = "complete" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-339-chapter-i" },
        },
        {
            priority = 140,
            text = "Turn in Chapter I to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-339-chapter-i", "objective-339-quest-work" },
            id = "turnin-339-chapter-i",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 339, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter II from Barnil Stonepot.",
            id = "accept-340-chapter-ii",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 340, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "For Chapter II: Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.",
            id = "objective-340-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 340, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-340-chapter-ii" },
        },
        {
            priority = 170,
            text = "Turn in Chapter II to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-340-chapter-ii", "objective-340-quest-work" },
            id = "turnin-340-chapter-ii",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 340, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter III from Barnil Stonepot.",
            id = "accept-341-chapter-iii",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 341, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            text = "For Chapter III: Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.",
            id = "objective-341-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 341, state = "complete" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-341-chapter-iii" },
        },
        {
            priority = 200,
            text = "Turn in Chapter III to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-341-chapter-iii", "objective-341-quest-work" },
            id = "turnin-341-chapter-iii",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 341, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter IV from Barnil Stonepot.",
            id = "accept-342-chapter-iv",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 342, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "For Chapter IV: Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.",
            id = "objective-342-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 342, state = "complete" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-342-chapter-iv" },
        },
        {
            priority = 230,
            text = "Turn in Chapter IV to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-342-chapter-iv", "objective-342-quest-work" },
            id = "turnin-342-chapter-iv",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 342, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "For The Green Hills of Stranglethorn: Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete.",
            id = "objective-338-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 338, state = "complete" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-338-the-green-hills-of-stranglethorn" },
        },
        {
            priority = 250,
            text = "Turn in The Green Hills of Stranglethorn to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-338-the-green-hills-of-stranglethorn", "objective-338-quest-work" },
            id = "turnin-338-the-green-hills-of-stranglethorn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 338, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Turn in Speaking with Gan'zulah.",
            route = {
                { y = 0.276, mapID = 1434, label = "Speaking with Gan'zulah", offMapText = "Travel to Speaking with Gan'zulah.", x = 0.3222 },
            },
            dependsOn = {
                "accept-586-speaking-with-gan-zulah",
                "objective-586-4-ana-thek-the-cruel",
                "objective-586-2-skullsplitter-headhunter",
                "objective-586-3-skullsplitter-berserker",
                "objective-586-1-skullsplitter-hunter",
            },
            id = "turnin-586-speaking-with-gan-zulah",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 586, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.276, mapID = 1434, label = "The Fate of Yenniku", offMapText = "Travel to The Fate of Yenniku.", x = 0.3222 },
            },
            text = "Accept The Fate of Yenniku.",
            id = "accept-588-the-fate-of-yenniku",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 588, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 585, 586 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Turn in The Fate of Yenniku to Kin'weelay.",
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            dependsOn = { "accept-588-the-fate-of-yenniku" },
            id = "turnin-588-the-fate-of-yenniku",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 588, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 585, 586 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            text = "Accept The Singing Crystals from Kin'weelay.",
            id = "accept-589-the-singing-crystals",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 589, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 588 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-571-mok-thardin-s-enchantment",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 571,
            priority = 300,
        },
        {
            priority = 310,
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin.",
            id = "accept-571-mok-thardin-s-enchantment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 571, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 572 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1118-back-to-booty-bay",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1118,
            priority = 320,
        },
        {
            priority = 330,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Turn in Back to Booty Bay to Crank Fizzlebub.",
            id = "turnin-1118-back-to-booty-bay",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1118, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1117 },
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
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Zanzil's Secret from Crank Fizzlebub.",
            id = "accept-621-zanzil-s-secret",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 621, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Scaring Shaky from \"Sea Wolf\" MacKinley.",
            id = "accept-606-scaring-shaky",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 606, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-595-the-bloodsail-buccaneers",
            kind = "note",
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 37 },
            },
            requiredLevel = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 595,
            priority = 360,
        },
        {
            priority = 370,
            route = {
                { y = 0.7622, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz.",
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 595, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in Excelsior to Drizzlik.",
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            dependsOn = { "objective-628-1-elder-saltwater-crocolisk" },
            id = "turnin-628-excelsior",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 628, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 577 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Collect 1 Aged Gorilla Sinew.",
            route = {
                { mapID = 1434, x = 0.312, y = 0.682, label = "Aged Gorilla Sinew", offMapText = "Travel to Aged Gorilla Sinew." },
            },
            dependsOn = { "accept-571-mok-thardin-s-enchantment" },
            id = "objective-571-1-elder-mistvale-gorilla",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 571, text = "Elder Mistvale Gorilla", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 572 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Collect 5 Mistvale Giblets.",
            route = {
                { mapID = 1434, x = 0.312, y = 0.682, label = "Mistvale Giblets", offMapText = "Travel to Mistvale Giblets." },
            },
            dependsOn = { "accept-606-scaring-shaky" },
            id = "objective-606-1-mistvale-giblets",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 606, text = "Mistvale Giblets", index = 1, count = 5 },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in The Bloodsail Buccaneers.",
            route = {
                { y = 0.6952, mapID = 1434, label = "The Bloodsail Buccaneers", offMapText = "Travel to The Bloodsail Buccaneers.", x = 0.2728 },
            },
            dependsOn = { "accept-595-the-bloodsail-buccaneers" },
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 595, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.6952, mapID = 1434, label = "The Bloodsail Buccaneers", offMapText = "Travel to The Bloodsail Buccaneers.", x = 0.2728 },
            },
            text = "Accept The Bloodsail Buccaneers.",
            id = "accept-597-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 597, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 595 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in Scaring Shaky to \"Shaky\" Phillipe.",
            route = {
                { mapID = 1434, x = 0.26899999999999996, y = 0.7359, label = "\"Shaky\" Phillipe", offMapText = "Travel to \"Shaky\" Phillipe in Stranglethorn Vale." },
            },
            dependsOn = { "accept-606-scaring-shaky", "objective-606-1-mistvale-giblets" },
            id = "turnin-606-scaring-shaky",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 606, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { mapID = 1434, x = 0.26899999999999996, y = 0.7359, label = "\"Shaky\" Phillipe", offMapText = "Travel to \"Shaky\" Phillipe in Stranglethorn Vale." },
            },
            text = "Accept Return to MacKinley from \"Shaky\" Phillipe.",
            id = "accept-607-return-to-mackinley",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 607, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Turn in The Bloodsail Buccaneers to First Mate Crazz.",
            route = {
                { y = 0.7621, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            dependsOn = { "accept-597-the-bloodsail-buccaneers" },
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 597, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 595 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.7621, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz.",
            id = "accept-599-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 599, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Return to MacKinley to \"Sea Wolf\" MacKinley.",
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            dependsOn = { "accept-607-return-to-mackinley" },
            id = "turnin-607-return-to-mackinley",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 607, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Voodoo Dues from \"Sea Wolf\" MacKinley.",
            id = "accept-609-voodoo-dues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 609, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            route = {
                { y = 0.7735, mapID = 1434, label = "Deeg", offMapText = "Travel to Deeg in Stranglethorn Vale.", x = 0.2692 },
            },
            text = "Accept Up to Snuff from Deeg.",
            id = "accept-587-up-to-snuff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 587, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn.",
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            dependsOn = { "accept-599-the-bloodsail-buccaneers" },
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 599, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn.",
            id = "accept-604-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 604, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 599 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            route = {
                { y = 0.759, mapID = 1434, label = "Dizzy One-Eye", offMapText = "Travel to Dizzy One-Eye in Stranglethorn Vale.", x = 0.2859 },
            },
            text = "Accept Keep An Eye Out from Dizzy One-Eye.",
            id = "accept-576-keep-an-eye-out",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 576, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-604-2-bloodsail-charts",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Collect 1 Bloodsail Charts.",
            complete = {
                questObjective = { id = 604, index = 2, text = "Bloodsail Charts", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2959, y = 0.8083, label = "Bloodsail Charts", offMapText = "Travel to Bloodsail Charts." },
            },
            sourceStep = 36,
            priority = 530,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 599 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
        },
        {
            id = "objective-604-3-bloodsail-orders",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Collect 1 Bloodsail Orders.",
            complete = {
                questObjective = { id = 604, index = 3, text = "Bloodsail Orders", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2959, y = 0.8079999999999999, label = "Bloodsail Orders", offMapText = "Travel to Bloodsail Orders." },
            },
            sourceStep = 37,
            priority = 540,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 599 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
        },
        {
            id = "objective-576-1-dizzy-s-eye",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Collect 1 Dizzy's Eye.",
            complete = {
                questObjective = { id = 576, index = 1, text = "Dizzy's Eye", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.27, y = 0.828, label = "Dizzy's Eye", offMapText = "Travel to Dizzy's Eye." },
            },
            sourceStep = 38,
            priority = 550,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-576-keep-an-eye-out" },
        },
        {
            id = "objective-587-1-snuff",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Collect 15 Snuff.",
            complete = {
                questObjective = { id = 587, index = 1, text = "Snuff", count = 15 },
            },
            route = {
                { mapID = 1434, x = 0.27, y = 0.828, label = "Snuff", offMapText = "Travel to Snuff." },
            },
            sourceStep = 38,
            priority = 560,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-587-up-to-snuff" },
        },
        {
            id = "objective-604-1-bloodsail-swashbuckler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Kill 10 Bloodsail Swashbuckler.",
            complete = {
                questObjective = { id = 604, index = 1, text = "Bloodsail Swashbuckler", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.27, y = 0.828, label = "Bloodsail Swashbuckler", offMapText = "Travel to Bloodsail Swashbuckler." },
            },
            sourceStep = 39,
            priority = 570,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 599 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-604-the-bloodsail-buccaneers" },
        },
        {
            priority = 580,
            text = "Turn in Keep An Eye Out to Dizzy One-Eye.",
            route = {
                { mapID = 1434, x = 0.2859, y = 0.759, label = "Dizzy One-Eye", offMapText = "Travel to Dizzy One-Eye in Stranglethorn Vale." },
            },
            dependsOn = { "accept-576-keep-an-eye-out", "objective-576-1-dizzy-s-eye" },
            id = "turnin-576-keep-an-eye-out",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 576, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-617-akiris-by-the-bundle",
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
            checkpointQuest = 617,
            priority = 590,
        },
        {
            priority = 600,
            route = {
                { y = 0.7678, mapID = 1434, label = "Privateer Bloads", offMapText = "Travel to Privateer Bloads in Stranglethorn Vale.", x = 0.2743 },
            },
            text = "Accept Akiris by the Bundle from Privateer Bloads.",
            id = "accept-617-akiris-by-the-bundle",
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
                quest = { id = 617, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Up to Snuff to Deeg.",
            route = {
                { y = 0.7735, mapID = 1434, label = "Deeg", offMapText = "Travel to Deeg in Stranglethorn Vale.", x = 0.2692 },
            },
            dependsOn = { "accept-587-up-to-snuff", "objective-587-1-snuff" },
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 587, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 597 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn.",
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            dependsOn = {
                "accept-604-the-bloodsail-buccaneers",
                "objective-604-2-bloodsail-charts",
                "objective-604-3-bloodsail-orders",
                "objective-604-1-bloodsail-swashbuckler",
            },
            id = "turnin-604-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 604, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 599 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin.",
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            dependsOn = { "accept-571-mok-thardin-s-enchantment", "objective-571-1-elder-mistvale-gorilla" },
            id = "turnin-571-mok-thardin-s-enchantment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 571, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 572 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin.",
            id = "accept-573-mok-thardin-s-enchantment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 573, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 571 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Collect 1 Maury's Clubbed Foot.",
            route = {
                { mapID = 1434, x = 0.3525, y = 0.5126, label = "Maury's Clubbed Foot", offMapText = "Travel to Maury's Clubbed Foot." },
            },
            dependsOn = { "accept-609-voodoo-dues" },
            id = "objective-609-1-maury-club-foot-wilkins",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 609, text = "Maury \"Club Foot\" Wilkins", index = 1, count = 1 },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Collect 1 Jon-Jon's Golden Spyglass.",
            route = {
                { y = 0.5185, mapID = 1434, label = "Jon-Jon the Crow", offMapText = "Travel to Jon-Jon the Crow.", x = 0.3493 },
            },
            dependsOn = { "accept-609-voodoo-dues" },
            id = "objective-609-2-jon-jon-the-crow",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 609, text = "Jon-Jon the Crow", index = 2, count = 1 },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-621-1-zanzil-s-mixture",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Collect 12 Zanzil's Mixture.",
            complete = {
                questObjective = { id = 621, index = 1, text = "Zanzil's Mixture", count = 12 },
            },
            route = {
                { mapID = 1434, x = 0.39799999999999996, y = 0.5720000000000001, label = "Zanzil's Mixture", offMapText = "Travel to Zanzil's Mixture." },
            },
            sourceStep = 49,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-621-zanzil-s-secret" },
        },
        {
            id = "objective-617-1-akiris-reed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            text = "Collect 10 Akiris Reed.",
            complete = {
                questObjective = { id = 617, index = 1, text = "Akiris Reed", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.244, y = 0.6459999999999999, label = "Akiris Reed", offMapText = "Travel to Akiris Reed." },
            },
            sourceStep = 51,
            priority = 680,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-617-akiris-by-the-bundle" },
        },
        {
            id = "objective-573-1-naga-explorer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Naga Explorer.",
            complete = {
                questObjective = { id = 573, index = 1, text = "Naga Explorer", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.244, y = 0.6459999999999999, label = "Naga Explorer", offMapText = "Travel to Naga Explorer." },
            },
            sourceStep = 52,
            priority = 690,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 571 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-573-mok-thardin-s-enchantment" },
        },
        {
            priority = 700,
            text = "Turn in Voodoo Dues to \"Sea Wolf\" MacKinley.",
            route = {
                { mapID = 1434, x = 0.2778, y = 0.7706999999999999, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale." },
            },
            dependsOn = { "accept-609-voodoo-dues", "objective-609-1-maury-club-foot-wilkins", "objective-609-2-jon-jon-the-crow" },
            id = "turnin-609-voodoo-dues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 609, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 607 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Akiris by the Bundle to Privateer Bloads.",
            route = {
                { y = 0.7678, mapID = 1434, label = "Privateer Bloads", offMapText = "Travel to Privateer Bloads in Stranglethorn Vale.", x = 0.2743 },
            },
            dependsOn = { "accept-617-akiris-by-the-bundle", "objective-617-1-akiris-reed" },
            id = "turnin-617-akiris-by-the-bundle",
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
                quest = { id = 617, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-580-whiskey-slim-s-lost-grog",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 580,
            priority = 720,
        },
        {
            priority = 730,
            route = {
                { y = 0.7745, mapID = 1434, label = "Whiskey Slim", offMapText = "Travel to Whiskey Slim in Stranglethorn Vale.", x = 0.2713 },
            },
            text = "Accept Whiskey Slim's Lost Grog from Whiskey Slim.",
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 580, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            text = "Turn in Zanzil's Secret to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = { "accept-621-zanzil-s-secret", "objective-621-1-zanzil-s-mixture" },
            id = "turnin-621-zanzil-s-secret",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 621, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin.",
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            dependsOn = { "accept-573-mok-thardin-s-enchantment", "objective-573-1-naga-explorer" },
            id = "turnin-573-mok-thardin-s-enchantment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 573, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 571 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            text = "For The Singing Crystals: Bring 3 Pulsing Blue Shards to Kin'weelay at the Grom'gol Base Camp.",
            id = "objective-589-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 589, state = "complete" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 588 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-589-the-singing-crystals" },
        },
        {
            priority = 770,
            text = "Turn in The Singing Crystals to Kin'weelay.",
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            dependsOn = { "accept-589-the-singing-crystals", "objective-589-quest-work" },
            id = "turnin-589-the-singing-crystals",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 589, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 588 },
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
