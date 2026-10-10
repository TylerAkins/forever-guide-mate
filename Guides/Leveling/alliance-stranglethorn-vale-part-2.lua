local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-stranglethorn-vale-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 37 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-1115-the-rumormonger",
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
            checkpointQuest = 1115,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Turn in The Rumormonger to Krazek.",
            id = "turnin-1115-the-rumormonger",
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
                quest = { id = 1115, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1114 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Bloodscalp Ears from Kebok.",
            id = "accept-189-bloodscalp-ears",
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
                quest = { id = 189, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-601-water-elementals",
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
            checkpointQuest = 601,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Water Elementals from Baron Revilgaz.",
            id = "accept-601-water-elementals",
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
                quest = { id = 601, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 578 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-577-some-assembly-required",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 577,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Some Assembly Required from Drizzlik.",
            id = "accept-577-some-assembly-required",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 577, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 575 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.5976, mapID = 1453, label = "Lesser Bloodstone Ore", offMapText = "Travel to Lesser Bloodstone Ore.", x = 0.5362 },
            },
            text = "Collect 4 Lesser Bloodstone Ore. Keep the required materials for the quest.",
            id = "objective-627-1-lesser-bloodstone-ore",
            kind = "note",
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
                quest = { id = 627, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Favor for Krazek from Krazek.",
            id = "accept-627-favor-for-krazek",
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
                quest = { id = 627, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in Favor for Krazek to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "accept-627-favor-for-krazek" },
            id = "turnin-627-favor-for-krazek",
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
                quest = { id = 627, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 210 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Return to Corporal Kaleb from Krazek.",
            id = "accept-622-return-to-corporal-kaleb",
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
                quest = { id = 622, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 627 },
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
                { y = 0.0356, mapID = 1434, label = "Brother Nimetz", offMapText = "Travel to Brother Nimetz in Stranglethorn Vale.", x = 0.3783 },
            },
            text = "Accept Kurzen's Mystery from Brother Nimetz.",
            id = "accept-207-kurzen-s-mystery",
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
                quest = { id = 207, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 204, 203 },
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
                { y = 0.0342, mapID = 1434, label = "Private Thorsen", offMapText = "Travel to Private Thorsen in Stranglethorn Vale.", x = 0.3798 },
            },
            text = "Turn in Supplies to Private Thorsen to Private Thorsen.",
            id = "turnin-198-supplies-to-private-thorsen",
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
                quest = { id = 198, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.0333, mapID = 1434, label = "Sergeant Yohwa", offMapText = "Travel to Sergeant Yohwa in Stranglethorn Vale.", x = 0.3802 },
            },
            text = "Accept Special Forces from Sergeant Yohwa.",
            id = "accept-574-special-forces",
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
                quest = { id = 574, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 203, 204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Turn in Return to Corporal Kaleb to Corporal Kaleb.",
            route = {
                { y = 0.033, mapID = 1434, label = "Corporal Kaleb", offMapText = "Travel to Corporal Kaleb in Stranglethorn Vale.", x = 0.3774 },
            },
            dependsOn = { "accept-622-return-to-corporal-kaleb" },
            id = "turnin-622-return-to-corporal-kaleb",
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
                quest = { id = 622, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 627 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary.",
            id = "accept-195-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 195, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-188-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 188, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
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
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-192-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 192, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warrior-accept-1714-essence-of-the-exile",
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
            checkpointQuest = 1714,
            priority = 190,
        },
        {
            priority = 200,
            route = {
                { y = 0.667, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.793, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            id = "woven-class-warrior-accept-1714-essence-of-the-exile",
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
            dependsOn = {},
            classAction = "accept-1714-essence-of-the-exile",
        },
        {
            priority = 210,
            dependsOn = { "woven-class-warrior-accept-1714-essence-of-the-exile" },
            id = "woven-class-warrior-objective-1714-essence-of-the-exile",
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
            useClientPin = true,
            classAction = "objective-1714-essence-of-the-exile",
        },
        {
            priority = 220,
            route = {
                { y = 0.667, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.793, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            dependsOn = {
                "woven-class-warrior-accept-1714-essence-of-the-exile",
                "woven-class-warrior-objective-1714-essence-of-the-exile",
            },
            id = "woven-class-warrior-turnin-1714-essence-of-the-exile",
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
            classAction = "turnin-1714-essence-of-the-exile",
        },
        {
            id = "level-before-objective-1712-1-liferoot",
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
            priority = 230,
        },
        {
            id = "objective-1712-1-liferoot",
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
            text = "Collect 8 Liferoot.",
            complete = {
                questObjective = { id = 1712, index = 1, text = "Liferoot", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.44, y = 0.11800000000000001, label = "Liferoot", offMapText = "Travel to Liferoot." },
            },
            sourceStep = 26,
            priority = 240,
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
            priority = 250,
            route = {
                { mapID = 1434, x = 0.4961, y = 0.0757, label = "The Hidden Key", offMapText = "Travel to The Hidden Key." },
            },
            text = "Turn in The Hidden Key.",
            id = "turnin-328-the-hidden-key",
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
                quest = { id = 328, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 200 },
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
                { mapID = 1434, x = 0.4961, y = 0.0757, label = "The Spy Revealed!", offMapText = "Travel to The Spy Revealed!." },
            },
            text = "Accept The Spy Revealed!.",
            id = "accept-329-the-spy-revealed",
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
                quest = { id = 329, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 328 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-574-2-kurzen-headshrinker",
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
            text = "Kill 6 Kurzen Headshrinker.",
            complete = {
                questObjective = { id = 574, index = 2, text = "Kurzen Headshrinker", count = 6 },
            },
            route = {
                { mapID = 1434, x = 0.4648, y = 0.0708, label = "Kurzen Headshrinker", offMapText = "Travel to Kurzen Headshrinker." },
            },
            sourceStep = 29,
            priority = 270,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 203, 204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-574-special-forces" },
        },
        {
            id = "objective-574-1-kurzen-commando",
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
            text = "Kill 10 Kurzen Commando.",
            complete = {
                questObjective = { id = 574, index = 1, text = "Kurzen Commando", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.4648, y = 0.0708, label = "Kurzen Commando", offMapText = "Travel to Kurzen Commando." },
            },
            sourceStep = 30,
            priority = 280,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 203, 204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-574-special-forces" },
        },
        {
            priority = 290,
            text = "Kill 10 Shadowmaw Panther.",
            route = {
                { mapID = 1434, x = 0.486, y = 0.222, label = "Shadowmaw Panther", offMapText = "Travel to Shadowmaw Panther." },
            },
            dependsOn = { "accept-192-panther-mastery" },
            id = "objective-192-1-shadowmaw-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 192, text = "Shadowmaw Panther", index = 1, count = 10 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Collect 5 Snapjaw Crocolisk Skin.",
            route = {
                { y = 0.25, mapID = 1434, label = "Snapjaw Crocolisk", offMapText = "Travel to Snapjaw Crocolisk.", x = 0.404 },
            },
            dependsOn = { "accept-577-some-assembly-required" },
            id = "objective-577-1-snapjaw-crocolisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                questObjective = { id = 577, text = "Snapjaw Crocolisk", index = 1, count = 5 },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 575 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-195-1-lashtail-raptor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Lashtail Raptor.",
            complete = {
                questObjective = { id = 195, index = 1, text = "Lashtail Raptor", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.37200000000000005, y = 0.23600000000000002, label = "Lashtail Raptor", offMapText = "Travel to Lashtail Raptor." },
            },
            sourceStep = 34,
            priority = 310,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-195-raptor-mastery" },
        },
        {
            priority = 320,
            text = "Collect 1 Paw of Sin'Dall.",
            route = {
                { y = 0.1739, mapID = 1434, label = "Sin'Dall", offMapText = "Travel to Sin'Dall.", x = 0.3221 },
            },
            dependsOn = { "accept-188-tiger-mastery" },
            id = "objective-188-1-sin-dall",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 188, text = "Sin'Dall", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-207-1-the-first-troll-legend",
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
            text = "Collect 1 The First Troll Legend.",
            complete = {
                questObjective = { id = 207, index = 1, text = "The First Troll Legend", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2948, y = 0.19149999999999998, label = "The First Troll Legend", offMapText = "Travel to The First Troll Legend." },
            },
            sourceStep = 36,
            priority = 330,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 204, 203 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-207-kurzen-s-mystery" },
        },
        {
            id = "objective-207-2-the-second-troll-legend",
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
            text = "Collect 1 The Second Troll Legend.",
            complete = {
                questObjective = { id = 207, index = 2, text = "The Second Troll Legend", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2475, y = 0.2284, label = "The Second Troll Legend", offMapText = "Travel to The Second Troll Legend." },
            },
            sourceStep = 37,
            priority = 340,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 204, 203 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-207-kurzen-s-mystery" },
        },
        {
            priority = 350,
            text = "Collect 6 Water Elemental Bracers.",
            route = {
                { y = 0.222, mapID = 1434, label = "Lesser Water Elemental", offMapText = "Travel to Lesser Water Elemental.", x = 0.214 },
            },
            dependsOn = { "accept-601-water-elementals" },
            id = "objective-601-1-lesser-water-elemental",
            kind = "objective",
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
                questObjective = { id = 601, text = "Lesser Water Elemental", index = 1, count = 6 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 578 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-207-reviewed-4",
            kind = "objective",
            text = "Collect the Fourth Troll Legend from the tablet inside the cave at the Ruins of Zul'Kunda.",
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
                    mode = "all",
                    quests = { 204, 203 },
                    conditions = {},
                },
            },
            complete = {
                questObjective = { id = 207, index = 4, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1434, x = 0.247, y = 0.08929999999999999, label = "Fourth Troll Legend", offMapText = "Travel to Fourth Troll Legend." },
            },
            sourceStep = 39,
            dependsOn = { "accept-207-kurzen-s-mystery" },
            priority = 360,
        },
        {
            id = "objective-207-reviewed-3",
            kind = "objective",
            text = "Collect the Third Troll Legend from the tablet in the upper ruins at Zul'Kunda.",
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
                    mode = "all",
                    quests = { 204, 203 },
                    conditions = {},
                },
            },
            complete = {
                questObjective = { id = 207, index = 3, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1434, x = 0.22949999999999998, y = 0.1202, label = "Third Troll Legend", offMapText = "Travel to Third Troll Legend." },
            },
            sourceStep = 40,
            dependsOn = { "accept-207-kurzen-s-mystery" },
            priority = 370,
        },
        {
            id = "objective-189-1-bloodscalp-ear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 15 Bloodscalp Ear.",
            complete = {
                questObjective = { id = 189, index = 1, text = "Bloodscalp Ear", count = 15 },
            },
            route = {
                { mapID = 1434, x = 0.24600000000000002, y = 0.114, label = "Bloodscalp Ear", offMapText = "Travel to Bloodscalp Ear." },
            },
            sourceStep = 41,
            priority = 380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-189-bloodscalp-ears" },
        },
        {
            id = "objective-1712-2-bloodscalp-tusk",
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
            text = "Collect 30 Bloodscalp Tusk.",
            complete = {
                questObjective = { id = 1712, index = 2, text = "Bloodscalp Tusk", count = 30 },
            },
            route = {
                { mapID = 1434, x = 0.24600000000000002, y = 0.114, label = "Bloodscalp Tusk", offMapText = "Travel to Bloodscalp Tusk." },
            },
            sourceStep = 41,
            priority = 390,
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
            priority = 400,
            text = "Turn in Raptor Mastery to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-195-raptor-mastery", "objective-195-1-lashtail-raptor" },
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 195, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary.",
            id = "accept-196-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 196, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            dependsOn = { "accept-188-tiger-mastery", "objective-188-1-sin-dall" },
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 188, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "accept-192-panther-mastery", "objective-192-1-shadowmaw-panther" },
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 192, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-193-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 193, state = "activeOrCompleted" },
            },
            sourceStep = 45,
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
            priority = 450,
            text = "Turn in Kurzen's Mystery to Brother Nimetz.",
            route = {
                { y = 0.0356, mapID = 1434, label = "Brother Nimetz", offMapText = "Travel to Brother Nimetz in Stranglethorn Vale.", x = 0.3783 },
            },
            dependsOn = {
                "accept-207-kurzen-s-mystery",
                "objective-207-1-the-first-troll-legend",
                "objective-207-2-the-second-troll-legend",
                "objective-207-reviewed-4",
                "objective-207-reviewed-3",
            },
            id = "turnin-207-kurzen-s-mystery",
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
                quest = { id = 207, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 204, 203 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.0356, mapID = 1434, label = "Brother Nimetz", offMapText = "Travel to Brother Nimetz in Stranglethorn Vale.", x = 0.3783 },
            },
            text = "Accept Troll Witchery from Brother Nimetz.",
            id = "accept-205-troll-witchery",
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
                quest = { id = 205, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 207 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Special Forces to Lieutenant Doren.",
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            dependsOn = { "accept-574-special-forces", "objective-574-2-kurzen-headshrinker", "objective-574-1-kurzen-commando" },
            id = "turnin-574-special-forces",
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
                quest = { id = 574, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 203, 204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Turn in The Spy Revealed! to Lieutenant Doren.",
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            dependsOn = { "accept-329-the-spy-revealed" },
            id = "turnin-329-the-spy-revealed",
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
                quest = { id = 329, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 328 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            text = "Accept Patrol Schedules from Lieutenant Doren.",
            id = "accept-330-patrol-schedules",
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
                quest = { id = 330, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 329 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Patrol Schedules to Corporal Sethman.",
            route = {
                { y = 0.0339, mapID = 1434, label = "Corporal Sethman", offMapText = "Travel to Corporal Sethman in Stranglethorn Vale.", x = 0.3766 },
            },
            dependsOn = { "accept-330-patrol-schedules" },
            id = "turnin-330-patrol-schedules",
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
                quest = { id = 330, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 329 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.0339, mapID = 1434, label = "Corporal Sethman", offMapText = "Travel to Corporal Sethman in Stranglethorn Vale.", x = 0.3766 },
            },
            text = "Accept Report to Doren from Corporal Sethman.",
            id = "accept-331-report-to-doren",
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
                quest = { id = 331, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 330 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in Report to Doren to Lieutenant Doren.",
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            dependsOn = { "accept-331-report-to-doren" },
            id = "turnin-331-report-to-doren",
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
                quest = { id = 331, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 330 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Dream Dust in the Swamp from Krazek.",
            id = "accept-1116-dream-dust-in-the-swamp",
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
                quest = { id = 1116, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Bloodscalp Ears to Kebok.",
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            dependsOn = { "accept-189-bloodscalp-ears", "objective-189-1-bloodscalp-ear" },
            id = "turnin-189-bloodscalp-ears",
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
                quest = { id = 189, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in Water Elementals to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-601-water-elementals", "objective-601-1-lesser-water-elemental" },
            id = "turnin-601-water-elementals",
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
                quest = { id = 601, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 578 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Magical Analysis from Baron Revilgaz.",
            id = "accept-602-magical-analysis",
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
                quest = { id = 602, state = "activeOrCompleted" },
            },
            sourceStep = 54,
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
            priority = 570,
            text = "Turn in Some Assembly Required to Drizzlik.",
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            dependsOn = { "accept-577-some-assembly-required", "objective-577-1-snapjaw-crocolisk" },
            id = "turnin-577-some-assembly-required",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 577, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 575 },
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
