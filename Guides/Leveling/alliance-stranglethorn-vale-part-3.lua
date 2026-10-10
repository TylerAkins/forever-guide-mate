local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-stranglethorn-vale-part-3",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 42 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1477-vital-supplies",
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
            checkpointQuest = 1477,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.8167, mapID = 1453, label = "High Sorcerer Andromath", offMapText = "Travel to High Sorcerer Andromath in Stormwind City.", x = 0.3752 },
            },
            text = "Accept Vital Supplies from High Sorcerer Andromath.",
            id = "accept-1477-vital-supplies",
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
                quest = { id = 1477, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.6367, mapID = 1453, label = "Acolyte Dellis", offMapText = "Travel to Acolyte Dellis in Stormwind City.", x = 0.4117 },
            },
            text = "Accept Mazen's Behest from Acolyte Dellis.",
            id = "accept-1364-mazen-s-behest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1364, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-209-skullsplitter-tusks",
            kind = "note",
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 37 },
            },
            requiredLevel = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 209,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Skullsplitter Tusks from Kebok.",
            id = "accept-209-skullsplitter-tusks",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 209, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 189 },
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
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            text = "Turn in Sunken Treasure to Fleet Master Seahorn.",
            id = "turnin-669-sunken-treasure",
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
                quest = { id = 669, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 668 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.7753, mapID = 1434, label = "Catelyn the Blade", offMapText = "Travel to Catelyn the Blade in Stranglethorn Vale.", x = 0.2728 },
            },
            text = "Turn in Ansirem's Key to Catelyn the Blade.",
            id = "turnin-603-ansirem-s-key",
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
                quest = { id = 603, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 602 },
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
                { y = 0.7753, mapID = 1434, label = "Catelyn the Blade", offMapText = "Travel to Catelyn the Blade in Stranglethorn Vale.", x = 0.2728 },
            },
            text = "Accept \"Pretty Boy\" Duncan from Catelyn the Blade.",
            id = "accept-610-pretty-boy-duncan",
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
                quest = { id = 610, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 603 },
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
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Turn in Back to Booty Bay to Crank Fizzlebub.",
            id = "turnin-1118-back-to-booty-bay",
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
                quest = { id = 1118, state = "completed" },
            },
            sourceStep = 12,
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
            priority = 100,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Venture Company Mining from Crank Fizzlebub.",
            id = "accept-600-venture-company-mining",
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
                quest = { id = 600, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 605 },
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
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Zanzil's Secret from Crank Fizzlebub.",
            id = "accept-621-zanzil-s-secret",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 621, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Scaring Shaky from \"Sea Wolf\" MacKinley.",
            id = "accept-606-scaring-shaky",
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
                quest = { id = 606, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.7622, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz.",
            id = "accept-595-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 595, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Excelsior from Drizzlik.",
            id = "accept-628-excelsior",
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
                quest = { id = 628, state = "activeOrCompleted" },
            },
            sourceStep = 16,
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
            priority = 150,
            text = "Collect 5 Mistvale Giblets.",
            route = {
                { mapID = 1434, x = 0.312, y = 0.682, label = "Mistvale Giblets", offMapText = "Travel to Mistvale Giblets." },
            },
            dependsOn = { "accept-606-scaring-shaky" },
            id = "objective-606-1-elder-mistvale-gorilla",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 606, text = "Elder Mistvale Gorilla", index = 1, count = 5 },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in The Bloodsail Buccaneers.",
            route = {
                { y = 0.6952, mapID = 1434, label = "The Bloodsail Buccaneers", offMapText = "Travel to The Bloodsail Buccaneers.", x = 0.2728 },
            },
            dependsOn = { "accept-595-the-bloodsail-buccaneers" },
            id = "turnin-595-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 595, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.6952, mapID = 1434, label = "The Bloodsail Buccaneers", offMapText = "Travel to The Bloodsail Buccaneers.", x = 0.2728 },
            },
            text = "Accept The Bloodsail Buccaneers.",
            id = "accept-597-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 597, state = "activeOrCompleted" },
            },
            sourceStep = 18,
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
            id = "objective-610-1-catelyn-s-blade",
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
            text = "Collect 1 Catelyn's Blade.",
            complete = {
                questObjective = { id = 610, index = 1, text = "Catelyn's Blade", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2738, y = 0.6940999999999999, label = "Catelyn's Blade", offMapText = "Travel to Catelyn's Blade." },
            },
            sourceStep = 19,
            priority = 180,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 603 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-610-pretty-boy-duncan" },
        },
        {
            priority = 190,
            text = "Turn in Scaring Shaky to \"Shaky\" Phillipe.",
            route = {
                { mapID = 1434, x = 0.26899999999999996, y = 0.7359, label = "\"Shaky\" Phillipe", offMapText = "Travel to \"Shaky\" Phillipe in Stranglethorn Vale." },
            },
            dependsOn = { "accept-606-scaring-shaky", "objective-606-1-elder-mistvale-gorilla" },
            id = "turnin-606-scaring-shaky",
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
                quest = { id = 606, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            route = {
                { mapID = 1434, x = 0.26899999999999996, y = 0.7359, label = "\"Shaky\" Phillipe", offMapText = "Travel to \"Shaky\" Phillipe in Stranglethorn Vale." },
            },
            text = "Accept Return to MacKinley from \"Shaky\" Phillipe.",
            id = "accept-607-return-to-mackinley",
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
                quest = { id = 607, state = "activeOrCompleted" },
            },
            sourceStep = 20,
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
            priority = 210,
            text = "Turn in The Bloodsail Buccaneers to First Mate Crazz.",
            route = {
                { y = 0.7621, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            dependsOn = { "accept-597-the-bloodsail-buccaneers" },
            id = "turnin-597-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 597, state = "completed" },
            },
            sourceStep = 21,
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
            priority = 220,
            route = {
                { y = 0.7621, mapID = 1434, label = "First Mate Crazz", offMapText = "Travel to First Mate Crazz in Stranglethorn Vale.", x = 0.281 },
            },
            text = "Accept The Bloodsail Buccaneers from First Mate Crazz.",
            id = "accept-599-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 599, state = "activeOrCompleted" },
            },
            sourceStep = 21,
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
            priority = 230,
            text = "Turn in Return to MacKinley to \"Sea Wolf\" MacKinley.",
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            dependsOn = { "accept-607-return-to-mackinley" },
            id = "turnin-607-return-to-mackinley",
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
                quest = { id = 607, state = "completed" },
            },
            sourceStep = 22,
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
            priority = 240,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Voodoo Dues from \"Sea Wolf\" MacKinley.",
            id = "accept-609-voodoo-dues",
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
                quest = { id = 609, state = "activeOrCompleted" },
            },
            sourceStep = 22,
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
            priority = 250,
            text = "Turn in \"Pretty Boy\" Duncan to Catelyn the Blade.",
            route = {
                { y = 0.7753, mapID = 1434, label = "Catelyn the Blade", offMapText = "Travel to Catelyn the Blade in Stranglethorn Vale.", x = 0.2728 },
            },
            dependsOn = { "accept-610-pretty-boy-duncan", "objective-610-1-catelyn-s-blade" },
            id = "turnin-610-pretty-boy-duncan",
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
                quest = { id = 610, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 603 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.7753, mapID = 1434, label = "Catelyn the Blade", offMapText = "Travel to Catelyn the Blade in Stranglethorn Vale.", x = 0.2728 },
            },
            text = "Accept The Curse of the Tides from Catelyn the Blade.",
            id = "accept-611-the-curse-of-the-tides",
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
                quest = { id = 611, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 610 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn.",
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            dependsOn = { "accept-599-the-bloodsail-buccaneers" },
            id = "turnin-599-the-bloodsail-buccaneers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 599, state = "completed" },
            },
            sourceStep = 24,
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
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 617,
            priority = 280,
        },
        {
            priority = 290,
            route = {
                { y = 0.7638, mapID = 1434, label = "Privateer Bloads", offMapText = "Travel to Privateer Bloads in Stranglethorn Vale.", x = 0.2676 },
            },
            text = "Accept Akiris by the Bundle from Privateer Bloads.",
            id = "accept-617-akiris-by-the-bundle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 617, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Collect 10 Akiris Reed.",
            route = {
                { mapID = 1434, x = 0.244, y = 0.6459999999999999, label = "Akiris Reed", offMapText = "Travel to Akiris Reed." },
            },
            dependsOn = { "accept-617-akiris-by-the-bundle" },
            id = "objective-617-1-naga-explorer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                questObjective = { id = 617, text = "Naga Explorer", index = 1, count = 10 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Collect 1 Jon-Jon's Golden Spyglass.",
            route = {
                { y = 0.5185, mapID = 1434, label = "Jon-Jon the Crow", offMapText = "Travel to Jon-Jon the Crow.", x = 0.3493 },
            },
            dependsOn = { "accept-609-voodoo-dues" },
            id = "objective-609-2-jon-jon-the-crow",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 609, text = "Jon-Jon the Crow", index = 2, count = 1 },
            },
            sourceStep = 27,
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
            priority = 320,
            text = "Collect 1 Maury's Clubbed Foot.",
            route = {
                { y = 0.5126, mapID = 1434, label = "Maury \"Club Foot\" Wilkins", offMapText = "Travel to Maury \"Club Foot\" Wilkins.", x = 0.3525 },
            },
            dependsOn = { "accept-609-voodoo-dues" },
            id = "objective-609-1-maury-club-foot-wilkins",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 609, text = "Maury \"Club Foot\" Wilkins", index = 1, count = 1 },
            },
            sourceStep = 28,
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
            id = "objective-609-reviewed-3",
            kind = "objective",
            text = "Kill Chucky Ten Thumbs and collect Chucky's Huge Ring.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 607 },
                    conditions = {},
                },
            },
            complete = {
                questObjective = { id = 609, index = 3, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1434, x = 0.4, y = 0.5824, label = "Chucky Ten Thumbs", offMapText = "Travel to Chucky Ten Thumbs." },
            },
            sourceStep = 29,
            dependsOn = { "accept-609-voodoo-dues" },
            priority = 330,
        },
        {
            id = "objective-621-1-zanzil-s-mixture",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 30,
            priority = 340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-621-zanzil-s-secret" },
        },
        {
            priority = 350,
            route = {
                { y = 0.482, mapID = 1434, label = "Jungle Stalker", offMapText = "Travel to Jungle Stalker.", x = 0.272 },
            },
            text = "Kill 10 Jungle Stalker.",
            id = "objective-196-1-jungle-stalker",
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
                questObjective = { id = 196, text = "Jungle Stalker", index = 1, count = 10 },
            },
            sourceStep = 31,
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
            priority = 360,
            text = "Collect 10 Singing Blue Crystal.",
            route = {
                { y = 0.446, mapID = 1434, label = "Venture Co. Strip Miner", offMapText = "Travel to Venture Co. Strip Miner.", x = 0.414 },
            },
            dependsOn = { "accept-600-venture-company-mining" },
            id = "objective-600-1-venture-co-strip-miner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 600, text = "Venture Co. Strip Miner", index = 1, count = 10 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.362, mapID = 1434, label = "Skullsplitter Warrior", offMapText = "Travel to Skullsplitter Warrior.", x = 0.422 },
            },
            text = "Collect 4 Skullsplitter Fetish.",
            id = "objective-205-1-skullsplitter-warrior",
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
            complete = {
                questObjective = { id = 205, text = "Skullsplitter Warrior", index = 1, count = 4 },
            },
            sourceStep = 33,
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
            priority = 380,
            text = "Collect 18 Skullsplitter Tusk.",
            route = {
                { y = 0.362, mapID = 1434, label = "Skullsplitter Tusk", offMapText = "Travel to Skullsplitter Tusk.", x = 0.422 },
            },
            dependsOn = { "accept-209-skullsplitter-tusks" },
            id = "objective-209-1-skullsplitter-tusk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                questObjective = { id = 209, text = "Skullsplitter Tusk", index = 1, count = 18 },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 189 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.2905, mapID = 1434, label = "Bhag'thera", offMapText = "Travel to Bhag'thera.", x = 0.4637 },
            },
            text = "Collect 1 Fang of Bhag'thera.",
            id = "objective-193-1-bhag-thera",
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
                questObjective = { id = 193, text = "Bhag'thera", index = 1, count = 1 },
            },
            sourceStep = 34,
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
            priority = 400,
            text = "Turn in Troll Witchery to Brother Nimetz.",
            route = {
                { y = 0.0356, mapID = 1434, label = "Brother Nimetz", offMapText = "Travel to Brother Nimetz in Stranglethorn Vale.", x = 0.3783 },
            },
            dependsOn = { "objective-205-1-skullsplitter-warrior" },
            id = "turnin-205-troll-witchery",
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
                quest = { id = 205, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 207 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "objective-193-1-bhag-thera" },
            id = "turnin-193-panther-mastery",
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
                quest = { id = 193, state = "completed" },
            },
            sourceStep = 36,
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
            priority = 420,
            text = "Turn in Raptor Mastery to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "objective-196-1-jungle-stalker" },
            id = "turnin-196-raptor-mastery",
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
                quest = { id = 196, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary.",
            id = "accept-197-raptor-mastery",
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
                quest = { id = 197, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Collect 1 Elder Crocolisk Skin.",
            route = {
                { y = 0.224, mapID = 1434, label = "Elder Saltwater Crocolisk", offMapText = "Travel to Elder Saltwater Crocolisk.", x = 0.292 },
            },
            dependsOn = { "accept-628-excelsior" },
            id = "objective-628-1-elder-saltwater-crocolisk",
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
                questObjective = { id = 628, text = "Elder Saltwater Crocolisk", index = 1, count = 1 },
            },
            sourceStep = 38,
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
            priority = 450,
            text = "Collect 1 Stone of the Tides.",
            route = {
                { y = 0.2358, mapID = 1434, label = "Gazban", offMapText = "Travel to Gazban.", x = 0.2496 },
            },
            dependsOn = { "accept-611-the-curse-of-the-tides" },
            id = "objective-611-1-gazban",
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
                questObjective = { id = 611, text = "Gazban", index = 1, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 610 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Turn in Venture Company Mining to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = { "accept-600-venture-company-mining", "objective-600-1-venture-co-strip-miner" },
            id = "turnin-600-venture-company-mining",
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
                quest = { id = 600, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Zanzil's Secret to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = { "accept-621-zanzil-s-secret", "objective-621-1-zanzil-s-mixture" },
            id = "turnin-621-zanzil-s-secret",
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
                quest = { id = 621, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.7735, mapID = 1434, label = "Deeg", offMapText = "Travel to Deeg in Stranglethorn Vale.", x = 0.2692 },
            },
            text = "Accept Up to Snuff from Deeg.",
            id = "accept-587-up-to-snuff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 587, state = "activeOrCompleted" },
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
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in Skullsplitter Tusks to Kebok.",
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            dependsOn = { "accept-209-skullsplitter-tusks", "objective-209-1-skullsplitter-tusk" },
            id = "turnin-209-skullsplitter-tusks",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 209, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 189 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn.",
            id = "accept-604-the-bloodsail-buccaneers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 604, state = "activeOrCompleted" },
            },
            sourceStep = 44,
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
            priority = 510,
            text = "Turn in The Curse of the Tides to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-611-the-curse-of-the-tides", "objective-611-1-gazban" },
            id = "turnin-611-the-curse-of-the-tides",
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
                quest = { id = 611, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 610 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in Akiris by the Bundle to Privateer Bloads.",
            route = {
                { y = 0.7638, mapID = 1434, label = "Privateer Bloads", offMapText = "Travel to Privateer Bloads in Stranglethorn Vale.", x = 0.2676 },
            },
            dependsOn = { "accept-617-akiris-by-the-bundle", "objective-617-1-naga-explorer" },
            id = "turnin-617-akiris-by-the-bundle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                },
            },
            complete = {
                quest = { id = 617, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.7638, mapID = 1434, label = "Privateer Bloads", offMapText = "Travel to Privateer Bloads in Stranglethorn Vale.", x = 0.2676 },
            },
            text = "Accept Akiris by the Bundle from Privateer Bloads.",
            id = "accept-623-akiris-by-the-bundle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 623, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 617 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Voodoo Dues to \"Sea Wolf\" MacKinley.",
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            dependsOn = {
                "accept-609-voodoo-dues",
                "objective-609-2-jon-jon-the-crow",
                "objective-609-1-maury-club-foot-wilkins",
                "objective-609-reviewed-3",
            },
            id = "turnin-609-voodoo-dues",
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
                quest = { id = 609, state = "completed" },
            },
            sourceStep = 48,
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
            priority = 550,
            text = "Turn in Excelsior to Drizzlik.",
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            dependsOn = { "accept-628-excelsior", "objective-628-1-elder-saltwater-crocolisk" },
            id = "turnin-628-excelsior",
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
                quest = { id = 628, state = "completed" },
            },
            sourceStep = 49,
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
            priority = 560,
            route = {
                { y = 0.759, mapID = 1434, label = "Dizzy One-Eye", offMapText = "Travel to Dizzy One-Eye in Stranglethorn Vale.", x = 0.2859 },
            },
            text = "Accept Keep An Eye Out from Dizzy One-Eye.",
            id = "accept-576-keep-an-eye-out",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 576, state = "activeOrCompleted" },
            },
            sourceStep = 50,
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
                    { faction = "Alliance" },
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
            sourceStep = 51,
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
            id = "objective-604-3-bloodsail-orders",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 52,
            priority = 580,
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
                    { faction = "Alliance" },
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
            sourceStep = 53,
            priority = 590,
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
                    { faction = "Alliance" },
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
            sourceStep = 53,
            priority = 600,
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
                    { faction = "Alliance" },
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
            sourceStep = 54,
            priority = 610,
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
            priority = 620,
            text = "Turn in Keep An Eye Out to Dizzy One-Eye.",
            route = {
                { mapID = 1434, x = 0.2859, y = 0.759, label = "Dizzy One-Eye", offMapText = "Travel to Dizzy One-Eye in Stranglethorn Vale." },
            },
            dependsOn = { "accept-576-keep-an-eye-out", "objective-576-1-dizzy-s-eye" },
            id = "turnin-576-keep-an-eye-out",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 576, state = "completed" },
            },
            sourceStep = 55,
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
            priority = 630,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 604, state = "completed" },
            },
            sourceStep = 56,
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
            priority = 640,
            text = "Turn in Up to Snuff to Deeg.",
            route = {
                { y = 0.7735, mapID = 1434, label = "Deeg", offMapText = "Travel to Deeg in Stranglethorn Vale.", x = 0.2692 },
            },
            dependsOn = { "accept-587-up-to-snuff", "objective-587-1-snuff" },
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            complete = {
                quest = { id = 587, state = "completed" },
            },
            sourceStep = 57,
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
            priority = 650,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept The Green Hills of Stranglethorn from Barnil Stonepot.",
            id = "accept-338-the-green-hills-of-stranglethorn",
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
                quest = { id = 338, state = "activeOrCompleted" },
            },
            sourceStep = 60,
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
            priority = 660,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter I from Barnil Stonepot.",
            id = "accept-339-chapter-i",
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
                quest = { id = 339, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "For Chapter I: Bring pages 1, 4, 6, and 8 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter I.",
            id = "objective-339-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 339, state = "complete" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-339-chapter-i" },
        },
        {
            priority = 680,
            text = "Turn in Chapter I to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-339-chapter-i", "objective-339-quest-work" },
            id = "turnin-339-chapter-i",
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
                quest = { id = 339, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter II from Barnil Stonepot.",
            id = "accept-340-chapter-ii",
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
                quest = { id = 340, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "For Chapter II: Bring pages 10, 11, 14 and 16 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter II.",
            id = "objective-340-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 340, state = "complete" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-340-chapter-ii" },
        },
        {
            priority = 710,
            text = "Turn in Chapter II to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-340-chapter-ii", "objective-340-quest-work" },
            id = "turnin-340-chapter-ii",
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
                quest = { id = 340, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter III from Barnil Stonepot.",
            id = "accept-341-chapter-iii",
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
                quest = { id = 341, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            text = "For Chapter III: Bring pages 18, 20, 21and 24 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.",
            id = "objective-341-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 341, state = "complete" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-341-chapter-iii" },
        },
        {
            priority = 740,
            text = "Turn in Chapter III to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-341-chapter-iii", "objective-341-quest-work" },
            id = "turnin-341-chapter-iii",
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
                quest = { id = 341, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Chapter IV from Barnil Stonepot.",
            id = "accept-342-chapter-iv",
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
                quest = { id = 342, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            text = "For Chapter IV: Bring pages 25, 26, and 27 of Nesingwary's The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter IV.",
            id = "objective-342-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 342, state = "complete" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-342-chapter-iv" },
        },
        {
            priority = 770,
            text = "Turn in Chapter IV to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-342-chapter-iv", "objective-342-quest-work" },
            id = "turnin-342-chapter-iv",
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
                quest = { id = 342, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "For The Green Hills of Stranglethorn: Collect the missing pages from The Green Hills of Stranglethorn manuscript. Once all four chapters are complete.",
            id = "objective-338-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 338, state = "complete" },
            },
            sourceStep = 69,
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
            priority = 790,
            text = "Turn in The Green Hills of Stranglethorn to Barnil Stonepot.",
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-338-the-green-hills-of-stranglethorn", "objective-338-quest-work" },
            id = "turnin-338-the-green-hills-of-stranglethorn",
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
                quest = { id = 338, state = "completed" },
            },
            sourceStep = 69,
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
