local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale & Swamp of Sorrows",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 40 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-warlock-accept-4489-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
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
            checkpointQuest = 4489,
            alternativeQuests = { 3631, 4487, 4488 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "woven-class-warlock-accept-4489-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4489-summon-felsteed",
        },
        {
            priority = 30,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4489-summon-felsteed" },
            id = "woven-class-warlock-turnin-4489-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4489-summon-felsteed",
        },
        {
            priority = 40,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "woven-class-warlock-accept-3631-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3631-summon-felsteed",
        },
        {
            priority = 50,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-3631-summon-felsteed" },
            id = "woven-class-warlock-turnin-3631-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3631-summon-felsteed",
        },
        {
            id = "level-before-woven-class-warlock-accept-4490-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 1, 2, 5, 7 },
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
            checkpointQuest = 4490,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            id = "woven-class-warlock-accept-4490-summon-felsteed",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4490-summon-felsteed",
        },
        {
            priority = 80,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4490-summon-felsteed" },
            id = "woven-class-warlock-turnin-4490-summon-felsteed",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4490-summon-felsteed",
        },
        {
            id = "level-before-turnin-1270-stinky-s-escape",
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
            checkpointQuest = 1270,
            priority = 90,
        },
        {
            priority = 100,
            route = {
                { y = 0.3762, mapID = 1413, label = "Mebok Mizzyrix", offMapText = "Travel to Mebok Mizzyrix in The Barrens.", x = 0.6237 },
            },
            text = "Turn in Stinky's Escape to Mebok Mizzyrix.",
            id = "turnin-1270-stinky-s-escape",
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
                quest = { id = 1270, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-577-some-assembly-required",
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
            checkpointQuest = 577,
            priority = 110,
        },
        {
            priority = 120,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Some Assembly Required from Drizzlik.",
            id = "accept-577-some-assembly-required",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 577, state = "activeOrCompleted" },
            },
            sourceStep = 2,
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
            priority = 130,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Venture Company Mining from Crank Fizzlebub.",
            id = "accept-600-venture-company-mining",
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
                quest = { id = 600, state = "activeOrCompleted" },
            },
            sourceStep = 3,
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
            id = "level-before-accept-209-skullsplitter-tusks",
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
            checkpointQuest = 209,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Skullsplitter Tusks from Kebok.",
            id = "accept-209-skullsplitter-tusks",
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
                quest = { id = 209, state = "activeOrCompleted" },
            },
            sourceStep = 4,
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
            priority = 160,
            route = {
                { y = 0.7701, mapID = 1434, label = "Fleet Master Seahorn", offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.", x = 0.2717 },
            },
            text = "Turn in Sunken Treasure to Fleet Master Seahorn.",
            id = "turnin-669-sunken-treasure",
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
                quest = { id = 669, state = "completed" },
            },
            sourceStep = 5,
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
            id = "level-before-accept-572-mok-thardin-s-enchantment",
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
            checkpointQuest = 572,
            priority = 170,
        },
        {
            priority = 180,
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin.",
            id = "accept-572-mok-thardin-s-enchantment",
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
                quest = { id = 572, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 570 },
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
                { y = 0.2772, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            text = "Accept Bloodscalp Clan Heads from Nimboya.",
            id = "accept-584-bloodscalp-clan-heads",
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
                quest = { id = 584, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 582 },
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
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            text = "Accept Split Bone Necklace from Kin'weelay.",
            id = "accept-598-split-bone-necklace",
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
                quest = { id = 598, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 596, 629 },
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
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            text = "Turn in The Troll Witchdoctor to Kin'weelay.",
            id = "turnin-1240-the-troll-witchdoctor",
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
                quest = { id = 1240, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1239 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Collect 1 Nezzliok's Head.",
            route = {
                { mapID = 1434, x = 0.2352, y = 0.0953, label = "Nezzliok's Head", offMapText = "Travel to Nezzliok's Head." },
            },
            dependsOn = { "accept-584-bloodscalp-clan-heads" },
            id = "objective-584-2-nezzliok-the-dire",
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
                questObjective = { id = 584, text = "Nezzliok the Dire", index = 2, count = 1 },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 582 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Collect 1 Gan'zulah's Head.",
            route = {
                { y = 0.0812, mapID = 1434, label = "Gan'zulah", offMapText = "Travel to Gan'zulah.", x = 0.2344 },
            },
            dependsOn = { "accept-584-bloodscalp-clan-heads" },
            id = "objective-584-1-gan-zulah",
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
                questObjective = { id = 584, text = "Gan'zulah", index = 1, count = 1 },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 582 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Turn in Bloodscalp Clan Heads.",
            route = {
                { y = 0.276, mapID = 1434, label = "Bloodscalp Clan Heads", offMapText = "Travel to Bloodscalp Clan Heads.", x = 0.3222 },
            },
            dependsOn = { "accept-584-bloodscalp-clan-heads", "objective-584-2-nezzliok-the-dire", "objective-584-1-gan-zulah" },
            id = "turnin-584-bloodscalp-clan-heads",
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
                quest = { id = 584, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 582 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.276, mapID = 1434, label = "Speaking with Nezzliok", offMapText = "Travel to Speaking with Nezzliok.", x = 0.3222 },
            },
            text = "Accept Speaking with Nezzliok.",
            id = "accept-585-speaking-with-nezzliok",
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
                quest = { id = 585, state = "activeOrCompleted" },
            },
            sourceStep = 11,
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
            priority = 260,
            text = "Collect 10 Jungle Stalker Feather.",
            route = {
                { y = 0.404, mapID = 1434, label = "Jungle Stalker", offMapText = "Travel to Jungle Stalker.", x = 0.334 },
            },
            dependsOn = { "accept-572-mok-thardin-s-enchantment" },
            id = "objective-572-1-jungle-stalker",
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
                questObjective = { id = 572, text = "Jungle Stalker", index = 1, count = 10 },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 570 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-196-1-jungle-stalker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Jungle Stalker.",
            complete = {
                questObjective = { id = 196, index = 1, text = "Jungle Stalker", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.33399999999999996, y = 0.40399999999999997, label = "Jungle Stalker", offMapText = "Travel to Jungle Stalker." },
            },
            sourceStep = 13,
            priority = 270,
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
            priority = 280,
            text = "Collect 10 Singing Blue Crystal.",
            route = {
                { y = 0.446, mapID = 1434, label = "Venture Co. Strip Miner", offMapText = "Travel to Venture Co. Strip Miner.", x = 0.414 },
            },
            dependsOn = { "accept-600-venture-company-mining" },
            id = "objective-600-1-venture-co-strip-miner",
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
                questObjective = { id = 600, text = "Venture Co. Strip Miner", index = 1, count = 10 },
            },
            sourceStep = 14,
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
            id = "objective-585-2-ziata-jai-trophy",
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
            text = "Collect 1 Ziata'jai Trophy.",
            complete = {
                questObjective = { id = 585, index = 2, text = "Ziata'jai Trophy", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.42210000000000003, y = 0.36119999999999997, label = "Ziata'jai Trophy", offMapText = "Travel to Ziata'jai Trophy." },
            },
            sourceStep = 15,
            priority = 290,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-585-speaking-with-nezzliok" },
        },
        {
            id = "objective-585-1-balia-mah-trophy",
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
            text = "Collect 1 Balia'mah Trophy.",
            complete = {
                questObjective = { id = 585, index = 1, text = "Balia'mah Trophy", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.46140000000000003, y = 0.3233, label = "Balia'mah Trophy", offMapText = "Travel to Balia'mah Trophy." },
            },
            sourceStep = 16,
            priority = 300,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-585-speaking-with-nezzliok" },
        },
        {
            id = "objective-585-3-zul-mamwe-trophy",
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
            text = "Collect 1 Zul'Mamwe Trophy.",
            complete = {
                questObjective = { id = 585, index = 3, text = "Zul'Mamwe Trophy", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.4765, y = 0.3954, label = "Zul'Mamwe Trophy", offMapText = "Travel to Zul'Mamwe Trophy." },
            },
            sourceStep = 17,
            priority = 310,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 584 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-585-speaking-with-nezzliok" },
        },
        {
            id = "objective-209-1-skullsplitter-tusk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                },
            },
            text = "Collect 18 Skullsplitter Tusk.",
            complete = {
                questObjective = { id = 209, index = 1, text = "Skullsplitter Tusk", count = 18 },
            },
            route = {
                { mapID = 1434, x = 0.42200000000000004, y = 0.36200000000000004, label = "Skullsplitter Tusk", offMapText = "Travel to Skullsplitter Tusk." },
            },
            sourceStep = 18,
            priority = 320,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 189 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-209-skullsplitter-tusks" },
        },
        {
            id = "objective-598-1-split-bone-necklace",
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
            text = "Collect 25 Split Bone Necklace.",
            complete = {
                questObjective = { id = 598, index = 1, text = "Split Bone Necklace", count = 25 },
            },
            route = {
                { mapID = 1434, x = 0.42200000000000004, y = 0.36200000000000004, label = "Split Bone Necklace", offMapText = "Travel to Split Bone Necklace." },
            },
            sourceStep = 18,
            priority = 330,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 596, 629 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-598-split-bone-necklace" },
        },
        {
            priority = 340,
            text = "Collect 5 Snapjaw Crocolisk Skin.",
            route = {
                { y = 0.306, mapID = 1434, label = "Snapjaw Crocolisk", offMapText = "Travel to Snapjaw Crocolisk.", x = 0.384 },
            },
            dependsOn = { "accept-577-some-assembly-required" },
            id = "objective-577-1-snapjaw-crocolisk",
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
                questObjective = { id = 577, text = "Snapjaw Crocolisk", index = 1, count = 5 },
            },
            sourceStep = 20,
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
            priority = 350,
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin.",
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            dependsOn = { "accept-572-mok-thardin-s-enchantment", "objective-572-1-jungle-stalker" },
            id = "turnin-572-mok-thardin-s-enchantment",
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
                quest = { id = 572, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 570 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Turn in Some Assembly Required to Drizzlik.",
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            dependsOn = { "accept-577-some-assembly-required", "objective-577-1-snapjaw-crocolisk" },
            id = "turnin-577-some-assembly-required",
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
                quest = { id = 577, state = "completed" },
            },
            sourceStep = 23,
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
            priority = 370,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Excelsior from Drizzlik.",
            id = "accept-628-excelsior",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 628, state = "activeOrCompleted" },
            },
            sourceStep = 23,
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
            priority = 380,
            text = "Turn in Venture Company Mining to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = { "accept-600-venture-company-mining", "objective-600-1-venture-co-strip-miner" },
            id = "turnin-600-venture-company-mining",
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
                quest = { id = 600, state = "completed" },
            },
            sourceStep = 24,
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
            priority = 390,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Dream Dust in the Swamp from Krazek.",
            id = "accept-1116-dream-dust-in-the-swamp",
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
                quest = { id = 1116, state = "activeOrCompleted" },
            },
            sourceStep = 26,
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
            priority = 400,
            text = "Turn in Skullsplitter Tusks to Kebok.",
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            dependsOn = { "accept-209-skullsplitter-tusks", "objective-209-1-skullsplitter-tusk" },
            id = "turnin-209-skullsplitter-tusks",
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
                quest = { id = 209, state = "completed" },
            },
            sourceStep = 27,
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
            priority = 410,
            text = "Turn in Split Bone Necklace to Kin'weelay.",
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            dependsOn = { "accept-598-split-bone-necklace", "objective-598-1-split-bone-necklace" },
            id = "turnin-598-split-bone-necklace",
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
                quest = { id = 598, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 596, 629 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Turn in Speaking with Nezzliok.",
            route = {
                { y = 0.276, mapID = 1434, label = "Speaking with Nezzliok", offMapText = "Travel to Speaking with Nezzliok.", x = 0.3222 },
            },
            dependsOn = {
                "accept-585-speaking-with-nezzliok",
                "objective-585-2-ziata-jai-trophy",
                "objective-585-1-balia-mah-trophy",
                "objective-585-3-zul-mamwe-trophy",
            },
            id = "turnin-585-speaking-with-nezzliok",
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
                quest = { id = 585, state = "completed" },
            },
            sourceStep = 29,
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
            priority = 430,
            route = {
                { y = 0.276, mapID = 1434, label = "Marg Speaks", offMapText = "Travel to Marg Speaks.", x = 0.3222 },
            },
            text = "Accept Marg Speaks.",
            id = "accept-1261-marg-speaks",
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
                quest = { id = 1261, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1240 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Turn in Raptor Mastery to Hemet Nesingwary.",
            id = "turnin-196-raptor-mastery",
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
                quest = { id = 196, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-196-1-jungle-stalker" },
        },
        {
            priority = 450,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary.",
            id = "accept-197-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 197, state = "activeOrCompleted" },
            },
            sourceStep = 30,
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
            id = "level-before-accept-1372-nothing-but-the-truth",
            kind = "note",
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 37 },
            },
            requiredLevel = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1372,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.3563, mapID = 1431, label = "Deathstalker Zraedus", offMapText = "Travel to Deathstalker Zraedus in Duskwood.", x = 0.8781 },
            },
            text = "Accept Nothing But The Truth from Deathstalker Zraedus.",
            id = "accept-1372-nothing-but-the-truth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1372, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in Nothing But The Truth to Apothecary Faustin.",
            route = {
                { y = 0.3525, mapID = 1431, label = "Apothecary Faustin", offMapText = "Travel to Apothecary Faustin in Duskwood.", x = 0.8746 },
            },
            dependsOn = { "accept-1372-nothing-but-the-truth" },
            id = "turnin-1372-nothing-but-the-truth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1372, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Collect 10 Speck of Dream Dust.",
            route = {
                { y = 0.574, mapID = 1435, label = "Adolescent Whelp", offMapText = "Travel to Adolescent Whelp.", x = 0.124 },
            },
            dependsOn = { "accept-1116-dream-dust-in-the-swamp" },
            id = "objective-1116-1-adolescent-whelp",
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
                questObjective = { id = 1116, text = "Adolescent Whelp", index = 1, count = 10 },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.572, mapID = 1435, label = "Dar", offMapText = "Travel to Dar in Swamp of Sorrows.", x = 0.447 },
            },
            text = "Accept Lack of Surplus from Dar.",
            id = "accept-698-lack-of-surplus",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 698, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            route = {
                { y = 0.552, mapID = 1435, label = "Helgrum the Swift", offMapText = "Travel to Helgrum the Swift in Swamp of Sorrows.", x = 0.4774 },
            },
            text = "Turn in Report to Helgrum to Helgrum the Swift.",
            id = "turnin-1420-report-to-helgrum",
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
                quest = { id = 1420, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1424-pool-of-tears",
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
            checkpointQuest = 1424,
            priority = 520,
        },
        {
            priority = 530,
            route = {
                { y = 0.548, mapID = 1435, label = "Fel'zerul", offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793 },
            },
            text = "Accept Pool of Tears from Fel'zerul.",
            id = "accept-1424-pool-of-tears",
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
                quest = { id = 1424, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1392-noboru-the-cudgel",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot Noboru's Cudgel from Noboru the Cudgel. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Noboru's Cudgel", minCount = 1 },
                    },
                    {
                        quest = { id = 1392, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 540,
        },
        {
            priority = 550,
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            id = "accept-1392-noboru-the-cudgel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1392, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Noboru the Cudgel to Magtoor.",
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            dependsOn = { "accept-1392-noboru-the-cudgel" },
            id = "turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1392, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            text = "Accept Draenethyst Crystals from Magtoor.",
            id = "accept-1389-draenethyst-crystals",
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
                quest = { id = 1389, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            route = {
                { y = 0.2325, mapID = 1435, label = "Ongeku", offMapText = "Travel to Ongeku.", x = 0.6131 },
            },
            text = "Collect 1 Draenethyst Shard.",
            id = "objective-1373-1-ongeku",
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
                questObjective = { id = 1373, text = "Ongeku", index = 1, count = 1 },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            route = {
                { y = 0.1823, mapID = 1435, label = "Galen Goodward", offMapText = "Travel to Galen Goodward in Swamp of Sorrows.", x = 0.6541 },
            },
            text = "Accept Galen's Escape from Galen Goodward.",
            id = "accept-1393-galen-s-escape",
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
                quest = { id = 1393, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1389-1-draenethyst-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 6 Draenethyst Crystal.",
            complete = {
                questObjective = { id = 1389, index = 1, text = "Draenethyst Crystal", count = 6 },
            },
            route = {
                { mapID = 1435, x = 0.55, y = 0.302, label = "Draenethyst Crystal", offMapText = "Travel to Draenethyst Crystal." },
            },
            sourceStep = 43,
            priority = 600,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1389-draenethyst-crystals" },
        },
        {
            priority = 610,
            text = "Turn in Galen's Escape.",
            route = {
                { y = 0.3976, mapID = 1435, label = "Galen's Escape", offMapText = "Travel to Galen's Escape.", x = 0.4781 },
            },
            dependsOn = { "accept-1393-galen-s-escape" },
            id = "turnin-1393-galen-s-escape",
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
                quest = { id = 1393, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-698-1-unprepared-sawtooth-flank",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Unprepared Sawtooth Flank.",
            complete = {
                questObjective = { id = 698, index = 1, text = "Unprepared Sawtooth Flank", count = 8 },
            },
            route = {
                { mapID = 1435, x = 0.46399999999999997, y = 0.41200000000000003, label = "Unprepared Sawtooth Flank", offMapText = "Travel to Unprepared Sawtooth Flank." },
            },
            sourceStep = 45,
            priority = 620,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-698-lack-of-surplus" },
        },
        {
            priority = 630,
            text = "Collect 10 Atal'ai Artifact.",
            route = {
                { y = 0.472, mapID = 1435, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.659 },
            },
            dependsOn = { "accept-1424-pool-of-tears" },
            id = "objective-1424-1-elixir-of-water-breathing",
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
            complete = {
                questObjective = { id = 1424, text = "Elixir of Water Breathing", index = 1, count = 10 },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Turn in Lack of Surplus to Tok'Kar.",
            route = {
                { y = 0.8097, mapID = 1435, label = "Tok'Kar", offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132 },
            },
            dependsOn = { "accept-698-lack-of-surplus", "objective-698-1-unprepared-sawtooth-flank" },
            id = "turnin-698-lack-of-surplus",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 698, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            text = "Turn in Pool of Tears to Fel'zerul.",
            route = {
                { y = 0.5479, mapID = 1435, label = "Fel'zerul", offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793 },
            },
            dependsOn = { "accept-1424-pool-of-tears", "objective-1424-1-elixir-of-water-breathing" },
            id = "turnin-1424-pool-of-tears",
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
                quest = { id = 1424, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Turn in Draenethyst Crystals to Magtoor.",
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            dependsOn = { "accept-1389-draenethyst-crystals", "objective-1389-1-draenethyst-crystal" },
            id = "turnin-1389-draenethyst-crystals",
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
                quest = { id = 1389, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            text = "Turn in Dream Dust in the Swamp to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "accept-1116-dream-dust-in-the-swamp", "objective-1116-1-adolescent-whelp" },
            id = "turnin-1116-dream-dust-in-the-swamp",
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
                quest = { id = 1116, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Rumors for Kravel from Krazek.",
            id = "accept-1117-rumors-for-kravel",
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
                quest = { id = 1117, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1116 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            id = "accept-1183-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1183, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2872-stoley-s-debt",
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
            checkpointQuest = 2872,
            priority = 700,
        },
        {
            priority = 710,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley.",
            id = "accept-2872-stoley-s-debt",
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
                quest = { id = 2872, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
