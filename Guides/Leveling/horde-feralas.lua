local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Feralas",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-feralas",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 43 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-2987-gordunni-cobalt",
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
            checkpointQuest = 2987,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.443, mapID = 1444, label = "Orwin Gizzmick", offMapText = "Travel to Orwin Gizzmick in Feralas.", x = 0.757 },
            },
            text = "Accept Gordunni Cobalt from Orwin Gizzmick.",
            id = "accept-2987-gordunni-cobalt",
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
                quest = { id = 2987, state = "activeOrCompleted" },
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
                { y = 0.4274, mapID = 1444, label = "Krueg Skullsplitter", offMapText = "Travel to Krueg Skullsplitter in Feralas.", x = 0.7594 },
            },
            text = "Accept A New Cloak's Sheen from Krueg Skullsplitter.",
            id = "accept-2973-a-new-cloak-s-sheen",
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
                quest = { id = 2973, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2862-war-on-the-woodpaw",
            kind = "note",
            text = "Reach level 39 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 39 },
            },
            requiredLevel = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2862,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept War on the Woodpaw from Hadoken Swiftstrider.",
            id = "accept-2862-war-on-the-woodpaw",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2862, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2822-the-mark-of-quality",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 2822,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.4291, mapID = 1444, label = "Jangdor Swiftstrider", offMapText = "Travel to Jangdor Swiftstrider in Feralas.", x = 0.7443 },
            },
            text = "Accept The Mark of Quality from Jangdor Swiftstrider.",
            id = "accept-2822-the-mark-of-quality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2822, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            text = "Turn in A Threat in Feralas to Rok Orhan.",
            id = "turnin-2981-a-threat-in-feralas",
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
                quest = { id = 2981, state = "completed" },
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
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            text = "Accept The Ogres of Feralas from Rok Orhan.",
            id = "accept-2975-the-ogres-of-feralas",
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
                quest = { id = 2975, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Collect 10 Woodpaw Gnoll Mane.",
            route = {
                { y = 0.398, mapID = 1444, label = "Woodpaw Mongrel", offMapText = "Travel to Woodpaw Mongrel.", x = 0.73 },
            },
            dependsOn = { "accept-2862-war-on-the-woodpaw" },
            id = "objective-2862-1-woodpaw-mongrel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2862, text = "Woodpaw Mongrel", index = 1, count = 10 },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.3515, mapID = 1444, label = "Gordunni Scroll", offMapText = "Travel to Gordunni Scroll.", x = 0.75 },
            },
            text = "Use Gordunni Scroll. Loot the starter item here, then use it to accept the quest.",
            id = "objective-2978-1-gordunni-scroll",
            kind = "note",
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
                quest = { id = 2978, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-2978-the-gordunni-scroll",
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
            text = "Loot Gordunni Scroll from Gordunni Scroll. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Gordunni Scroll", minCount = 1 },
                    },
                    {
                        quest = { id = 2978, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 120,
        },
        {
            priority = 130,
            text = "Use the Gordunni Scroll to accept The Gordunni Scroll.",
            id = "accept-2978-the-gordunni-scroll",
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
                quest = { id = 2978, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2987-1-gordunni-cobalt",
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
            text = "Use Orwin's Shovel beside glowing blue circles at Gordunni Outpost. Open the dirt mounds that appear and collect 12 Gordunni Cobalt.",
            complete = {
                questObjective = { id = 2987, index = 1, count = 12 },
            },
            route = {
                { mapID = 1444, x = 0.767, y = 0.33799999999999997, label = "Gordunni Cobalt", offMapText = "Travel to Gordunni Cobalt." },
            },
            sourceStep = 9,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2987-gordunni-cobalt" },
        },
        {
            id = "objective-2975-3-gordunni-brute",
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
            text = "Kill 5 Gordunni Brute.",
            complete = {
                questObjective = { id = 2975, index = 3, text = "Gordunni Brute", count = 5 },
            },
            route = {
                { mapID = 1444, x = 0.767, y = 0.33799999999999997, label = "Gordunni Brute", offMapText = "Travel to Gordunni Brute." },
            },
            sourceStep = 10,
            priority = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2975-the-ogres-of-feralas" },
        },
        {
            id = "objective-2975-1-gordunni-ogre",
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
            text = "Kill 10 Gordunni Ogre.",
            complete = {
                questObjective = { id = 2975, index = 1, text = "Gordunni Ogre", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.767, y = 0.33799999999999997, label = "Gordunni Ogre", offMapText = "Travel to Gordunni Ogre." },
            },
            sourceStep = 10,
            priority = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2975-the-ogres-of-feralas" },
        },
        {
            id = "objective-2975-2-gordunni-ogre-mage",
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
            text = "Kill 10 Gordunni Ogre Mage.",
            complete = {
                questObjective = { id = 2975, index = 2, text = "Gordunni Ogre Mage", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.767, y = 0.33799999999999997, label = "Gordunni Ogre Mage", offMapText = "Travel to Gordunni Ogre Mage." },
            },
            sourceStep = 10,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2975-the-ogres-of-feralas" },
        },
        {
            priority = 180,
            text = "Turn in War on the Woodpaw to Hadoken Swiftstrider.",
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            dependsOn = { "accept-2862-war-on-the-woodpaw", "objective-2862-1-woodpaw-mongrel" },
            id = "turnin-2862-war-on-the-woodpaw",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2862, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept Alpha Strike from Hadoken Swiftstrider.",
            id = "accept-2863-alpha-strike",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2863, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2862 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in Gordunni Cobalt to Orwin Gizzmick.",
            route = {
                { y = 0.4431, mapID = 1444, label = "Orwin Gizzmick", offMapText = "Travel to Orwin Gizzmick in Feralas.", x = 0.757 },
            },
            dependsOn = { "accept-2987-gordunni-cobalt", "objective-2987-1-gordunni-cobalt" },
            id = "turnin-2987-gordunni-cobalt",
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
                quest = { id = 2987, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in The Ogres of Feralas to Rok Orhan.",
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            dependsOn = {
                "accept-2975-the-ogres-of-feralas",
                "objective-2975-3-gordunni-brute",
                "objective-2975-1-gordunni-ogre",
                "objective-2975-2-gordunni-ogre-mage",
            },
            id = "turnin-2975-the-ogres-of-feralas",
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
                quest = { id = 2975, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            text = "Accept The Ogres of Feralas from Rok Orhan.",
            id = "accept-2980-the-ogres-of-feralas",
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
                quest = { id = 2980, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2975 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Turn in The Gordunni Scroll to Rok Orhan.",
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            dependsOn = { "accept-2978-the-gordunni-scroll" },
            id = "turnin-2978-the-gordunni-scroll",
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
                quest = { id = 2978, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            text = "Accept Dark Ceremony from Rok Orhan.",
            id = "accept-2979-dark-ceremony",
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
                quest = { id = 2979, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Collect 10 Iridescent Sprite Darter Wing.",
            route = {
                { y = 0.468, mapID = 1444, label = "Sprite Darter", offMapText = "Travel to Sprite Darter.", x = 0.694 },
            },
            dependsOn = { "accept-2973-a-new-cloak-s-sheen" },
            id = "objective-2973-1-sprite-darter",
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
                questObjective = { id = 2973, text = "Sprite Darter", index = 1, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Kill 5 Woodpaw Alpha.",
            route = {
                { y = 0.542, mapID = 1444, label = "Woodpaw Alpha", offMapText = "Travel to Woodpaw Alpha.", x = 0.686 },
            },
            dependsOn = { "accept-2863-alpha-strike" },
            id = "objective-2863-1-woodpaw-alpha",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2863, text = "Woodpaw Alpha", index = 1, count = 5 },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2862 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Turn in Alpha Strike to Hadoken Swiftstrider.",
            route = {
                { y = 0.4246, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            dependsOn = { "accept-2863-alpha-strike", "objective-2863-1-woodpaw-alpha" },
            id = "turnin-2863-alpha-strike",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2863, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2862 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.4246, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept Woodpaw Investigation from Hadoken Swiftstrider.",
            id = "accept-2902-woodpaw-investigation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2902, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in A New Cloak's Sheen to Krueg Skullsplitter.",
            route = {
                { y = 0.4274, mapID = 1444, label = "Krueg Skullsplitter", offMapText = "Travel to Krueg Skullsplitter in Feralas.", x = 0.7594 },
            },
            dependsOn = { "accept-2973-a-new-cloak-s-sheen", "objective-2973-1-sprite-darter" },
            id = "turnin-2973-a-new-cloak-s-sheen",
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
                quest = { id = 2973, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.4274, mapID = 1444, label = "Krueg Skullsplitter", offMapText = "Travel to Krueg Skullsplitter in Feralas.", x = 0.7594 },
            },
            text = "Accept A Grim Discovery from Krueg Skullsplitter.",
            id = "accept-2974-a-grim-discovery",
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
                quest = { id = 2974, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Turn in Woodpaw Investigation.",
            route = {
                { y = 0.5592, mapID = 1444, label = "Woodpaw Investigation", offMapText = "Travel to Woodpaw Investigation.", x = 0.7163 },
            },
            dependsOn = { "accept-2902-woodpaw-investigation" },
            id = "turnin-2902-woodpaw-investigation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2902, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2863 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { y = 0.5592, mapID = 1444, label = "The Battle Plans", offMapText = "Travel to The Battle Plans.", x = 0.7163 },
            },
            text = "Accept The Battle Plans.",
            id = "accept-2903-the-battle-plans",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2903, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Collect 20 Grimtotem Horn.",
            route = {
                { y = 0.464, mapID = 1444, label = "Grimtotem Shaman", offMapText = "Travel to Grimtotem Shaman.", x = 0.674 },
            },
            dependsOn = { "accept-2974-a-grim-discovery" },
            id = "objective-2974-1-grimtotem-shaman",
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
                questObjective = { id = 2974, text = "Grimtotem Shaman", index = 1, count = 20 },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Turn in The Battle Plans to Hadoken Swiftstrider.",
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            dependsOn = { "accept-2903-the-battle-plans" },
            id = "turnin-2903-the-battle-plans",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2903, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2902 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept Zukk'ash Infestation from Hadoken Swiftstrider.",
            id = "accept-7730-zukk-ash-infestation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7730, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
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
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept Stinglasher from Hadoken Swiftstrider.",
            id = "accept-7731-stinglasher",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7731, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "Turn in A Grim Discovery to Krueg Skullsplitter.",
            route = {
                { y = 0.4274, mapID = 1444, label = "Krueg Skullsplitter", offMapText = "Travel to Krueg Skullsplitter in Feralas.", x = 0.7594 },
            },
            dependsOn = { "accept-2974-a-grim-discovery", "objective-2974-1-grimtotem-shaman" },
            id = "turnin-2974-a-grim-discovery",
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
                quest = { id = 2974, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            route = {
                { y = 0.4274, mapID = 1444, label = "Krueg Skullsplitter", offMapText = "Travel to Krueg Skullsplitter in Feralas.", x = 0.7594 },
            },
            text = "Accept A Grim Discovery from Krueg Skullsplitter.",
            id = "accept-2976-a-grim-discovery",
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
                quest = { id = 2976, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2974 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Collect 1 Stinglasher's Glands.",
            route = {
                { y = 0.616, mapID = 1444, label = "Stinglasher", offMapText = "Travel to Stinglasher.", x = 0.756 },
            },
            dependsOn = { "accept-7731-stinglasher" },
            id = "objective-7731-1-stinglasher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7731, text = "Stinglasher", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-7730-1-zukk-ash-carapace",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 20 Zukk'ash Carapace.",
            complete = {
                questObjective = { id = 7730, index = 1, text = "Zukk'ash Carapace", count = 20 },
            },
            route = {
                { mapID = 1444, x = 0.754, y = 0.612, label = "Zukk'ash Carapace", offMapText = "Travel to Zukk'ash Carapace." },
            },
            sourceStep = 29,
            priority = 400,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7730-zukk-ash-infestation" },
        },
        {
            priority = 410,
            text = "Kill 5 Gordunni Mauler.",
            route = {
                { y = 0.544, mapID = 1444, label = "Gordunni Mauler", offMapText = "Travel to Gordunni Mauler.", x = 0.618 },
            },
            dependsOn = { "accept-2980-the-ogres-of-feralas" },
            id = "objective-2980-3-gordunni-mauler",
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
                questObjective = { id = 2980, text = "Gordunni Mauler", index = 3, count = 5 },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2975 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.6445, mapID = 1444, label = "Frayfeather Hippogryph", offMapText = "Travel to Frayfeather Hippogryph.", x = 0.5699 },
            },
            text = "Kill Frayfeather Hippogryph. Keep 10 Long Elegant Feather for the later quest pickup.",
            id = "collect-before-pickup-objective-7842-1-frayfeather-hippogryph",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                item = { name = "Long Elegant Feather", minCount = 10 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 7842,
        },
        {
            priority = 430,
            text = "Collect 1 Gordunni Orb.",
            route = {
                { y = 0.676, mapID = 1444, label = "Gordunni Mage-Lord", offMapText = "Travel to Gordunni Mage-Lord.", x = 0.584 },
            },
            dependsOn = { "accept-2979-dark-ceremony" },
            id = "objective-2979-1-gordunni-mage-lord",
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
                questObjective = { id = 2979, text = "Gordunni Mage-Lord", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-2980-1-gordunni-shaman",
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
            text = "Kill 10 Gordunni Shaman.",
            complete = {
                questObjective = { id = 2980, index = 1, text = "Gordunni Shaman", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.604, y = 0.68, label = "Gordunni Shaman", offMapText = "Travel to Gordunni Shaman." },
            },
            sourceStep = 36,
            priority = 440,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2975 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2980-the-ogres-of-feralas" },
        },
        {
            id = "objective-2980-2-gordunni-warlock",
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
            text = "Kill 10 Gordunni Warlock.",
            complete = {
                questObjective = { id = 2980, index = 2, text = "Gordunni Warlock", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.5820000000000001, y = 0.664, label = "Gordunni Warlock", offMapText = "Travel to Gordunni Warlock." },
            },
            sourceStep = 37,
            priority = 450,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2975 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2980-the-ogres-of-feralas" },
        },
        {
            priority = 460,
            text = "Collect 10 Thick Yeti Hide.",
            route = {
                { y = 0.574, mapID = 1444, label = "Feral Scar Yeti", offMapText = "Travel to Feral Scar Yeti.", x = 0.554 },
            },
            dependsOn = { "accept-2822-the-mark-of-quality" },
            id = "objective-2822-1-feral-scar-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2822, text = "Feral Scar Yeti", index = 1, count = 10 },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-2766-find-oox-22-fe",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot OOX-22/FE Distress Beacon from Gordunni Ogre, Gordunni Brute, Gordunni Mauler, Gordunni Shaman, Gordunni Ogre Mage, Gordunni Mage-Lord, Gordunni Warlock, Zukk'ash Wasp, Zukk'ash Worker, Woodpaw Mongrel, Woodpaw Alpha, Groddoc Ape, Grizzled Ironfur Bear, Sprite Darter, Feral Scar Yeti, Ferocious Rage Scar, Frayfeather Hippogryph, Frayfeather Patriarch, Vale Screecher, Hatecrest Myrmidon, Hatecrest Screamer, Book: The Powers Below, Cliff Giant, Northspring Harpy, Northspring Roguefeather, Northspring Slayer, Northspring Windcaller, Dartol's Rod of Transformation, Wandering Forest Walker, Grimtotem Raider, Grimtotem Naturalist, Grimtotem Shaman, Edana Hatetalon, Lord Shalzaru, Zapped Wave Strider, Stinglasher. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "OOX-22/FE Distress Beacon", minCount = 1 },
                    },
                    {
                        quest = { id = 2766, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 470,
        },
        {
            id = "level-before-accept-2766-find-oox-22-fe",
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
            checkpointQuest = 2766,
            priority = 480,
        },
        {
            priority = 490,
            text = "Use the OOX-22/FE Distress Beacon to accept Find OOX-22/FE!.",
            id = "accept-2766-find-oox-22-fe",
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
                quest = { id = 2766, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Find OOX-22/FE! to Homing Robot OOX-22/FE.",
            route = {
                { mapID = 1444, x = 0.5335, y = 0.557, label = "Homing Robot OOX-22/FE", offMapText = "Travel to Homing Robot OOX-22/FE in Feralas." },
            },
            dependsOn = { "accept-2766-find-oox-22-fe" },
            id = "turnin-2766-find-oox-22-fe",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2766, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept A Strange Request from Witch Doctor Uzer'i.",
            id = "accept-3121-a-strange-request",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3121, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in The Mark of Quality to Jangdor Swiftstrider.",
            route = {
                { y = 0.4291, mapID = 1444, label = "Jangdor Swiftstrider", offMapText = "Travel to Jangdor Swiftstrider in Feralas.", x = 0.7443 },
            },
            dependsOn = { "accept-2822-the-mark-of-quality", "objective-2822-1-feral-scar-yeti" },
            id = "turnin-2822-the-mark-of-quality",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2822, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Turn in Zukk'ash Infestation to Hadoken Swiftstrider.",
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            dependsOn = { "accept-7730-zukk-ash-infestation", "objective-7730-1-zukk-ash-carapace" },
            id = "turnin-7730-zukk-ash-infestation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7730, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Turn in Stinglasher to Hadoken Swiftstrider.",
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            dependsOn = { "accept-7731-stinglasher", "objective-7731-1-stinglasher" },
            id = "turnin-7731-stinglasher",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7731, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2903 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.4247, mapID = 1444, label = "Hadoken Swiftstrider", offMapText = "Travel to Hadoken Swiftstrider in Feralas.", x = 0.7491 },
            },
            text = "Accept Zukk'ash Report from Hadoken Swiftstrider.",
            id = "accept-7732-zukk-ash-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7732, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 7730, 7731 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in The Ogres of Feralas to Rok Orhan.",
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            dependsOn = {
                "accept-2980-the-ogres-of-feralas",
                "objective-2980-3-gordunni-mauler",
                "objective-2980-1-gordunni-shaman",
                "objective-2980-2-gordunni-warlock",
            },
            id = "turnin-2980-the-ogres-of-feralas",
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
                quest = { id = 2980, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2975 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in Dark Ceremony to Rok Orhan.",
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            dependsOn = { "accept-2979-dark-ceremony", "objective-2979-1-gordunni-mage-lord" },
            id = "turnin-2979-dark-ceremony",
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
                quest = { id = 2979, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.436, mapID = 1444, label = "Rok Orhan", offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756 },
            },
            text = "Accept The Gordunni Orb from Rok Orhan.",
            id = "accept-3002-the-gordunni-orb",
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
                quest = { id = 3002, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "For Deadmire: Bring Deadmire's Tooth to Melor in Thunder Bluff.",
            id = "objective-1205-quest-work",
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
            complete = {
                quest = { id = 1205, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 600,
            route = {
                { y = 0.8091, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6154 },
            },
            text = "Turn in Deadmire to Melor Stonehoof.",
            id = "turnin-1205-deadmire",
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
                quest = { id = 1205, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1205-quest-work" },
        },
        {
            priority = 610,
            text = "Turn in The Gordunni Orb to Uthel'nay.",
            route = {
                { y = 0.8624, mapID = 1454, label = "Uthel'nay", offMapText = "Travel to Uthel'nay in Orgrimmar.", x = 0.3916 },
            },
            dependsOn = { "accept-3002-the-gordunni-orb" },
            id = "turnin-3002-the-gordunni-orb",
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
                quest = { id = 3002, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in A Strange Request to Neeru Fireblade.",
            route = {
                { y = 0.5059, mapID = 1454, label = "Neeru Fireblade", offMapText = "Travel to Neeru Fireblade in Orgrimmar.", x = 0.4949 },
            },
            dependsOn = { "accept-3121-a-strange-request" },
            id = "turnin-3121-a-strange-request",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3121, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.5059, mapID = 1454, label = "Neeru Fireblade", offMapText = "Travel to Neeru Fireblade in Orgrimmar.", x = 0.4949 },
            },
            text = "Accept Return to Witch Doctor Uzer'i from Neeru Fireblade.",
            id = "accept-3122-return-to-witch-doctor-uzer-i",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3122, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "Turn in A Grim Discovery to Belgrom Rockmaul.",
            route = {
                { y = 0.3424, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            dependsOn = { "accept-2976-a-grim-discovery" },
            id = "turnin-2976-a-grim-discovery",
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
                quest = { id = 2976, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2974 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            text = "Turn in Zukk'ash Report to Zilzibin Drumlore.",
            route = {
                { mapID = 1454, x = 0.5628, y = 0.4667, label = "Zilzibin Drumlore", offMapText = "Travel to Zilzibin Drumlore in Orgrimmar." },
            },
            dependsOn = { "accept-7732-zukk-ash-report" },
            id = "turnin-7732-zukk-ash-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7732, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 7730, 7731 },
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
