local _, ns = ...

-- Horde Era leveling route for Dustwallow Marsh, levels 43-44.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUSTWALLOW = 1445,
    THUNDER_BLUFF = 1456,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
end

local function Point(mapID, x, y, label, offMapText)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
    }
end

ns:RegisterGuide({
    id = "leveling-era-43-44-dustwallow-marsh",
    title = "43-44 Dustwallow Marsh (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 43 } },
        },
    },
    goals = {
        {
            id = "accept-1261-marg-speaks",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { quest = { id = 1240, state = "completed" } },
                },
            },
            text = "Accept Marg Speaks in Grom'gol Base Camp.",
            complete = QuestState(1261, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3220, 0.2770, "Grom'gol Base Camp",
                    "Travel to Grom'gol Base Camp."),
            },
        },
        {
            id = "travel-1205-hunter-rise",
            kind = "travel",
            priority = 20,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1205, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Hunter Rise in Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6141, 0.8057, "Hunter Rise",
                    "Travel to Hunter Rise."),
            },
        },
        {
            id = "accept-1205-deadmire",
            kind = "accept",
            priority = 30,
            text = "Accept Deadmire from Melor Stonehoof in Hunter Rise.",
            complete = QuestState(1205, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6141, 0.8057, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
        {
            id = "travel-1268-dustwallow-marsh",
            kind = "travel",
            priority = 40,
            text = "Run east to Dustwallow Marsh.",
            route = {
                Point(MAP.DUSTWALLOW, 0.2970, 0.4770, "Dustwallow Marsh",
                    "Travel to Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1268-suspicious-hoofprints",
            kind = "accept",
            priority = 50,
            text = "Accept Suspicious Hoofprints in Shady Rest Inn.",
            complete = QuestState(1268, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2970, 0.4770, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1269-lieutenant-paval-reethe",
            kind = "accept",
            priority = 60,
            text = "Accept Lieutenant Paval Reethe in Shady Rest Inn.",
            complete = QuestState(1269, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2980, 0.4820, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1251-the-black-shield",
            kind = "accept",
            priority = 70,
            text = "Accept The Black Shield in Shady Rest Inn.",
            complete = QuestState(1251, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2980, 0.4810, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "travel-1321-brackenwall-village",
            kind = "travel",
            priority = 80,
            text = "Travel to Brackenwall Village.",
            route = {
                Point(MAP.DUSTWALLOW, 0.3349, 0.3876, "Continue toward Brackenwall Village",
                    "Continue toward Brackenwall Village."),
                Point(MAP.DUSTWALLOW, 0.3439, 0.3068, "Continue toward Brackenwall Village",
                    "Continue toward Brackenwall Village."),
                Point(MAP.DUSTWALLOW, 0.3500, 0.2900, "Brackenwall Village",
                    "Travel to Brackenwall Village."),
            },
        },
        {
            id = "turnin-1251-the-black-shield",
            kind = "turnin",
            priority = 90,
            text = "Turn in The Black Shield to Krog in Brackenwall Village.",
            dependsOn = { "accept-1251-the-black-shield" },
            complete = QuestState(1251, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1321-the-black-shield",
            kind = "accept",
            priority = 100,
            text = "Accept The Black Shield from Krog in Brackenwall Village.",
            complete = QuestState(1321, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1268-suspicious-hoofprints",
            kind = "turnin",
            priority = 110,
            text = "Turn in Suspicious Hoofprints to Krog in Brackenwall Village.",
            dependsOn = { "accept-1268-suspicious-hoofprints" },
            complete = QuestState(1268, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1269-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 120,
            text = "Turn in Lieutenant Paval Reethe to Krog in Brackenwall Village.",
            dependsOn = { "accept-1269-lieutenant-paval-reethe" },
            complete = QuestState(1269, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3182, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1273-questioning-reethe",
            kind = "accept",
            priority = 130,
            text = "Accept Questioning Reethe from Ogron in Dustwallow Marsh.",
            complete = QuestState(1273, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4098, 0.3666, "Ogron",
                    "Travel to Ogron."),
            },
        },
        {
            id = "turnin-1321-the-black-shield",
            kind = "turnin",
            priority = 140,
            text = "Turn in The Black Shield to Do'gol in Brackenwall Village.",
            dependsOn = { "accept-1321-the-black-shield" },
            complete = QuestState(1321, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3654, 0.3086, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "accept-1169-identifying-the-brood",
            kind = "accept",
            priority = 150,
            text = "Accept Identifying the Brood from Draz'Zilb in Brackenwall Village.",
            complete = QuestState(1169, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3713, 0.3308, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "travel-1201-dustwallow-marsh",
            kind = "travel",
            priority = 160,
            text = "Travel to Brackenwall Village.",
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Brackenwall Village",
                    "Travel to Brackenwall Village."),
            },
        },
        {
            id = "accept-1322-the-black-shield",
            kind = "accept",
            priority = 170,
            text = "Accept The Black Shield from Do'gol in Brackenwall Village.",
            complete = QuestState(1322, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3645, 0.3085, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "accept-1177-hungry",
            kind = "accept",
            priority = 180,
            text = "Accept Hungry! from Mudcrush Durtfeet in Dustwallow Marsh.",
            complete = QuestState(1177, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3508, 0.3829, "Mudcrush Durtfeet",
                    "Travel to Mudcrush Durtfeet."),
            },
        },
        {
            id = "objective-1322-the-black-shield",
            kind = "objective",
            priority = 190,
            text = "Kill Darkfang Spider for 6 Acidic Venom Sac in Bluefen.",
            dependsOn = { "accept-1322-the-black-shield" },
            complete = QuestState(1322, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4208, 0.1158, "Darkfang Spider",
                    "Travel to Darkfang Spider."),
            },
        },
        {
            id = "travel-1177-dreadmurk-shore",
            kind = "travel",
            priority = 200,
            text = "Travel to Dreadmurk Shore.",
            route = {
                Point(MAP.DUSTWALLOW, 0.5746, 0.1647, "Dreadmurk Shore",
                    "Travel to Dreadmurk Shore."),
            },
        },
        {
            id = "objective-1177-hungry",
            kind = "objective",
            priority = 210,
            text = "Kill the Murlocs and collect 8 Mirefin Head in Dreadmurk Shore.",
            dependsOn = { "accept-1177-hungry" },
            complete = QuestState(1177, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5746, 0.1647, "Mirefin Warrior",
                    "Travel to Mirefin Warrior."),
            },
        },
        {
            id = "turnin-1322-the-black-shield",
            kind = "turnin",
            priority = 220,
            text = "Turn in The Black Shield to Do'gol in Brackenwall Village.",
            dependsOn = { "objective-1322-the-black-shield" },
            complete = QuestState(1322, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3656, 0.3088, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "accept-1323-the-black-shield",
            kind = "accept",
            priority = 230,
            text = "Accept The Black Shield from Do'gol in Brackenwall Village.",
            complete = QuestState(1323, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3656, 0.3088, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "turnin-1323-the-black-shield",
            kind = "turnin",
            priority = 240,
            text = "Turn in The Black Shield to Krog in Brackenwall Village.",
            dependsOn = { "accept-1323-the-black-shield" },
            complete = QuestState(1323, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3178, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1276-the-black-shield",
            kind = "accept",
            priority = 250,
            text = "Accept The Black Shield from Krog in Brackenwall Village.",
            complete = QuestState(1276, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3178, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "objective-1273-questioning-reethe",
            kind = "objective",
            priority = 260,
            text = "Question and defend Paval Reethe in Dustwallow Marsh.",
            dependsOn = { "accept-1273-questioning-reethe" },
            complete = QuestState(1273, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4263, 0.3784, "Paval Reethe",
                    "Travel to Paval Reethe."),
            },
        },
        {
            id = "turnin-1273-questioning-reethe",
            kind = "turnin",
            priority = 270,
            text = "Turn in Questioning Reethe to Krog in Dustwallow Marsh.",
            dependsOn = { "objective-1273-questioning-reethe" },
            complete = QuestState(1273, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3640, 0.3180, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "travel-1205-the-quagmire",
            kind = "travel",
            priority = 280,
            text = "Travel to The Quagmire.",
            route = {
                Point(MAP.DUSTWALLOW, 0.4758, 0.5460, "The Quagmire",
                    "Travel to The Quagmire."),
            },
        },
        {
            id = "objective-1205-deadmire",
            kind = "objective",
            priority = 290,
            text = "Kill Deadmire and collect Deadmire's Tooth in The Quagmire.",
            dependsOn = { "accept-1205-deadmire" },
            complete = QuestState(1205, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4758, 0.5460, "Deadmire",
                    "Travel to Deadmire."),
            },
        },
        {
            id = "travel-1187-beezil-s-wreck",
            kind = "travel",
            priority = 300,
            text = "Travel to Beezil's Wreck.",
            route = {
                Point(MAP.DUSTWALLOW, 0.5406, 0.5653, "Beezil's Wreck",
                    "Travel to Beezil's Wreck."),
            },
        },
        {
            id = "travel-1261-tidefury-cove",
            kind = "travel",
            priority = 310,
            text = "Travel to Tidefury Cove.",
            route = {
                Point(MAP.DUSTWALLOW, 0.5521, 0.5879, "Continue toward Tidefury Cove",
                    "Continue toward Tidefury Cove."),
                Point(MAP.DUSTWALLOW, 0.5537, 0.6412, "Tidefury Cove",
                    "Travel to Tidefury Cove."),
            },
        },
        {
            id = "objective-1261-marg-speaks",
            kind = "objective",
            priority = 320,
            conditions = {
                all = {
                    { quest = { id = 1240, state = "completed" } },
                },
            },
            text = "Kill Muckshell Pincer until you collect Jeweled Pendant in Tidefury Cove, this is a low drop rate.",
            dependsOn = { "accept-1261-marg-speaks" },
            complete = QuestState(1261, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5537, 0.6412, "Muckshell Pincer",
                    "Travel to Muckshell Pincer."),
            },
        },
        {
            id = "travel-1169-stonemaul-ruins",
            kind = "travel",
            priority = 330,
            text = "Travel to Stonemaul Ruins.",
            route = {
                Point(MAP.DUSTWALLOW, 0.4460, 0.6619, "Stonemaul Ruins",
                    "Travel to Stonemaul Ruins."),
            },
        },
        {
            id = "objective-1169-identifying-the-brood",
            kind = "objective",
            priority = 340,
            text = "Kill Searing Hatchling or Searing Whelp for 7 Searing Tongue and 7 Searing Heart in Stonemaul Ruins, stay away from the elite dragons.",
            dependsOn = { "accept-1169-identifying-the-brood" },
            complete = QuestState(1169, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4700, 0.6619, "Searing Hatchling",
                    "Travel to Searing Hatchling."),
            },
        },
        {
            id = "travel-1262-brackenwall-village",
            kind = "travel",
            priority = 350,
            text = "Travel to Brackenwall Village.",
            route = {
                Point(MAP.DUSTWALLOW, 0.3522, 0.3063, "Brackenwall Village",
                    "Travel to Brackenwall Village."),
            },
        },
        {
            id = "turnin-1261-marg-speaks",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { quest = { id = 1240, state = "completed" } },
                },
            },
            text = "Turn in Marg Speaks to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "objective-1261-marg-speaks" },
            complete = QuestState(1261, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3522, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "accept-1262-report-to-zor",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 1262, state = "completed" } },
                },
            },
            text = "Accept Report to Zor from Nazeer Bloodpike in Brackenwall Village.",
            complete = QuestState(1262, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3522, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "turnin-1273-questioning-reethe-2",
            kind = "turnin",
            priority = 380,
            text = "Turn in Questioning Reethe to Krog in Brackenwall Village.",
            dependsOn = { "objective-1273-questioning-reethe" },
            complete = QuestState(1273, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3643, 0.3188, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1276-the-black-shield-2",
            kind = "accept",
            priority = 390,
            text = "Accept The Black Shield from Krog in Brackenwall Village.",
            complete = QuestState(1276, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3643, 0.3188, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "turnin-1169-identifying-the-brood",
            kind = "turnin",
            priority = 400,
            text = "Turn in Identifying the Brood to Draz'Zilb in Brackenwall Village.",
            dependsOn = { "objective-1169-identifying-the-brood" },
            complete = QuestState(1169, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3713, 0.3308, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "accept-1170-the-brood-of-onyxia",
            kind = "accept",
            priority = 410,
            text = "Accept The Brood of Onyxia from Draz'Zilb in Brackenwall Village.",
            complete = QuestState(1170, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3713, 0.3308, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "turnin-1170-the-brood-of-onyxia",
            kind = "turnin",
            priority = 420,
            text = "Turn in The Brood of Onyxia to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "accept-1170-the-brood-of-onyxia" },
            complete = QuestState(1170, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3631, 0.3144, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "travel-hunter-rise",
            kind = "travel",
            priority = 430,
            text = "Travel to Hunter Rise in Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5422, 0.8066, "Hunter Rise",
                    "Travel to Hunter Rise."),
            },
        },
        {
            id = "turnin-1276-the-black-shield",
            kind = "turnin",
            priority = 440,
            text = "Turn in The Black Shield to Mosarn in Hunter Rise.",
            dependsOn = { "accept-1276-the-black-shield" },
            complete = QuestState(1276, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5422, 0.8066, "Mosarn",
                    "Travel to Mosarn."),
            },
        },
        {
            id = "turnin-1205-deadmire",
            kind = "turnin",
            priority = 450,
            text = "Turn in Deadmire to Melor Stonehoof in Hunter Rise.",
            dependsOn = { "objective-1205-deadmire" },
            complete = QuestState(1205, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6141, 0.8057, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
            },
        },
    },
})
