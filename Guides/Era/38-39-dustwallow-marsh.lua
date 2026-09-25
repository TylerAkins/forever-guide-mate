local _, ns = ...

-- Alliance Era leveling route for Dustwallow Marsh, levels 38-39.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUSTWALLOW = 1445,
    STORMWIND = 1453,
    TANARIS = 1446,
    THOUSAND_NEEDLES = 1441,
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
    id = "leveling-era-38-39-dustwallow-marsh",
    title = "38-39 Dustwallow Marsh (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 38 } },
        },
    },
    goals = {
        {
            id = "accept-1260-morgan-stern",
            kind = "accept",
            priority = 20,
            text = "Accept Morgan Stern from Angus Stern in Mage Quarter.",
            complete = QuestState(1260, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.4149, 0.8945, "Angus Stern",
                    "Travel to Angus Stern."),
            },
        },
        {
            id = "accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 1112, state = "completed" } },
                },
            },
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1114, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7781, 0.7722, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 1112, state = "completed" } },
                },
            },
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts in Mirage Raceway.",
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            complete = QuestState(1114, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7804, 0.7713, "Fizzle Brassbolts",
                    "Travel to Fizzle Brassbolts."),
            },
        },
        {
            id = "accept-1115-the-rumormonger",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 1112, state = "completed" } },
                },
            },
            text = "Accept The Rumormonger from Kravel Koalbeard in Mirage Raceway.",
            complete = QuestState(1115, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.7786, 0.7722, "Kravel Koalbeard",
                    "Travel to Kravel Koalbeard."),
            },
        },
        {
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Accept The Eighteenth Pilot from Pozzik in Mirage Raceway.",
            complete = QuestState(1186, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8017, 0.7586, "Pozzik",
                    "Travel to Pozzik."),
            },
        },
        {
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Turn in The Eighteenth Pilot to Razzeric in Mirage Raceway.",
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            complete = QuestState(1186, "completed"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8032, 0.7607, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Accept Razzeric's Tweaking from Razzeric in Mirage Raceway.",
            complete = QuestState(1187, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSAND_NEEDLES, 0.8032, 0.7607, "Razzeric",
                    "Travel to Razzeric."),
            },
        },
        {
            id = "note-1282-theramore-isle",
            kind = "note",
            priority = 110,
            text = "Set your hearth in Theramore Isle with Innkeeper Janene.",
            route = {
                Point(MAP.DUSTWALLOW, 0.6660, 0.4520, "Innkeeper Janene",
                    "Travel to Innkeeper Janene."),
            },
        },
        {
            id = "accept-1282-they-call-him-smiling-jim",
            kind = "accept",
            priority = 120,
            text = "Accept They Call Him Smiling Jim from Guard Byron in Theramore Isle.",
            complete = QuestState(1282, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6614, 0.4604, "Guard Byron",
                    "Travel to Guard Byron."),
            },
        },
        {
            id = "turnin-1260-morgan-stern",
            kind = "turnin",
            priority = 130,
            text = "Turn in Morgan Stern to Morgan Stern in Theramore Isle.",
            dependsOn = { "accept-1260-morgan-stern" },
            complete = QuestState(1260, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6635, 0.4544, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
        {
            id = "accept-1204-mudrock-soup-and-bugs",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 1260, state = "completed" } },
                },
            },
            text = "Accept Mudrock Soup and Bugs from Morgan Stern in Theramore Isle.",
            complete = QuestState(1204, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6636, 0.4539, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
        {
            id = "objective-1218-soothing-spices",
            kind = "objective",
            priority = 150,
            text = "Buy Soothing Spices from Helenia Olden in Theramore Isle.",
            dependsOn = { "accept-1218-soothing-spices" },
            complete = QuestState(1218, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6644, 0.5147, "Helenia Olden",
                    "Travel to Helenia Olden."),
            },
        },
        {
            id = "turnin-1282-they-call-him-smiling-jim",
            kind = "turnin",
            priority = 170,
            text = "Turn in They Call Him Smiling Jim to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1282-they-call-him-smiling-jim" },
            complete = QuestState(1282, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "objective-1204-mudrock-soup-and-bugs",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 1260, state = "completed" } },
                },
            },
            text = "Kill Mudrock Tortoise or Mudrock Spikeshell and collect 8 Forked Mudrock Tongue in Theramore Isle This quest have a low drop rate and the turtles are scarce try to get 4 Forked Mudrock Tongue and complete this later.",
            dependsOn = { "accept-1204-mudrock-soup-and-bugs" },
            complete = QuestState(1204, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6471, 0.4139, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6471, 0.4139, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6425, 0.3905, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6300, 0.3658, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6172, 0.2753, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6173, 0.2148, "Mudrock Tortoise",
                    "Travel to Mudrock Tortoise."),
            },
        },
        {
            id = "accept-1218-soothing-spices",
            kind = "accept",
            priority = 200,
            text = "Accept Soothing Spices from \"Swamp Eye\" Jarl in Swamplight Manor.",
            complete = QuestState(1218, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2627, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "objective-1218-soothing-spices-2",
            kind = "objective",
            priority = 210,
            text = "Buy 3 Soothing Spices from Helenia Olden in Theramore Isle.",
            dependsOn = { "accept-1218-soothing-spices" },
            complete = QuestState(1218, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6644, 0.5147, "Helenia Olden",
                    "Travel to Helenia Olden."),
            },
        },
        {
            id = "turnin-1218-soothing-spices",
            kind = "turnin",
            priority = 220,
            text = "Turn in Soothing Spices to \"Swamp Eye\" Jarl in Swamplight Manor.",
            dependsOn = { "objective-1218-soothing-spices", "objective-1218-soothing-spices-2" },
            complete = QuestState(1218, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2627, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "accept-1206-jarl-needs-eyes",
            kind = "accept",
            priority = 230,
            text = "Accept Jarl Needs Eyes from \"Swamp Eye\" Jarl in Swamplight Manor.",
            complete = QuestState(1206, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5543, 0.2627, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "accept-1219-the-orc-report",
            kind = "accept",
            priority = 240,
            text = "Accept The Orc Report in Swamplight Manor.",
            complete = QuestState(1219, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5544, 0.2592, "Swamplight Manor",
                    "Travel to Swamplight Manor."),
            },
        },
        {
            id = "objective-1206-jarl-needs-eyes",
            kind = "objective",
            priority = 260,
            text = "Kill Darkmist spiders and collect 40 Unpopped Darkmist Eye in Darkmist Cavern.",
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            complete = QuestState(1206, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3405, 0.2139, "Darkmist Spider",
                    "Travel to Darkmist Spider."),
            },
        },
        {
            id = "accept-1177-hungry",
            kind = "accept",
            priority = 270,
            text = "Accept Hungry! from Mudcrush Durtfeet in Dustwallow Marsh.",
            complete = QuestState(1177, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3433, 0.2756, "Continue toward Hungry!",
                    "Continue toward Hungry!."),
                Point(MAP.DUSTWALLOW, 0.3514, 0.3826, "Mudcrush Durtfeet",
                    "Travel to Mudcrush Durtfeet."),
            },
        },
        {
            id = "accept-1253-the-black-shield",
            kind = "accept",
            priority = 290,
            text = "Accept The Black Shield in Shady Rest Inn.",
            complete = QuestState(1253, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2958, 0.4838, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1284-suspicious-hoofprints",
            kind = "accept",
            priority = 300,
            text = "Accept Suspicious Hoofprints in Shady Rest Inn.",
            complete = QuestState(1284, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2969, 0.4766, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "accept-1252-lieutenant-paval-reethe",
            kind = "accept",
            priority = 310,
            text = "Accept Lieutenant Paval Reethe in Shady Rest Inn.",
            complete = QuestState(1252, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.2983, 0.4827, "Shady Rest Inn",
                    "Travel to Shady Rest Inn."),
            },
        },
        {
            id = "objective-1187-razzeric-s-tweaking",
            kind = "objective",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 1183, state = "completed" } },
                },
            },
            text = "Collect Seaforium Booster from the Gizmorioum Shipping Crate in Beezil's Wreck.",
            dependsOn = { "accept-1187-razzeric-s-tweaking" },
            complete = QuestState(1187, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5405, 0.5653, "Beezil's Wreck",
                    "Travel to Beezil's Wreck."),
            },
        },
        {
            id = "turnin-1219-the-orc-report",
            kind = "turnin",
            priority = 350,
            text = "Turn in The Orc Report to Theramore Lieutenant in Theramore Isle.",
            dependsOn = { "accept-1219-the-orc-report" },
            complete = QuestState(1219, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6506, 0.4713, "Theramore Lieutenant",
                    "Travel to Theramore Lieutenant."),
            },
        },
        {
            id = "accept-1220-captain-vimes",
            kind = "accept",
            priority = 360,
            text = "Accept Captain Vimes from Theramore Lieutenant in Theramore Isle.",
            complete = QuestState(1220, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6506, 0.4713, "Theramore Lieutenant",
                    "Travel to Theramore Lieutenant."),
            },
        },
        {
            id = "turnin-1220-captain-vimes",
            kind = "turnin",
            priority = 380,
            text = "Turn in Captain Vimes to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1220-captain-vimes" },
            complete = QuestState(1220, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1252-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 390,
            text = "Turn in Lieutenant Paval Reethe to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1252-lieutenant-paval-reethe" },
            complete = QuestState(1252, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "accept-1259-lieutenant-paval-reethe",
            kind = "accept",
            priority = 400,
            text = "Accept Lieutenant Paval Reethe from Captain Garran Vimes in Foothold Citadel.",
            complete = QuestState(1259, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6821, 0.4857, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1253-the-black-shield",
            kind = "turnin",
            priority = 410,
            text = "Turn in The Black Shield to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1253-the-black-shield" },
            complete = QuestState(1253, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "accept-1319-the-black-shield",
            kind = "accept",
            priority = 420,
            text = "Accept The Black Shield from Captain Garran Vimes in Foothold Citadel.",
            complete = QuestState(1319, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1284-suspicious-hoofprints",
            kind = "turnin",
            priority = 430,
            text = "Turn in Suspicious Hoofprints to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1284-suspicious-hoofprints" },
            complete = QuestState(1284, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4862, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1259-lieutenant-paval-reethe",
            kind = "turnin",
            priority = 440,
            text = "Turn in Lieutenant Paval Reethe to Adjutant Tesoran in Foothold Citadel.",
            dependsOn = { "accept-1259-lieutenant-paval-reethe" },
            complete = QuestState(1259, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6804, 0.4814, "Adjutant Tesoran",
                    "Travel to Adjutant Tesoran."),
            },
        },
        {
            id = "accept-1285-daelin-s-men",
            kind = "accept",
            priority = 450,
            text = "Accept Daelin's Men from Adjutant Tesoran in Foothold Citadel.",
            complete = QuestState(1285, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6804, 0.4814, "Adjutant Tesoran",
                    "Travel to Adjutant Tesoran."),
            },
        },
        {
            id = "turnin-1319-the-black-shield",
            kind = "turnin",
            priority = 460,
            text = "Turn in The Black Shield to Caz Twosprocket in Theramore Isle.",
            dependsOn = { "accept-1319-the-black-shield" },
            complete = QuestState(1319, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6475, 0.5041, "Caz Twosprocket",
                    "Travel to Caz Twosprocket."),
            },
        },
        {
            id = "accept-1320-the-black-shield",
            kind = "accept",
            priority = 470,
            text = "Accept The Black Shield from Caz Twosprocket in Theramore Isle.",
            complete = QuestState(1320, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6475, 0.5041, "Caz Twosprocket",
                    "Travel to Caz Twosprocket."),
            },
        },
        {
            id = "turnin-1320-the-black-shield",
            kind = "turnin",
            priority = 490,
            text = "Turn in The Black Shield to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1320-the-black-shield" },
            complete = QuestState(1320, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6821, 0.4856, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1285-daelin-s-men",
            kind = "turnin",
            priority = 500,
            text = "Turn in Daelin's Men to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1285-daelin-s-men" },
            complete = QuestState(1285, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6821, 0.4856, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "accept-1286-the-deserters",
            kind = "accept",
            priority = 510,
            text = "Accept The Deserters from Captain Garran Vimes in Foothold Citadel.",
            complete = QuestState(1286, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6821, 0.4856, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "turnin-1206-jarl-needs-eyes",
            kind = "turnin",
            priority = 530,
            text = "Turn in Jarl Needs Eyes to \"Swamp Eye\" Jarl in Swamplight Manor.",
            dependsOn = { "objective-1206-jarl-needs-eyes" },
            complete = QuestState(1206, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5542, 0.2628, "'Swamp Eye' Jarl",
                    "Travel to 'Swamp Eye' Jarl."),
            },
        },
        {
            id = "objective-1204-mudrock-soup-and-bugs-2",
            kind = "objective",
            priority = 540,
            conditions = {
                all = {
                    { quest = { id = 1260, state = "completed" } },
                },
            },
            text = "Kill Mudrock Tortoise or Mudrock Spikeshell and collect 8 Forked Mudrock Tongue in Theramore Isle This quest have a low drop rate and the turtles are scarce try to get 4 Forked Mudrock Tongue and complete this later.",
            dependsOn = { "accept-1204-mudrock-soup-and-bugs" },
            complete = QuestState(1204, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6300, 0.3658, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6172, 0.2753, "Continue toward Mudrock Soup and Bugs",
                    "Continue toward Mudrock Soup and Bugs."),
                Point(MAP.DUSTWALLOW, 0.6173, 0.2148, "Mudrock Tortoise",
                    "Travel to Mudrock Tortoise."),
            },
        },
        {
            id = "objective-1177-hungry",
            kind = "objective",
            priority = 550,
            text = "Kill Murlocs and collect 8 Mirefin Head in Dreadmurk Shore.",
            dependsOn = { "accept-1177-hungry" },
            complete = QuestState(1177, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.5753, 0.1647, "Mirefin Murloc",
                    "Travel to Mirefin Murloc."),
            },
        },
        {
            id = "accept-1222-stinky-s-escape",
            kind = "accept",
            priority = 560,
            text = "Accept Stinky's Escape from \"Stinky\" Ignatz in Dustwallow Marsh.",
            complete = QuestState(1222, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4691, 0.1752, "'Stinky' Ignatz",
                    "Travel to 'Stinky' Ignatz."),
            },
        },
        {
            id = "objective-1222-stinky-s-escape",
            kind = "objective",
            priority = 570,
            text = "Escort \"Stinky\" Ignatz until quest is complete.",
            dependsOn = { "accept-1222-stinky-s-escape" },
            complete = QuestState(1222, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4738, 0.2076, "Continue toward Stinky's Escape",
                    "Continue toward Stinky's Escape."),
                Point(MAP.DUSTWALLOW, 0.4852, 0.2185, "Continue toward Stinky's Escape",
                    "Continue toward Stinky's Escape."),
                Point(MAP.DUSTWALLOW, 0.4938, 0.2248, "Continue toward Stinky's Escape",
                    "Continue toward Stinky's Escape."),
                Point(MAP.DUSTWALLOW, 0.4986, 0.2251, "Continue toward Stinky's Escape",
                    "Continue toward Stinky's Escape."),
                Point(MAP.DUSTWALLOW, 0.4894, 0.2480, "'Stinky' Ignatz",
                    "Travel to 'Stinky' Ignatz."),
            },
        },
        {
            id = "turnin-1177-hungry",
            kind = "turnin",
            priority = 580,
            text = "Turn in Hungry! to Mudcrush Durtfeet in Dustwallow Marsh.",
            dependsOn = { "objective-1177-hungry" },
            complete = QuestState(1177, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4894, 0.2480, "Continue toward Hungry!",
                    "Continue toward Hungry!."),
                Point(MAP.DUSTWALLOW, 0.3512, 0.3824, "Mudcrush Durtfeet",
                    "Travel to Mudcrush Durtfeet."),
            },
        },
        {
            id = "turnin-1286-the-deserters",
            kind = "turnin",
            priority = 600,
            text = "Turn in The Deserters to Balos Jacken in Lost Point.",
            dependsOn = { "accept-1286-the-deserters" },
            complete = QuestState(1286, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3590, 0.5400, "Balos Jacken",
                    "Travel to Balos Jacken."),
            },
        },
        {
            id = "accept-1287-the-deserters",
            kind = "accept",
            priority = 610,
            text = "Accept The Deserters from Balos Jacken in Lost Point.",
            complete = QuestState(1287, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3590, 0.5400, "Balos Jacken",
                    "Travel to Balos Jacken."),
            },
        },
        {
            id = "turnin-1222-stinky-s-escape",
            kind = "turnin",
            priority = 630,
            text = "Turn in Stinky's Escape to Morgan Stern in Theramore Isle.",
            dependsOn = { "objective-1222-stinky-s-escape" },
            complete = QuestState(1222, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6634, 0.4549, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
        {
            id = "turnin-1287-the-deserters",
            kind = "turnin",
            priority = 640,
            text = "Turn in The Deserters to Captain Garran Vimes in Foothold Citadel.",
            dependsOn = { "accept-1287-the-deserters" },
            complete = QuestState(1287, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6823, 0.4864, "Captain Garran Vimes",
                    "Travel to Captain Garran Vimes."),
            },
        },
        {
            id = "accept-1258-and-bugs",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { quest = { id = 1204, state = "completed" } },
                },
            },
            text = "Accept ... and Bugs from Morgan Stern in Theramore Isle.",
            complete = QuestState(1258, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.6634, 0.4547, "Morgan Stern",
                    "Travel to Morgan Stern."),
            },
        },
    },
})
