local _, ns = ...

-- Horde Era leveling route for Dustwallow Marsh, levels 38-38.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUSTWALLOW = 1445,
    THUNDER_BLUFF = 1456,
    BARRENS = 1413,
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
    id = "leveling-era-38-38-dustwallow-marsh",
    title = "38-38 Dustwallow Marsh (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 38 } },
        },
    },
    goals = {
        {
            id = "objective-1218-soothing-spices",
            kind = "objective",
            priority = 20,
            text = "Buy Soothing Spices from Naal Mistrunner in Thunder Bluff.",
            dependsOn = { "accept-1218-marsh-frog-legs" },
            complete = QuestState(1218, "complete"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5040, 0.5140, "Naal Mistrunner",
                    "Travel to Naal Mistrunner."),
            },
        },
        {
            id = "accept-1205-deadmire",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 1136, state = "completed" } },
                },
            },
            text = "Accept Deadmire from Melor Stonehoof in Hunter's Rise.",
            complete = QuestState(1205, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.6140, 0.8060, "Melor Stonehoof",
                    "Travel to Melor Stonehoof."),
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
            id = "turnin-1321-the-black-shield",
            kind = "turnin",
            priority = 130,
            text = "Turn in The Black Shield to Do'gol in Brackenwall Village.",
            dependsOn = { "accept-1321-the-black-shield" },
            complete = QuestState(1321, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3654, 0.3086, "Do'gol",
                    "Travel to Do'gol."),
            },
        },
        {
            id = "accept-1201-theramore-spies",
            kind = "accept",
            priority = 150,
            text = "Accept Theramore Spies from Nazeer Bloodpike in Brackenwall Village.",
            complete = QuestState(1201, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "accept-1322-the-black-shield",
            kind = "accept",
            priority = 160,
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
            priority = 170,
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
            priority = 180,
            text = "Kill Darkfang Spider or Theramore Infiltrator for 6 Acidic Venom Sac from the spiders at the in Bluefen.",
            dependsOn = { "accept-1322-the-black-shield" },
            complete = QuestState(1322, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3300, 0.2200, "Darkfang Spider",
                    "Travel to Darkfang Spider."),
            },
        },
        {
            id = "objective-1177-hungry",
            kind = "objective",
            priority = 200,
            text = "Kill the Murlocs and collect 8 Mirefin Head in Dreadmurk Shore.",
            dependsOn = { "accept-1177-hungry" },
            complete = QuestState(1177, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5746, 0.1647, "Mirefin Warrior",
                    "Travel to Mirefin Warrior."),
            },
        },
        {
            id = "accept-1218-marsh-frog-legs",
            kind = "accept",
            priority = 220,
            text = "Accept Marsh Frog Legs from \"Swamp Eye\" Jarl in Swamplight Manor.",
            complete = QuestState(1218, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2633, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "objective-1218-marsh-frog-leg",
            kind = "objective",
            priority = 230,
            text = "Kill Giant Marsh Frog and collect 10 Marsh Frog Leg.",
            dependsOn = { "accept-1218-marsh-frog-legs" },
            complete = QuestState(1218, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5552, 0.2496, "Giant Marsh Frog",
                    "Travel to Giant Marsh Frog."),
            },
        },
        {
            id = "turnin-1218-marsh-frog-legs",
            kind = "turnin",
            priority = 240,
            text = "Turn in Marsh Frog Legs to \"Swamp Eye\" Jarl in Swamplight Manor.",
            dependsOn = { "objective-1218-soothing-spices", "objective-1218-marsh-frog-leg" },
            complete = QuestState(1218, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2633, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "accept-1206-jarl-needs-eyes",
            kind = "accept",
            priority = 250,
            text = "Accept Jarl Needs Eyes from \"Swamp Eye\" Jarl in Swamplight Manor.",
            complete = QuestState(1206, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2633, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "accept-1238-the-lost-report",
            kind = "accept",
            priority = 260,
            text = "Accept The Lost Report in Swamplight Manor.",
            complete = QuestState(1238, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5539, 0.2591, "Swamplight Manor",
                    "Travel to Swamplight Manor."),
            },
        },
        {
            id = "accept-1270-stinky-s-escape",
            kind = "accept",
            priority = 270,
            text = "Accept Stinky's Escape from \"Stinky\" Ignatz in Dustwallow Marsh.",
            complete = QuestState(1270, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4691, 0.1753, "'Stinky' Ignatz",
                    "Travel to 'Stinky' Ignatz."),
            },
        },
        {
            id = "objective-1270-stinky-s-escape",
            kind = "objective",
            priority = 280,
            text = "Escort \"Stinky\" Ignatz in Dustwallow Marsh.",
            dependsOn = { "accept-1270-stinky-s-escape" },
            complete = QuestState(1270, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4670, 0.1700, "'Stinky' Ignatz",
                    "Travel to 'Stinky' Ignatz."),
            },
        },
        {
            id = "objective-1206-jarl-needs-eyes",
            kind = "objective",
            priority = 290,
            text = "Kill spiders and collect 40 Unpopped Darkmist Eye in Darkmist Cavern.",
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            complete = QuestState(1206, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3377, 0.2279, "Darkmist Spider",
                    "Travel to Darkmist Spider."),
            },
        },
        {
            id = "objective-1201-theramore-spies",
            kind = "objective",
            priority = 310,
            text = "Kill 9 Theramore Infiltrator. They are stealthed enemies around Brackenwall Village.",
            dependsOn = { "accept-1201-theramore-spies" },
            complete = QuestState(1201, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4300, 0.3000, "Theramore Infiltrator",
                    "Travel to Theramore Infiltrator."),
            },
        },
        {
            id = "turnin-1201-theramore-spies",
            kind = "turnin",
            priority = 320,
            text = "Turn in Theramore Spies to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "objective-1201-theramore-spies" },
            complete = QuestState(1201, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "accept-1202-the-theramore-docks",
            kind = "accept",
            priority = 330,
            text = "Accept The Theramore Docks from Nazeer Bloodpike in Brackenwall Village.",
            complete = QuestState(1202, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "turnin-1238-the-lost-report",
            kind = "turnin",
            priority = 340,
            text = "Turn in The Lost Report to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "accept-1238-the-lost-report" },
            complete = QuestState(1238, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "turnin-1177-hungry",
            kind = "turnin",
            priority = 350,
            text = "Turn in Hungry! to Mudcrush Durtfeet in Dustwallow Marsh.",
            dependsOn = { "objective-1177-hungry" },
            complete = QuestState(1177, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3508, 0.3829, "Mudcrush Durtfeet",
                    "Travel to Mudcrush Durtfeet."),
            },
        },
        {
            id = "turnin-1322-the-black-shield",
            kind = "turnin",
            priority = 360,
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
            priority = 370,
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
            priority = 380,
            text = "Turn in The Black Shield to Krog in Brackenwall Village.",
            dependsOn = { "accept-1323-the-black-shield" },
            complete = QuestState(1323, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3178, "Krog",
                    "Travel to Krog."),
            },
        },
        {
            id = "accept-1239-the-severed-head",
            kind = "accept",
            priority = 400,
            text = "Accept The Severed Head in Swamplight Manor.",
            complete = QuestState(1239, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5550, 0.2600, "Swamplight Manor",
                    "Travel to Swamplight Manor."),
            },
        },
        {
            id = "turnin-1206-jarl-needs-eyes",
            kind = "turnin",
            priority = 410,
            text = "Turn in Jarl Needs Eyes to \"Swamp Eye\" Jarl in Swamplight Manor.",
            dependsOn = { "objective-1206-jarl-needs-eyes" },
            complete = QuestState(1206, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2633, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "objective-1202-the-theramore-docks",
            kind = "objective",
            priority = 430,
            text = "Get the Captain's Documents from under the eastern pier at Theramore. Watch out for the shark!",
            dependsOn = { "accept-1202-the-theramore-docks" },
            complete = QuestState(1202, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.7100, 0.5100, "The Theramore Docks",
                    "Travel to The Theramore Docks."),
            },
        },
        {
            id = "turnin-1202-the-theramore-docks",
            kind = "turnin",
            priority = 450,
            text = "Turn in The Theramore Docks to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "objective-1202-the-theramore-docks" },
            complete = QuestState(1202, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "turnin-1239-the-severed-head",
            kind = "turnin",
            priority = 460,
            text = "Turn in The Severed Head to Nazeer Bloodpike in Brackenwall Village.",
            dependsOn = { "accept-1239-the-severed-head" },
            complete = QuestState(1239, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "accept-1240-the-troll-witchdoctor",
            kind = "accept",
            priority = 470,
            text = "Accept The Troll Witchdoctor from Nazeer Bloodpike in Brackenwall Village.",
            complete = QuestState(1240, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3526, 0.3063, "Nazeer Bloodpike",
                    "Travel to Nazeer Bloodpike."),
            },
        },
        {
            id = "turnin-1270-stinky-s-escape",
            kind = "turnin",
            priority = 490,
            text = "Turn in Stinky's Escape to Mebok Mizzyrix in Ratchet.",
            dependsOn = { "objective-1270-stinky-s-escape" },
            complete = QuestState(1270, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3764, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
    },
})
