local _, ns = ...

-- Alliance Era leveling route for Dun Morogh, levels 1-12.
-- Forever quests from the Dun Morogh and Ironforge lists are woven into this route.
-- Left out: Data Hoarders sends you back into Gnomeregan after this road has left.
-- The Quarry's Smith is a copper-bar delivery. Nip 'Em in the Bud, Farsen's Watch, A Visitor to Dun Morogh,
-- Underground Map, and The Treaty of Understanding are level 13 to 16, past this route.
-- Your Package Has Arrived and Stolen Blasting Powder appear only after the item is in the log.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUN_MOROGH = 1426,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    ELWYNN = 1429,
    LOCH_MODAN = 1432,
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
    id = "leveling-era-1-12-dun-morogh",
    title = "1-12 Dun Morogh",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-179-dwarven-outfitters",
            kind = "accept",
            priority = 10,
            text = "Accept Dwarven Outfitters from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(179, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "objective-179-dwarven-outfitters",
            kind = "objective",
            priority = 20,
            text = "Collect 8 pieces of Tough Wolf Meat dropped by Ragged Timber Wolf and Ragged Young Wolf.",
            dependsOn = { "accept-179-dwarven-outfitters" },
            complete = QuestState(179, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3000, 0.7300, "Ragged Timber Wolf",
                    "Travel to Ragged Timber Wolf."),
            },
        },
        {
            id = "turnin-179-dwarven-outfitters",
            kind = "turnin",
            priority = 30,
            text = "Turn in Dwarven Outfitters to Sten Stoutarm in Coldridge Valley.",
            dependsOn = { "objective-179-dwarven-outfitters" },
            complete = QuestState(179, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3109-encrypted-rune",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 3 },
                },
            },
            text = "Accept Encrypted Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3109, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3108-etched-rune",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Etched Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3108, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3110-hallowed-rune",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { class = 5 },
                    { race = 3 },
                },
            },
            text = "Accept Hallowed Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3110, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3106-simple-rune",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 3 },
                },
            },
            text = "Accept Simple Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3106, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3107-consecrated-rune",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept Consecrated Rune from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3107, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3115-tainted-memorandum",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 7 },
                },
            },
            text = "Accept Tainted Memorandum from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3115, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3114-glyphic-memorandum",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { class = 8 },
                    { race = 7 },
                },
            },
            text = "Accept Glyphic Memorandum from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3114, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3113-encrypted-memorandum",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 7 },
                },
            },
            text = "Accept Encrypted Memorandum from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3113, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-3112-simple-memorandum",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 7 },
                },
            },
            text = "Accept Simple Memorandum from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(3112, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-233-coldridge-valley-mail-delivery",
            kind = "accept",
            priority = 130,
            text = "Accept Coldridge Valley Mail Delivery from Sten Stoutarm in Coldridge Valley.",
            complete = QuestState(233, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2992, 0.7123, "Sten Stoutarm",
                    "Travel to Sten Stoutarm."),
            },
        },
        {
            id = "accept-170-a-new-threat",
            kind = "accept",
            priority = 140,
            text = "Accept A New Threat from Balir Frosthammer in Coldridge Valley.",
            complete = QuestState(170, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2971, 0.7126, "Balir Frosthammer",
                    "Travel to Balir Frosthammer."),
            },
        },
        {
            id = "objective-170-a-new-threat",
            kind = "objective",
            priority = 150,
            text = "Kill 6 Rockjaw Trogg and 6 Burly Rockjaw Trogg in Coldridge Valley.",
            dependsOn = { "accept-170-a-new-threat" },
            complete = QuestState(170, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3100, 0.7400, "Continue toward A New Threat",
                    "Continue toward A New Threat."),
                Point(MAP.DUN_MOROGH, 0.3000, 0.7400, "Rockjaw Trogg",
                    "Travel to Rockjaw Trogg."),
            },
        },
        {
            id = "turnin-170-a-new-threat",
            kind = "turnin",
            priority = 160,
            text = "Turn in A New Threat to Balir Frosthammer in Coldridge Valley.",
            dependsOn = { "objective-170-a-new-threat" },
            complete = QuestState(170, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2971, 0.7126, "Balir Frosthammer",
                    "Travel to Balir Frosthammer."),
            },
        },
        {
            id = "turnin-3109-encrypted-rune",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 3 },
                },
            },
            text = "Turn in Encrypted Rune to Solm Hargrin in Coldridge Valley.",
            dependsOn = { "accept-3109-encrypted-rune" },
            complete = QuestState(3109, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2840, 0.6850, "Solm Hargrin",
                    "Travel to Solm Hargrin."),
            },
        },
        {
            id = "turnin-3108-etched-rune",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Etched Rune to Thorgas Grimson in Coldridge Valley.",
            dependsOn = { "accept-3108-etched-rune" },
            complete = QuestState(3108, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2910, 0.6750, "Thorgas Grimson",
                    "Travel to Thorgas Grimson."),
            },
        },
        {
            id = "turnin-3110-hallowed-rune",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 5 },
                    { race = 3 },
                },
            },
            text = "Turn in Hallowed Rune to Branstock Khalder in Coldridge Valley.",
            dependsOn = { "accept-3110-hallowed-rune" },
            complete = QuestState(3110, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2860, 0.6640, "Branstock Khalder",
                    "Travel to Branstock Khalder."),
            },
        },
        {
            id = "turnin-3106-simple-rune",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 3 },
                },
            },
            text = "Turn in Simple Rune to Thran Khorman in Coldridge Valley.",
            dependsOn = { "accept-3106-simple-rune" },
            complete = QuestState(3106, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2880, 0.6730, "Thran Khorman",
                    "Travel to Thran Khorman."),
            },
        },
        {
            id = "turnin-3107-consecrated-rune",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in Consecrated Rune to Bromos Grummner in Coldridge Valley.",
            dependsOn = { "accept-3107-consecrated-rune" },
            complete = QuestState(3107, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2880, 0.6830, "Bromos Grummner",
                    "Travel to Bromos Grummner."),
            },
        },
        {
            id = "turnin-3115-tainted-memorandum",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 7 },
                },
            },
            text = "Turn in Tainted Memorandum to Alamar Grimm in Coldridge Valley.",
            dependsOn = { "accept-3115-tainted-memorandum" },
            complete = QuestState(3115, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2870, 0.6620, "Alamar Grimm",
                    "Travel to Alamar Grimm."),
            },
        },
        {
            id = "turnin-3114-glyphic-memorandum",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { class = 8 },
                    { race = 7 },
                },
            },
            text = "Turn in Glyphic Memorandum to Marryk Nurribit in Coldridge Valley.",
            dependsOn = { "accept-3114-glyphic-memorandum" },
            complete = QuestState(3114, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2870, 0.6640, "Marryk Nurribit",
                    "Travel to Marryk Nurribit."),
            },
        },
        {
            id = "turnin-3113-encrypted-memorandum",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { class = 4 },
                    { race = 7 },
                },
            },
            text = "Turn in Encrypted Memorandum to Solm Hargrin in Coldridge Valley.",
            dependsOn = { "accept-3113-encrypted-memorandum" },
            complete = QuestState(3113, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2840, 0.6850, "Solm Hargrin",
                    "Travel to Solm Hargrin."),
            },
        },
        {
            id = "turnin-3112-simple-memorandum",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { class = 1 },
                    { race = 7 },
                },
            },
            text = "Turn in Simple Memorandum to Thran Khorman in Coldridge Valley.",
            dependsOn = { "accept-3112-simple-memorandum" },
            complete = QuestState(3112, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2880, 0.6730, "Thran Khorman",
                    "Travel to Thran Khorman."),
            },
        },
        {
            id = "accept-3361-a-refugee-s-quandary",
            kind = "accept",
            priority = 260,
            text = "Accept A Refugee's Quandary from Felix Whindlebolt in Coldridge Valley.",
            complete = QuestState(3361, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2856, 0.6774, "Felix Whindlebolt",
                    "Travel to Felix Whindlebolt."),
            },
        },
        {
            id = "accept-1599-beginnings",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Beginnings from Alamar Grimm in Coldridge Valley.",
            complete = QuestState(1599, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2864, 0.6615, "Alamar Grimm",
                    "Travel to Alamar Grimm."),
            },
        },
        {
            id = "turnin-233-coldridge-valley-mail-delivery",
            kind = "turnin",
            priority = 280,
            text = "Turn in Coldridge Valley Mail Delivery to Talin Keeneye in Coldridge Valley.",
            dependsOn = { "accept-233-coldridge-valley-mail-delivery" },
            complete = QuestState(233, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2257, 0.7138, "Talin Keeneye",
                    "Travel to Talin Keeneye."),
            },
        },
        {
            id = "accept-234-coldridge-valley-mail-delivery",
            kind = "accept",
            priority = 290,
            text = "Accept Coldridge Valley Mail Delivery from Talin Keeneye in Coldridge Valley.",
            complete = QuestState(234, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2257, 0.7138, "Talin Keeneye",
                    "Travel to Talin Keeneye."),
            },
        },
        {
            id = "accept-183-the-boar-hunter",
            kind = "accept",
            priority = 300,
            text = "Accept The Boar Hunter from Talin Keeneye in Coldridge Valley.",
            complete = QuestState(183, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2257, 0.7138, "Talin Keeneye",
                    "Travel to Talin Keeneye."),
            },
        },
        {
            id = "objective-183-the-boar-hunter",
            kind = "objective",
            priority = 310,
            text = "Kill 12 Small Crag Boar in Coldridge Valley.",
            dependsOn = { "accept-183-the-boar-hunter" },
            complete = QuestState(183, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2100, 0.7200, "Small Crag Boar",
                    "Travel to Small Crag Boar."),
            },
        },
        {
            id = "turnin-183-the-boar-hunter",
            kind = "turnin",
            priority = 320,
            text = "Turn in The Boar Hunter to Talin Keeneye in Coldridge Valley.",
            dependsOn = { "objective-183-the-boar-hunter" },
            complete = QuestState(183, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2257, 0.7138, "Talin Keeneye",
                    "Travel to Talin Keeneye."),
            },
        },
        {
            id = "turnin-234-coldridge-valley-mail-delivery",
            kind = "turnin",
            priority = 330,
            text = "Turn in Coldridge Valley Mail Delivery to Grelin Whitebeard in Coldridge Valley.",
            dependsOn = { "accept-234-coldridge-valley-mail-delivery" },
            complete = QuestState(234, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "accept-182-the-troll-cave",
            kind = "accept",
            priority = 340,
            text = "Accept The Troll Cave from Grelin Whitebeard in Coldridge Valley.",
            complete = QuestState(182, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "accept-3364-scalding-mornbrew-delivery",
            kind = "accept",
            priority = 350,
            text = "Accept Scalding Mornbrew Delivery from Nori Pridedrift in Coldridge Valley.",
            complete = QuestState(3364, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2500, 0.7594, "Nori Pridedrift",
                    "Travel to Nori Pridedrift."),
            },
        },
        {
            id = "turnin-3364-scalding-mornbrew-delivery",
            kind = "turnin",
            priority = 360,
            text = "Turn in Scalding Mornbrew Delivery to Durnan Furcutter in Coldridge Valley.",
            dependsOn = { "accept-3364-scalding-mornbrew-delivery" },
            complete = QuestState(3364, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2875, 0.6636, "Durnan Furcutter",
                    "Travel to Durnan Furcutter."),
            },
        },
        {
            id = "accept-3365-bring-back-the-mug",
            kind = "accept",
            priority = 370,
            text = "Accept Bring Back the Mug from Durnan Furcutter in Coldridge Valley.",
            complete = QuestState(3365, "activeOrCompleted"),
        },
        {
            id = "turnin-3365-bring-back-the-mug",
            kind = "turnin",
            priority = 380,
            text = "Turn in Bring Back the Mug to Nori Pridedrift in Coldridge Valley.",
            dependsOn = { "accept-3365-bring-back-the-mug" },
            complete = QuestState(3365, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2500, 0.7594, "Nori Pridedrift",
                    "Travel to Nori Pridedrift."),
            },
        },
        {
            id = "objective-3361-1-felix-s-box",
            kind = "objective",
            priority = 390,
            text = "Collect Felix's Box from the ground at the troll camp.",
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
            complete = QuestObjective(3361, 1),
            route = {
                Point(MAP.DUN_MOROGH, 0.2090, 0.7610, "Felix's Box",
                    "Travel to Felix's Box."),
            },
        },
        {
            id = "objective-3361-2-felix-s-chest",
            kind = "objective",
            priority = 400,
            text = "Collect Felix's Chest from the ground at the troll camp.",
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
            complete = QuestObjective(3361, 2),
            route = {
                Point(MAP.DUN_MOROGH, 0.2280, 0.7990, "Felix's Chest",
                    "Travel to Felix's Chest."),
            },
        },
        {
            id = "objective-3361-3-felix-s-bucket-of-bolts",
            kind = "objective",
            priority = 410,
            text = "Collect Felix's Bucket of Bolts from the ground at the troll camp.",
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
            complete = QuestObjective(3361, 3),
            route = {
                Point(MAP.DUN_MOROGH, 0.2630, 0.7930, "Felix's Bucket of Bolts",
                    "Travel to Felix's Bucket of Bolts."),
            },
        },
        {
            id = "objective-1599-beginnings",
            kind = "objective",
            priority = 420,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Frostmane Novice for 3 in Coldridge Valley, go into the cave and follow the path to the left, there are only 3 Frostmane Novice inside the cave total.",
            dependsOn = { "accept-1599-beginnings" },
            complete = QuestState(1599, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2679, 0.7971, "Continue toward Beginnings",
                    "Continue toward Beginnings."),
                Point(MAP.DUN_MOROGH, 0.2810, 0.8012, "Continue toward Beginnings",
                    "Continue toward Beginnings."),
                Point(MAP.DUN_MOROGH, 0.3037, 0.7971, "Continue toward Beginnings",
                    "Continue toward Beginnings."),
                Point(MAP.DUN_MOROGH, 0.2941, 0.8107, "Frostmane Novice",
                    "Travel to Frostmane Novice."),
            },
        },
        {
            id = "objective-182-the-troll-cave",
            kind = "objective",
            priority = 430,
            text = "Kill 14 Frostmane Troll Whelp in Coldridge Valley.",
            dependsOn = { "accept-182-the-troll-cave" },
            complete = QuestState(182, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2600, 0.7800, "Frostmane Troll Whelp",
                    "Travel to Frostmane Troll Whelp."),
            },
        },
        {
            id = "turnin-182-the-troll-cave",
            kind = "turnin",
            priority = 440,
            text = "Turn in The Troll Cave to Grelin Whitebeard in Coldridge Valley.",
            dependsOn = { "objective-182-the-troll-cave" },
            complete = QuestState(182, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "accept-218-the-stolen-journal",
            kind = "accept",
            priority = 450,
            text = "Accept The Stolen Journal from Grelin Whitebeard in Coldridge Valley.",
            complete = QuestState(218, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "turnin-1599-beginnings",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Beginnings to Alamar Grimm in Coldridge Valley.",
            dependsOn = { "objective-1599-beginnings" },
            complete = QuestState(1599, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2870, 0.6617, "Alamar Grimm",
                    "Travel to Alamar Grimm."),
            },
        },
        {
            id = "objective-218-the-stolen-journal",
            kind = "objective",
            priority = 470,
            text = "Go to the cave and kill Grik'nir the Cold and collect Grelin Whitebeard's Journal.",
            dependsOn = { "accept-218-the-stolen-journal" },
            complete = QuestState(218, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2676, 0.7975, "Continue toward The Stolen Journal",
                    "Continue toward The Stolen Journal."),
                Point(MAP.DUN_MOROGH, 0.2756, 0.8092, "Continue toward The Stolen Journal",
                    "Continue toward The Stolen Journal."),
                Point(MAP.DUN_MOROGH, 0.2912, 0.7884, "Continue toward The Stolen Journal",
                    "Continue toward The Stolen Journal."),
                Point(MAP.DUN_MOROGH, 0.3049, 0.8010, "Grik'nir the Cold",
                    "Travel to Grik'nir the Cold."),
            },
        },
        {
            id = "turnin-218-the-stolen-journal",
            kind = "turnin",
            priority = 480,
            text = "Turn in The Stolen Journal to Grelin Whitebeard in Coldridge Valley.",
            dependsOn = { "objective-218-the-stolen-journal" },
            complete = QuestState(218, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "accept-282-senir-s-observations",
            kind = "accept",
            priority = 490,
            text = "Accept Senir's Observations from Grelin Whitebeard in Coldridge Valley.",
            complete = QuestState(282, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2510, 0.7576, "Grelin Whitebeard",
                    "Travel to Grelin Whitebeard."),
            },
        },
        {
            id = "turnin-3361-a-refugee-s-quandary",
            kind = "turnin",
            priority = 500,
            text = "Turn in A Refugee's Quandary to Felix Whindlebolt in Coldridge Valley.",
            dependsOn = { "objective-3361-1-felix-s-box", "objective-3361-2-felix-s-chest", "objective-3361-3-felix-s-bucket-of-bolts" },
            complete = QuestState(3361, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2880, 0.6899, "Continue toward A Refugee's Quandary",
                    "Continue toward A Refugee's Quandary."),
                Point(MAP.DUN_MOROGH, 0.2856, 0.6774, "Felix Whindlebolt",
                    "Travel to Felix Whindlebolt."),
            },
        },
        {
            id = "turnin-282-senir-s-observations",
            kind = "turnin",
            priority = 510,
            text = "Turn in Senir's Observations to Mountaineer Thalos in Coldridge Pass.",
            dependsOn = { "accept-282-senir-s-observations" },
            complete = QuestState(282, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3347, 0.7183, "Mountaineer Thalos",
                    "Travel to Mountaineer Thalos."),
            },
        },
        {
            id = "accept-420-senir-s-observations",
            kind = "accept",
            priority = 520,
            text = "Accept Senir's Observations from Mountaineer Thalos in Coldridge Pass.",
            complete = QuestState(420, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3347, 0.7183, "Mountaineer Thalos",
                    "Travel to Mountaineer Thalos."),
            },
        },
        {
            id = "accept-2160-supplies-to-tannok",
            kind = "accept",
            priority = 530,
            text = "Accept Supplies to Tannok from Hands Springsprocket in Coldridge Pass.",
            complete = QuestState(2160, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3383, 0.7221, "Hands Springsprocket",
                    "Travel to Hands Springsprocket."),
            },
        },
        {
            id = "turnin-420-senir-s-observations",
            kind = "turnin",
            priority = 550,
            text = "Turn in Senir's Observations to Senir Whitebeard in Kharanos.",
            dependsOn = { "accept-420-senir-s-observations" },
            complete = QuestState(420, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4666, 0.5383, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "accept-98322-secure-the-mountain",
            kind = "accept",
            priority = 551,
            text = "Accept Secure the Mountain from Senir Whitebeard in Kharanos.",
            complete = QuestState(98322, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4660, 0.5380, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "accept-98321-flintfires-shipment",
            kind = "accept",
            priority = 552,
            text = "Accept Flintfire's Shipment from Tognus Flintfire in Kharanos.",
            complete = QuestState(98321, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4520, 0.5200, "Tognus Flintfire",
                    "Travel to Tognus Flintfire."),
            },
        },
        {
            id = "accept-384-beer-basted-boar-ribs",
            kind = "accept",
            priority = 560,
            text = "Accept Beer Basted Boar Ribs from Ragnar Thunderbrew in Kharanos.",
            complete = QuestState(384, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4681, 0.5237, "Ragnar Thunderbrew",
                    "Travel to Ragnar Thunderbrew."),
            },
        },
        {
            id = "turnin-2160-supplies-to-tannok",
            kind = "turnin",
            priority = 580,
            text = "Turn in Supplies to Tannok to Tannok Frosthammer in Thunderbrew Distillery.",
            dependsOn = { "accept-2160-supplies-to-tannok" },
            complete = QuestState(2160, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4724, 0.5215, "Tannok Frosthammer",
                    "Travel to Tannok Frosthammer."),
            },
        },
        {
            id = "note-400-thunderbrew-distillery",
            kind = "note",
            priority = 590,
            text = "Set your hearth in Thunderbrew Distillery with Innkeeper Belm.",
            route = {
                Point(MAP.DUN_MOROGH, 0.4740, 0.5250, "Innkeeper Belm",
                    "Travel to Innkeeper Belm."),
            },
        },
        {
            id = "accept-400-tools-for-steelgrill",
            kind = "accept",
            priority = 600,
            text = "Accept Tools for Steelgrill from Tharek Blackstone in Kharanos.",
            complete = QuestState(400, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4603, 0.5175, "Tharek Blackstone",
                    "Travel to Tharek Blackstone."),
            },
        },
        {
            id = "turnin-400-tools-for-steelgrill",
            kind = "turnin",
            priority = 620,
            text = "Turn in Tools for Steelgrill to Beldin Steelgrill in Steelgrill's Depot.",
            dependsOn = { "accept-400-tools-for-steelgrill" },
            complete = QuestState(400, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5042, 0.4913, "Beldin Steelgrill",
                    "Travel to Beldin Steelgrill."),
            },
        },
        {
            id = "accept-5541-ammo-for-rumbleshot",
            kind = "accept",
            priority = 630,
            text = "Accept Ammo for Rumbleshot from Loslor Rudge in Steelgrill's Depot.",
            complete = QuestState(5541, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5007, 0.4926, "Loslor Rudge",
                    "Travel to Loslor Rudge."),
            },
        },
        {
            id = "accept-313-the-grizzled-den",
            kind = "accept",
            priority = 640,
            text = "Accept The Grizzled Den from Pilot Stonegear in Steelgrill's Depot.",
            complete = QuestState(313, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4966, 0.4857, "Pilot Stonegear",
                    "Travel to Pilot Stonegear."),
            },
        },
        {
            id = "accept-317-stocking-jetsteam",
            kind = "accept",
            priority = 650,
            text = "Accept Stocking Jetsteam from Pilot Bellowfiz in Steelgrill's Depot.",
            complete = QuestState(317, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4949, 0.4837, "Pilot Bellowfiz",
                    "Travel to Pilot Bellowfiz."),
            },
        },
        {
            id = "objective-5541-ammo-for-rumbleshot",
            kind = "objective",
            priority = 660,
            text = "Open the crate and collect Rumbleshot's Ammo near The Grizzled Den.",
            dependsOn = { "accept-5541-ammo-for-rumbleshot" },
            complete = QuestState(5541, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4410, 0.5690, "The Grizzled Den",
                    "Travel to The Grizzled Den."),
            },
        },
        {
            id = "objective-313-the-grizzled-den",
            kind = "objective",
            priority = 670,
            text = "Kill Young Wendigo and Wendigo to gather 8 Wendigo Mane in The Grizzled Den.",
            dependsOn = { "accept-313-the-grizzled-den" },
            complete = QuestState(313, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4200, 0.5400, "Young Wendigo",
                    "Travel to Young Wendigo."),
            },
        },
        {
            id = "turnin-98322-secure-the-mountain",
            kind = "turnin",
            priority = 661,
            text = "Turn in Secure the Mountain to Mountaineer Gretchen, west of Kharanos.",
            dependsOn = { "accept-98322-secure-the-mountain" },
            complete = QuestState(98322, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "accept-98319-secure-the-mountain",
            kind = "accept",
            priority = 662,
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            dependsOn = { "turnin-98322-secure-the-mountain" },
            complete = QuestState(98319, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "objective-98319-secure-the-mountain",
            kind = "objective",
            priority = 663,
            text = "Find Mountaineer Cornelius in the Grizzled Den.",
            dependsOn = { "accept-98319-secure-the-mountain" },
            complete = QuestState(98319, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4200, 0.5400, "Grizzled Den",
                    "Travel to Grizzled Den."),
            },
        },
        {
            id = "turnin-98319-secure-the-mountain",
            kind = "turnin",
            priority = 664,
            text = "Turn in Secure the Mountain to Mountaineer Gretchen.",
            dependsOn = { "objective-98319-secure-the-mountain" },
            complete = QuestState(98319, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "accept-98323-secure-the-mountain",
            kind = "accept",
            priority = 665,
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            dependsOn = { "turnin-98319-secure-the-mountain" },
            complete = QuestState(98323, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4400, 0.5700, "Mountaineer Gretchen",
                    "Travel to Mountaineer Gretchen."),
            },
        },
        {
            id = "objective-98321-flintfires-shipment",
            kind = "objective",
            priority = 666,
            text = "Collect 8 Flintfire Shipments in the Grizzled Den.",
            dependsOn = { "accept-98321-flintfires-shipment" },
            complete = QuestState(98321, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4200, 0.5400, "Grizzled Den",
                    "Travel to Grizzled Den."),
            },
        },
        {
            id = "turnin-5541-ammo-for-rumbleshot",
            kind = "turnin",
            priority = 680,
            text = "Turn in Ammo for Rumbleshot to Hegnar Rumbleshot in Dun Morogh.",
            dependsOn = { "objective-5541-ammo-for-rumbleshot" },
            complete = QuestState(5541, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4069, 0.6514, "Hegnar Rumbleshot",
                    "Travel to Hegnar Rumbleshot."),
            },
        },
        {
            id = "objective-317-stocking-jetsteam",
            kind = "objective",
            priority = 690,
            text = "Kill Dire Mottled Boar to collect 4 Chunk of Boar Meat and Young Black Bear to collect 2 Thick Bear Fur.",
            dependsOn = { "accept-317-stocking-jetsteam" },
            complete = QuestState(317, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5000, 0.5200, "Dire Mottled Boar",
                    "Travel to Dire Mottled Boar."),
            },
        },
        {
            id = "objective-384-1-elder-crag-boar",
            kind = "objective",
            priority = 700,
            text = "Kill nearby Elder Crag Boar or any boar for Crag Boar Rib.",
            dependsOn = { "accept-384-beer-basted-boar-ribs" },
            complete = QuestObjective(384, 1),
            route = {
                Point(MAP.DUN_MOROGH, 0.4522, 0.4527, "Elder Crag Boar",
                    "Travel to Elder Crag Boar."),
            },
        },
        {
            id = "turnin-313-the-grizzled-den",
            kind = "turnin",
            priority = 720,
            text = "Turn in The Grizzled Den to Pilot Stonegear in Steelgrill's Depot.",
            dependsOn = { "objective-313-the-grizzled-den" },
            complete = QuestState(313, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4966, 0.4857, "Pilot Stonegear",
                    "Travel to Pilot Stonegear."),
            },
        },
        {
            id = "turnin-317-stocking-jetsteam",
            kind = "turnin",
            priority = 730,
            text = "Turn in Stocking Jetsteam to Pilot Bellowfiz in Steelgrill's Depot.",
            dependsOn = { "objective-317-stocking-jetsteam" },
            complete = QuestState(317, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4949, 0.4837, "Pilot Bellowfiz",
                    "Travel to Pilot Bellowfiz."),
            },
        },
        {
            id = "accept-318-evershine",
            kind = "accept",
            priority = 740,
            text = "Accept Evershine from Pilot Bellowfiz in Steelgrill's Depot.",
            complete = QuestState(318, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4949, 0.4837, "Pilot Bellowfiz",
                    "Travel to Pilot Bellowfiz."),
            },
        },
        {
            id = "objective-384-2-rhapsody-malt",
            kind = "objective",
            priority = 750,
            text = "Buy Rhapsody Malt from Innkeeper Belm in Thunderbrew Distillery.",
            dependsOn = { "accept-384-beer-basted-boar-ribs" },
            complete = QuestObjective(384, 2),
            route = {
                Point(MAP.DUN_MOROGH, 0.4740, 0.5250, "Innkeeper Belm",
                    "Travel to Innkeeper Belm."),
            },
        },
        {
            id = "turnin-384-beer-basted-boar-ribs",
            kind = "turnin",
            priority = 760,
            text = "Turn in Beer Basted Boar Ribs to Ragnar Thunderbrew in Kharanos.",
            dependsOn = { "objective-384-1-elder-crag-boar", "objective-384-2-rhapsody-malt" },
            complete = QuestState(384, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4681, 0.5237, "Ragnar Thunderbrew",
                    "Travel to Ragnar Thunderbrew."),
            },
        },
        {
            id = "accept-287-frostmane-hold",
            kind = "accept",
            priority = 770,
            text = "Accept Frostmane Hold from Senir Whitebeard in Kharanos.",
            complete = QuestState(287, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4666, 0.5383, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "turnin-98323-secure-the-mountain",
            kind = "turnin",
            priority = 771,
            text = "Turn in Secure the Mountain to Senir Whitebeard in Kharanos.",
            dependsOn = { "accept-98323-secure-the-mountain" },
            complete = QuestState(98323, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4660, 0.5380, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "turnin-98321-flintfires-shipment",
            kind = "turnin",
            priority = 772,
            text = "Turn in Flintfire's Shipment to Tognus Flintfire in Kharanos.",
            dependsOn = { "objective-98321-flintfires-shipment" },
            complete = QuestState(98321, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4520, 0.5200, "Tognus Flintfire",
                    "Travel to Tognus Flintfire."),
            },
        },
        {
            id = "accept-99158-dawn-in-the-mountains",
            kind = "accept",
            priority = 773,
            text = "Accept Dawn in the Mountains from Maxan Anvol in Kharanos.",
            complete = QuestState(99158, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol."),
            },
        },
        {
            id = "turnin-99158-dawn-in-the-mountains",
            kind = "turnin",
            priority = 774,
            text = "Turn in Dawn in the Mountains to Father Gavin.",
            dependsOn = { "accept-99158-dawn-in-the-mountains" },
            complete = QuestState(99158, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "accept-99159-finding-warmth",
            kind = "accept",
            priority = 775,
            text = "Accept Finding Warmth from Father Gavin.",
            dependsOn = { "turnin-99158-dawn-in-the-mountains" },
            complete = QuestState(99159, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "accept-99160-rimes-wrath",
            kind = "accept",
            priority = 776,
            text = "Accept Rime's Wrath from Father Gavin.",
            dependsOn = { "turnin-99158-dawn-in-the-mountains" },
            complete = QuestState(99160, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "accept-99162-treacherous-cold",
            kind = "accept",
            priority = 777,
            text = "Accept Treacherous Cold from Father Gavin.",
            dependsOn = { "turnin-99158-dawn-in-the-mountains" },
            complete = QuestState(99162, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "objective-99159-finding-warmth",
            kind = "objective",
            priority = 778,
            text = "Collect 14 pieces of Mostly Dry Firewood.",
            dependsOn = { "accept-99159-finding-warmth" },
            complete = QuestState(99159, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "objective-99160-rimes-wrath",
            kind = "objective",
            priority = 779,
            text = "Destroy 10 minor ice elementals.",
            dependsOn = { "accept-99160-rimes-wrath" },
            complete = QuestState(99160, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5700, 0.4520, "Minor Ice Elemental",
                    "Travel to Minor Ice Elemental."),
            },
        },
        {
            id = "objective-99162-treacherous-cold",
            kind = "objective",
            priority = 779.5,
            text = "Collect Stoneanvil's Rifle, Sunhammer's Rifle, and Coalbeard's Rifle.",
            dependsOn = { "accept-99162-treacherous-cold" },
            complete = QuestState(99162, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "turnin-99159-finding-warmth",
            kind = "turnin",
            priority = 781,
            text = "Turn in Finding Warmth to Father Gavin.",
            dependsOn = { "objective-99159-finding-warmth" },
            complete = QuestState(99159, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "turnin-99160-rimes-wrath",
            kind = "turnin",
            priority = 782,
            text = "Turn in Rime's Wrath to Father Gavin.",
            dependsOn = { "objective-99160-rimes-wrath" },
            complete = QuestState(99160, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "accept-99161-rimes-wrath",
            kind = "accept",
            priority = 783,
            text = "Accept the next Rime's Wrath from Father Gavin.",
            dependsOn = { "turnin-99160-rimes-wrath" },
            complete = QuestState(99161, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "objective-99161-rimes-wrath",
            kind = "objective",
            priority = 784,
            text = "Kill Avala and take Avala's Core.",
            dependsOn = { "accept-99161-rimes-wrath" },
            complete = QuestState(99161, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5820, 0.4200, "Avala",
                    "Travel to Avala."),
            },
        },
        {
            id = "turnin-99161-rimes-wrath",
            kind = "turnin",
            priority = 785,
            text = "Turn in Rime's Wrath to Father Gavin.",
            dependsOn = { "objective-99161-rimes-wrath" },
            complete = QuestState(99161, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "turnin-99162-treacherous-cold",
            kind = "turnin",
            priority = 786,
            text = "Turn in Treacherous Cold to Father Gavin.",
            dependsOn = { "objective-99162-treacherous-cold" },
            complete = QuestState(99162, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.5760, 0.4480, "Father Gavin",
                    "Travel to Father Gavin."),
            },
        },
        {
            id = "accept-412-operation-recombobulation",
            kind = "accept",
            priority = 788,
            text = "Accept Operation Recombobulation from Razzle Sprysprocket in Kharanos.",
            complete = QuestState(412, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4580, 0.4920, "Razzle Sprysprocket",
                    "Travel to Razzle Sprysprocket."),
            },
        },
        {
            id = "accept-312-tundra-macgrann-s-stolen-stash",
            kind = "accept",
            priority = 800,
            text = "Accept Tundra MacGrann's Stolen Stash from Tundra MacGrann in Chill Breeze Valley.",
            complete = QuestState(312, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3670, 0.5213, "Continue toward Tundra MacGrann's Stolen Stash",
                    "Continue toward Tundra MacGrann's Stolen Stash."),
                Point(MAP.DUN_MOROGH, 0.3516, 0.5183, "Continue toward Tundra MacGrann's Stolen Stash",
                    "Continue toward Tundra MacGrann's Stolen Stash."),
                Point(MAP.DUN_MOROGH, 0.3457, 0.5163, "Tundra MacGrann",
                    "Travel to Tundra MacGrann."),
            },
        },
        {
            id = "objective-312-tundra-macgrann-s-stolen-stash",
            kind = "objective",
            priority = 810,
            text = "Find MacGrann's Meat Locker in the cave guarded by Old Icebeard. Wait until he patrols out away from the chest and quickly run in and loot MacGrann's Dried Meats and run back out.",
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash" },
            complete = QuestState(312, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3800, 0.5400, "Old Icebeard",
                    "Travel to Old Icebeard."),
            },
        },
        {
            id = "turnin-312-tundra-macgrann-s-stolen-stash",
            kind = "turnin",
            priority = 820,
            text = "Turn in Tundra MacGrann's Stolen Stash to Tundra MacGrann in Chill Breeze Valley.",
            dependsOn = { "objective-312-tundra-macgrann-s-stolen-stash" },
            complete = QuestState(312, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3457, 0.5163, "Tundra MacGrann",
                    "Travel to Tundra MacGrann."),
            },
        },
        {
            id = "turnin-318-evershine",
            kind = "turnin",
            priority = 840,
            text = "Turn in Evershine to Rejold Barleybrew in Brewnall Village.",
            dependsOn = { "accept-318-evershine" },
            complete = QuestState(318, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "accept-98326-frosthowl",
            kind = "accept",
            priority = 841,
            text = "Accept Frosthowl from Gretta Ganter in Brewnall Village.",
            complete = QuestState(98326, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3140, 0.4460, "Gretta Ganter",
                    "Travel to Gretta Ganter."),
            },
        },
        {
            id = "objective-98326-frosthowl",
            kind = "objective",
            priority = 842,
            text = "Slay Frosthowl and take the Sack of Fish.",
            dependsOn = { "accept-98326-frosthowl" },
            complete = QuestState(98326, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3140, 0.4460, "Frosthowl",
                    "Travel to Frosthowl."),
            },
        },
        {
            id = "turnin-98326-frosthowl",
            kind = "turnin",
            priority = 843,
            text = "Turn in Frosthowl to Gretta Ganter.",
            dependsOn = { "objective-98326-frosthowl" },
            complete = QuestState(98326, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3140, 0.4460, "Gretta Ganter",
                    "Travel to Gretta Ganter."),
            },
        },
        {
            id = "accept-319-a-favor-for-evershine",
            kind = "accept",
            priority = 850,
            text = "Accept A Favor for Evershine from Rejold Barleybrew in Brewnall Village.",
            complete = QuestState(319, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "accept-315-the-perfect-stout",
            kind = "accept",
            priority = 860,
            text = "Accept The Perfect Stout from Rejold Barleybrew in Brewnall Village.",
            complete = QuestState(315, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "accept-310-bitter-rivals",
            kind = "accept",
            priority = 870,
            text = "Accept Bitter Rivals from Marleth Barleybrew in Brewnall Village.",
            complete = QuestState(310, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3022, 0.4554, "Marleth Barleybrew",
                    "Travel to Marleth Barleybrew."),
            },
        },
        {
            id = "objective-315-the-perfect-stout",
            kind = "objective",
            priority = 880,
            text = "Collect 6 Shimmerweed dropped by Frostmane Seer and from the Shimmerweed Baskets in the area.",
            dependsOn = { "accept-315-the-perfect-stout" },
            complete = QuestState(315, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4000, 0.4300, "Frostmane Seer",
                    "Travel to Frostmane Seer."),
            },
        },
        {
            id = "objective-319-a-favor-for-evershine",
            kind = "objective",
            priority = 890,
            text = "Kill 6 Ice Claw Bear, 8 Elder Crag Boar and 8 Snow Leopard found west of Brewnall Village.",
            dependsOn = { "accept-319-a-favor-for-evershine" },
            complete = QuestState(319, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2800, 0.4850, "Ice Claw Bear",
                    "Travel to Ice Claw Bear."),
            },
        },
        {
            id = "turnin-315-the-perfect-stout",
            kind = "turnin",
            priority = 910,
            text = "Turn in The Perfect Stout to Rejold Barleybrew in Brewnall Village.",
            dependsOn = { "objective-315-the-perfect-stout" },
            complete = QuestState(315, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "turnin-319-a-favor-for-evershine",
            kind = "turnin",
            priority = 920,
            text = "Turn in A Favor for Evershine to Rejold Barleybrew in Brewnall Village.",
            dependsOn = { "objective-319-a-favor-for-evershine" },
            complete = QuestState(319, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "accept-320-return-to-bellowfiz",
            kind = "accept",
            priority = 930,
            text = "Accept Return to Bellowfiz from Rejold Barleybrew in Brewnall Village.",
            complete = QuestState(320, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "accept-413-shimmer-stout",
            kind = "accept",
            priority = 940,
            text = "Accept Shimmer Stout from Rejold Barleybrew in Brewnall Village.",
            complete = QuestState(413, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3020, 0.4562, "Rejold Barleybrew",
                    "Travel to Rejold Barleybrew."),
            },
        },
        {
            id = "objective-311-thunder-ale",
            kind = "objective",
            priority = 960,
            text = "Buy Thunder Ale from Innkeeper Belm in Thunderbrew Distillery.",
            dependsOn = { "accept-311-return-to-marleth" },
            complete = QuestState(311, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4740, 0.5250, "Innkeeper Belm",
                    "Travel to Innkeeper Belm."),
            },
        },
        {
            id = "turnin-310-bitter-rivals",
            kind = "turnin",
            priority = 970,
            text = "Turn in Bitter Rivals. This is an elite. Bring a group.",
            dependsOn = { "accept-310-bitter-rivals" },
            complete = QuestState(310, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4770, 0.5270, "Bitter Rivals",
                    "Travel to Bitter Rivals."),
            },
        },
        {
            id = "accept-311-return-to-marleth",
            kind = "accept",
            priority = 980,
            text = "Accept Return to Marleth.",
            complete = QuestState(311, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4770, 0.5270, "Return to Marleth",
                    "Travel to Return to Marleth."),
            },
        },
        {
            id = "turnin-311-return-to-marleth",
            kind = "turnin",
            priority = 1000,
            text = "Turn in Return to Marleth to Marleth Barleybrew in Brewnall Village.",
            dependsOn = { "objective-311-thunder-ale" },
            complete = QuestState(311, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3022, 0.4554, "Marleth Barleybrew",
                    "Travel to Marleth Barleybrew."),
            },
        },
        {
            id = "travel-287-frostmane-hold",
            kind = "travel",
            priority = 1010,
            text = "Travel to Frostmane Hold. Go inside the cave to explore Frostmane Hold and kill 5 Frostmane Headhunter.",
            complete = QuestState(287, "complete"),
            dependsOn = { "accept-287-frostmane-hold" },
            route = {
                Point(MAP.DUN_MOROGH, 0.2490, 0.5094, "Frostmane Hold",
                    "Travel to Frostmane Hold."),
            },
        },
        {
            id = "objective-287-frostmane-hold",
            kind = "objective",
            priority = 1020,
            text = "Go inside the cave to explore Frostmane Hold and kill 5 Frostmane Headhunter.",
            dependsOn = { "accept-287-frostmane-hold" },
            complete = QuestState(287, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2490, 0.5094, "Continue toward Frostmane Hold",
                    "Continue toward Frostmane Hold."),
                Point(MAP.DUN_MOROGH, 0.2288, 0.5207, "Frostmane Headhunter",
                    "Travel to Frostmane Headhunter."),
            },
        },
        {
            id = "objective-412-operation-recombobulation",
            kind = "objective",
            priority = 1040,
            text = "Kill Leper Gnome and collect 8 Restabilization Cog and 8 Gyromechanic Gear in Gnomeregan.",
            dependsOn = { "accept-412-operation-recombobulation" },
            complete = QuestState(412, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2505, 0.4290, "Leper Gnome",
                    "Travel to Leper Gnome."),
            },
        },
        {
            id = "turnin-287-frostmane-hold",
            kind = "turnin",
            priority = 1060,
            text = "Turn in Frostmane Hold to Senir Whitebeard in Kharanos.",
            dependsOn = { "objective-287-frostmane-hold" },
            complete = QuestState(287, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4666, 0.5383, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "accept-291-the-reports",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Accept The Reports from Senir Whitebeard in Kharanos.",
            complete = QuestState(291, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4666, 0.5383, "Senir Whitebeard",
                    "Travel to Senir Whitebeard."),
            },
        },
        {
            id = "turnin-412-operation-recombobulation",
            kind = "turnin",
            priority = 1080,
            text = "Turn in Operation Recombobulation to Razzle Sprysprocket in Kharanos.",
            dependsOn = { "objective-412-operation-recombobulation" },
            complete = QuestState(412, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4580, 0.4920, "Razzle Sprysprocket",
                    "Travel to Razzle Sprysprocket."),
            },
        },
        {
            id = "turnin-320-return-to-bellowfiz",
            kind = "turnin",
            priority = 1100,
            text = "Turn in Return to Bellowfiz to Pilot Bellowfiz in Steelgrill's Depot.",
            dependsOn = { "accept-320-return-to-bellowfiz" },
            complete = QuestState(320, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4949, 0.4837, "Pilot Bellowfiz",
                    "Travel to Pilot Bellowfiz."),
            },
        },
        {
            id = "accept-433-the-public-servant",
            kind = "accept",
            priority = 1120,
            text = "Accept The Public Servant from Senator Mehr Stonehallow in Gol'Bolar Quarry.",
            complete = QuestState(433, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6870, 0.5602, "Senator Mehr Stonehallow",
                    "Travel to Senator Mehr Stonehallow."),
            },
        },
        {
            id = "accept-432-those-blasted-troggs",
            kind = "accept",
            priority = 1130,
            text = "Accept Those Blasted Troggs! in Gol'Bolar Quarry.",
            complete = QuestState(432, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6910, 0.5630, "Gol'Bolar Quarry",
                    "Travel to Gol'Bolar Quarry."),
            },
        },
        {
            id = "accept-95212-never-saddle-on-quality",
            kind = "accept",
            priority = 1131,
            text = "Accept Never Saddle on Quality from Rudra Amberstill.",
            complete = QuestState(95212, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6300, 0.4980, "Rudra Amberstill",
                    "Travel to Rudra Amberstill."),
            },
        },
        {
            id = "objective-95212-never-saddle-on-quality",
            kind = "objective",
            priority = 1132,
            text = "Collect 6 Pristine Leopard Pelts from Elder Snow Leopards.",
            dependsOn = { "accept-95212-never-saddle-on-quality" },
            complete = QuestState(95212, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7140, 0.6200, "Elder Snow Leopard",
                    "Travel to Elder Snow Leopard."),
            },
        },
        {
            id = "turnin-95212-never-saddle-on-quality",
            kind = "turnin",
            priority = 1133,
            text = "Turn in Never Saddle on Quality to Rudra Amberstill.",
            dependsOn = { "objective-95212-never-saddle-on-quality" },
            complete = QuestState(95212, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6300, 0.4980, "Rudra Amberstill",
                    "Travel to Rudra Amberstill."),
            },
        },
        {
            id = "turnin-95213-stolen-blasting-powder",
            kind = "turnin",
            priority = 1134,
            conditions = {
                all = {
                    { quest = { id = 95213, state = "activeOrCompleted" } },
                },
            },
            text = "Use the Empty Powder Keg if a trogg drops it, then turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            complete = QuestState(95213, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "accept-95214-stolen-blasting-powder",
            kind = "accept",
            priority = 1135,
            conditions = {
                all = {
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Accept Stolen Blasting Powder from Quarrymaster Thesten.",
            dependsOn = { "turnin-95213-stolen-blasting-powder" },
            complete = QuestState(95214, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "objective-95214-stolen-blasting-powder",
            kind = "objective",
            priority = 1136,
            conditions = {
                all = {
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Collect 16 Stolen Blasting Powder from the troggs east of Gol'Bolar Quarry.",
            dependsOn = { "accept-95214-stolen-blasting-powder" },
            complete = QuestState(95214, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7380, 0.5120, "Rockjaw Ambusher",
                    "Travel to Rockjaw Ambusher."),
            },
        },
        {
            id = "turnin-95214-stolen-blasting-powder",
            kind = "turnin",
            priority = 1137,
            conditions = {
                all = {
                    { quest = { id = 95213, state = "completed" } },
                },
            },
            text = "Turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            dependsOn = { "objective-95214-stolen-blasting-powder" },
            complete = QuestState(95214, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6900, 0.5480, "Quarrymaster Thesten",
                    "Travel to Quarrymaster Thesten."),
            },
        },
        {
            id = "objective-433-the-public-servant",
            kind = "objective",
            priority = 1140,
            text = "Kill 10 Rockjaw Bonesnapper around the Gol'Bolar Quarry.",
            dependsOn = { "accept-433-the-public-servant" },
            complete = QuestState(433, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7058, 0.5669, "Rockjaw Bonesnapper",
                    "Travel to Rockjaw Bonesnapper."),
            },
        },
        {
            id = "objective-432-those-blasted-troggs",
            kind = "objective",
            priority = 1150,
            text = "Kill 6 Rockjaw Skullthumper around the Gol'Bolar Quarry.",
            dependsOn = { "accept-432-those-blasted-troggs" },
            complete = QuestState(432, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7058, 0.5669, "Rockjaw Skullthumper",
                    "Travel to Rockjaw Skullthumper."),
            },
        },
        {
            id = "turnin-433-the-public-servant",
            kind = "turnin",
            priority = 1160,
            text = "Turn in The Public Servant to Senator Mehr Stonehallow in Gol'Bolar Quarry.",
            dependsOn = { "objective-433-the-public-servant" },
            complete = QuestState(433, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6870, 0.5602, "Senator Mehr Stonehallow",
                    "Travel to Senator Mehr Stonehallow."),
            },
        },
        {
            id = "turnin-432-those-blasted-troggs",
            kind = "turnin",
            priority = 1170,
            text = "Turn in Those Blasted Troggs! to Foreman Stonebrow in Gol'Bolar Quarry.",
            dependsOn = { "objective-432-those-blasted-troggs" },
            complete = QuestState(432, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6912, 0.5630, "Foreman Stonebrow",
                    "Travel to Foreman Stonebrow."),
            },
        },
        {
            id = "accept-1879-speak-with-bink",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Speak with Bink from Magis Sparkmantle in Thunderbrew Distillery.",
            complete = QuestState(1879, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4736, 0.5192, "Magis Sparkmantle",
                    "Travel to Magis Sparkmantle."),
            },
        },
        {
            id = "accept-2218-road-to-salvation",
            kind = "accept",
            priority = 1200,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Road to Salvation from Hogral Bakkan in Thunderbrew Distillery.",
            complete = QuestState(2218, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4759, 0.5246, "Hogral Bakkan",
                    "Travel to Hogral Bakkan."),
            },
        },
        {
            id = "accept-6064-taming-the-beast",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Kharanos.",
            complete = QuestState(6064, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4582, 0.5303, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "objective-6064-taming-the-beast",
            kind = "objective",
            priority = 1220,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Use Taming Rod to tame a Large Crag Boar in Steelgrill's Depot.",
            dependsOn = { "accept-6064-taming-the-beast" },
            complete = QuestState(6064, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4792, 0.4713, "Large Crag Boar",
                    "Travel to Large Crag Boar."),
            },
        },
        {
            id = "turnin-6064-taming-the-beast",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Kharanos.",
            dependsOn = { "objective-6064-taming-the-beast" },
            complete = QuestState(6064, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4581, 0.5302, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "accept-6084-taming-the-beast",
            kind = "accept",
            priority = 1240,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Kharanos.",
            complete = QuestState(6084, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4581, 0.5302, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "objective-6084-taming-the-beast",
            kind = "objective",
            priority = 1250,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Use Taming Rod to tame a Snow Leopard Iceflow Lake.",
            dependsOn = { "accept-6084-taming-the-beast" },
            complete = QuestState(6084, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3460, 0.4708, "Snow Leopard",
                    "Travel to Snow Leopard."),
            },
        },
        {
            id = "turnin-6084-taming-the-beast",
            kind = "turnin",
            priority = 1260,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Kharanos.",
            dependsOn = { "objective-6084-taming-the-beast" },
            complete = QuestState(6084, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4581, 0.5305, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "accept-6085-taming-the-beast",
            kind = "accept",
            priority = 1270,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Kharanos.",
            complete = QuestState(6085, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4581, 0.5305, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "objective-6085-taming-the-beast",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Use Taming Rod to tame a Ice Claw Bear in Iceflow Lake.",
            dependsOn = { "accept-6085-taming-the-beast" },
            complete = QuestState(6085, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.3170, 0.3878, "Ice Claw Bear",
                    "Travel to Ice Claw Bear."),
            },
        },
        {
            id = "turnin-6085-taming-the-beast",
            kind = "turnin",
            priority = 1290,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Kharanos.",
            dependsOn = { "objective-6085-taming-the-beast" },
            complete = QuestState(6085, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4580, 0.5304, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "accept-6086-training-the-beast",
            kind = "accept",
            priority = 1300,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Training the Beast from Grif Wildheart in Kharanos.",
            complete = QuestState(6086, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4613, 0.5229, "Grif Wildheart",
                    "Travel to Grif Wildheart."),
            },
        },
        {
            id = "accept-1679-muren-stormpike",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Muren Stormpike from Granis Swiftaxe in Thunderbrew Distillery.",
            complete = QuestState(1679, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4735, 0.5264, "Granis Swiftaxe",
                    "Travel to Granis Swiftaxe."),
            },
        },
        {
            id = "turnin-1679-muren-stormpike",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Muren Stormpike to Muren Stormpike in Hall of Arms.",
            dependsOn = { "accept-1679-muren-stormpike" },
            complete = QuestState(1679, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7076, 0.9048, "Muren Stormpike",
                    "Travel to Muren Stormpike."),
            },
        },
        {
            id = "turnin-97263-your-package-has-arrived",
            kind = "turnin",
            priority = 1321,
            conditions = {
                all = {
                    { quest = { id = 97263, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Your Package Has Arrived to Eldrun Stormbreaker in Ironforge if you are carrying Eldrun's package.",
            complete = QuestState(97263, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4740, 0.1360, "Eldrun Stormbreaker",
                    "Travel to Eldrun Stormbreaker."),
            },
        },
        {
            id = "accept-1678-vejrek",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Vejrek from Muren Stormpike in Hall of Arms.",
            complete = QuestState(1678, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7076, 0.9048, "Muren Stormpike",
                    "Travel to Muren Stormpike."),
            },
        },
        {
            id = "objective-1678-vejrek",
            kind = "objective",
            priority = 1350,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Kill Vejrek and collect Vejrek's Head in Frostmane Hold.",
            dependsOn = { "accept-1678-vejrek" },
            complete = QuestState(1678, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2766, 0.5778, "Vejrek",
                    "Travel to Vejrek."),
            },
        },
        {
            id = "turnin-1678-vejrek",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Vejrek to Muren Stormpike in Hall of Arms.",
            dependsOn = { "objective-1678-vejrek" },
            complete = QuestState(1678, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6242, 0.3560, "Muren Stormpike",
                    "Travel to Muren Stormpike."),
            },
        },
        {
            id = "accept-1680-tormus-deepforge",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Tormus Deepforge in Hall of Arms.",
            complete = QuestState(1680, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.6234, 0.3567, "Hall of Arms",
                    "Travel to Hall of Arms."),
            },
        },
        {
            id = "turnin-1680-tormus-deepforge",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Tormus Deepforge to Tormus Deepforge in The Great Forge.",
            dependsOn = { "accept-1680-tormus-deepforge" },
            complete = QuestState(1680, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4874, 0.4244, "Tormus Deepforge",
                    "Travel to Tormus Deepforge."),
            },
        },
        {
            id = "accept-1681-ironband-s-compound",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Ironband's Compound from Tormus Deepforge in The Great Forge.",
            complete = QuestState(1681, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4874, 0.4244, "Tormus Deepforge",
                    "Travel to Tormus Deepforge."),
            },
        },
        {
            id = "objective-1681-ironband-s-compound",
            kind = "objective",
            priority = 1410,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Collect Umbral Ore from the Ironband lockbox in Ironband's Compound.",
            dependsOn = { "accept-1681-ironband-s-compound" },
            complete = QuestState(1681, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7795, 0.6221, "Ironband's Compound",
                    "Travel to Ironband's Compound."),
            },
        },
        {
            id = "turnin-1681-ironband-s-compound",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Ironband's Compound to Tormus Deepforge in The Great Forge.",
            dependsOn = { "objective-1681-ironband-s-compound" },
            complete = QuestState(1681, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4865, 0.4307, "Tormus Deepforge",
                    "Travel to Tormus Deepforge."),
            },
        },
        {
            id = "turnin-6086-training-the-beast",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Training the Beast to Belia Thundergranite in Hall of Arms.",
            dependsOn = { "accept-6086-training-the-beast" },
            complete = QuestState(6086, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7093, 0.8566, "Belia Thundergranite",
                    "Travel to Belia Thundergranite."),
            },
        },
        {
            id = "turnin-2218-road-to-salvation",
            kind = "turnin",
            priority = 1460,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Road to Salvation to Hulfdan Blackbeard in The Forlorn Cavern.",
            dependsOn = { "accept-2218-road-to-salvation" },
            complete = QuestState(2218, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5188, 0.1466, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard."),
            },
        },
        {
            id = "accept-2238-simple-subterfugin",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Simple Subterfugin' from Hulfdan Blackbeard in The Forlorn Cavern.",
            complete = QuestState(2238, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5188, 0.1466, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard."),
            },
        },
        {
            id = "turnin-2238-simple-subterfugin",
            kind = "turnin",
            priority = 1490,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Simple Subterfugin' to Onin MacHammar in Gnomeregan.",
            dependsOn = { "accept-2238-simple-subterfugin" },
            complete = QuestState(2238, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2518, 0.4444, "Onin MacHammar",
                    "Travel to Onin MacHammar."),
            },
        },
        {
            id = "accept-2239-onin-s-report",
            kind = "accept",
            priority = 1500,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Onin's Report from Onin MacHammar in Gnomeregan.",
            complete = QuestState(2239, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2518, 0.4444, "Onin MacHammar",
                    "Travel to Onin MacHammar."),
            },
        },
        {
            id = "turnin-2239-onin-s-report",
            kind = "turnin",
            priority = 1520,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Onin's Report to Hulfdan Blackbeard in The Forlorn Cavern.",
            dependsOn = { "accept-2239-onin-s-report" },
            complete = QuestState(2239, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5189, 0.1485, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard."),
            },
        },
        {
            id = "accept-1715-the-slaughtered-lamb",
            kind = "accept",
            priority = 1530,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Slaughtered Lamb from Lago Blackwrench in The Forlorn Cavern.",
            complete = QuestState(1715, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4764, 0.0976, "Lago Blackwrench",
                    "Travel to Lago Blackwrench."),
            },
        },
        {
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
            priority = 1550,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Deeprun Rat Roundup from Monty in Deeprun Tram.",
            complete = QuestState(6661, "activeOrCompleted"),
        },
        {
            id = "objective-6661-deeprun-rat-roundup",
            kind = "objective",
            priority = 1560,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Capture 5 Deeprun Rat by using the Rat Catcher's Flute. Lead the rats back to Monty. Don't forget to turn in the flute when you're finished.",
            dependsOn = { "accept-6661-deeprun-rat-roundup" },
            complete = QuestState(6661, "complete"),
        },
        {
            id = "turnin-6661-deeprun-rat-roundup",
            kind = "turnin",
            priority = 1570,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Deeprun Rat Roundup to Monty in Deeprun Tram.",
            dependsOn = { "objective-6661-deeprun-rat-roundup" },
            complete = QuestState(6661, "completed"),
        },
        {
            id = "turnin-1715-the-slaughtered-lamb",
            kind = "turnin",
            priority = 1590,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Slaughtered Lamb to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "accept-1715-the-slaughtered-lamb" },
            complete = QuestState(1715, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3960, 0.8460, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1688-surena-caledon",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Surena Caledon from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1688, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3960, 0.8460, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1688-surena-caledon",
            kind = "objective",
            priority = 1620,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Surena Caledon and collect Surena's Choker in Brackwell Pumpkin Patch She is guarded by 2 other enemies, you will need to pull them away.",
            dependsOn = { "accept-1688-surena-caledon" },
            complete = QuestState(1688, "complete"),
            route = {
                Point(MAP.ELWYNN, 0.7102, 0.8076, "Surena Caledon",
                    "Travel to Surena Caledon."),
            },
        },
        {
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            priority = 1640,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Surena Caledon to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1688-surena-caledon" },
            complete = QuestState(1688, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3960, 0.8460, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1689-the-binding",
            kind = "accept",
            priority = 1650,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1689, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3960, 0.8460, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1689-the-binding",
            kind = "objective",
            priority = 1660,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Keep going down the stair until you find the purple summoning circle and use Bloodstone Choker to summon and kill a Summoned Voidwalker in The Slaughtered Lamb.",
            dependsOn = { "accept-1689-the-binding" },
            complete = QuestState(1689, "complete"),
            route = {
                Point(MAP.STORMWIND, 0.2506, 0.7928, "Continue toward The Binding",
                    "Continue toward The Binding."),
                Point(MAP.STORMWIND, 0.2519, 0.7733, "Summoned Voidwalker",
                    "Travel to Summoned Voidwalker."),
            },
        },
        {
            id = "turnin-1689-the-binding",
            kind = "turnin",
            priority = 1670,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1689-the-binding" },
            complete = QuestState(1689, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3960, 0.8460, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "turnin-1879-speak-with-bink",
            kind = "turnin",
            priority = 1680,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Speak with Bink to Bink in Hall of Mysteries.",
            dependsOn = { "accept-1879-speak-with-bink" },
            complete = QuestState(1879, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2723, 0.0833, "Bink",
                    "Travel to Bink."),
            },
        },
        {
            id = "accept-1880-mage-tastic-gizmonitor",
            kind = "accept",
            priority = 1690,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Mage-tastic Gizmonitor from Bink in Hall of Mysteries.",
            complete = QuestState(1880, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2723, 0.0833, "Bink",
                    "Travel to Bink."),
            },
        },
        {
            id = "objective-1880-mage-tastic-gizmonitor",
            kind = "objective",
            priority = 1710,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Collect Mage-Tastic Gizmonitor from Blink toolbox in Gnomeregan.",
            dependsOn = { "accept-1880-mage-tastic-gizmonitor" },
            complete = QuestState(1880, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.2769, 0.3642, "Gnomeregan",
                    "Travel to Gnomeregan."),
            },
        },
        {
            id = "turnin-1880-mage-tastic-gizmonitor",
            kind = "turnin",
            priority = 1720,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Mage-tastic Gizmonitor to Bink in Hall of Mysteries.",
            dependsOn = { "objective-1880-mage-tastic-gizmonitor" },
            complete = QuestState(1880, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2724, 0.0831, "Bink",
                    "Travel to Bink."),
            },
        },
        {
            id = "accept-419-the-lost-pilot",
            kind = "accept",
            priority = 1740,
            text = "Accept The Lost Pilot from Pilot Hammerfoot in North Gate Outpost.",
            complete = QuestState(419, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.8096, 0.4295, "Continue toward The Lost Pilot",
                    "Continue toward The Lost Pilot."),
                Point(MAP.DUN_MOROGH, 0.8390, 0.3910, "Pilot Hammerfoot",
                    "Travel to Pilot Hammerfoot."),
            },
        },
        {
            id = "turnin-419-the-lost-pilot",
            kind = "turnin",
            priority = 1750,
            text = "Turn in The Lost Pilot in North Gate Outpost.",
            dependsOn = { "accept-419-the-lost-pilot" },
            complete = QuestState(419, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7970, 0.3620, "North Gate Outpost",
                    "Travel to North Gate Outpost."),
            },
        },
        {
            id = "accept-417-a-pilot-s-revenge",
            kind = "accept",
            priority = 1760,
            text = "Accept A Pilot's Revenge in North Gate Outpost.",
            complete = QuestState(417, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7970, 0.3620, "North Gate Outpost",
                    "Travel to North Gate Outpost."),
            },
        },
        {
            id = "objective-417-a-pilot-s-revenge",
            kind = "objective",
            priority = 1770,
            text = "Kill Mangeclaw and collect Mangy Claw.",
            dependsOn = { "accept-417-a-pilot-s-revenge" },
            complete = QuestState(417, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7850, 0.3760, "Mangeclaw",
                    "Travel to Mangeclaw."),
            },
        },
        {
            id = "turnin-417-a-pilot-s-revenge",
            kind = "turnin",
            priority = 1780,
            text = "Turn in A Pilot's Revenge to Pilot Hammerfoot in North Gate Outpost.",
            dependsOn = { "objective-417-a-pilot-s-revenge" },
            complete = QuestState(417, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.8390, 0.3910, "Pilot Hammerfoot",
                    "Travel to Pilot Hammerfoot."),
            },
        },
        {
            id = "turnin-413-shimmer-stout",
            kind = "turnin",
            priority = 1790,
            text = "Turn in Shimmer Stout to Mountaineer Barleybrew in South Gate Outpost.",
            dependsOn = { "accept-413-shimmer-stout" },
            complete = QuestState(413, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7906, 0.5155, "Continue toward Shimmer Stout",
                    "Continue toward Shimmer Stout."),
                Point(MAP.DUN_MOROGH, 0.8230, 0.5340, "Continue toward Shimmer Stout",
                    "Continue toward Shimmer Stout."),
                Point(MAP.DUN_MOROGH, 0.8629, 0.4886, "Mountaineer Barleybrew",
                    "Travel to Mountaineer Barleybrew."),
            },
        },
        {
            id = "accept-414-stout-to-kadrell",
            kind = "accept",
            priority = 1800,
            text = "Accept Stout to Kadrell from Mountaineer Barleybrew in South Gate Outpost.",
            complete = QuestState(414, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.8629, 0.4886, "Mountaineer Barleybrew",
                    "Travel to Mountaineer Barleybrew."),
            },
        },
        {
            id = "accept-224-in-defense-of-the-king-s-lands",
            kind = "accept",
            priority = 1820,
            text = "Accept In Defense of the King's Lands from Mountaineer Cobbleflint in Valley of Kings.",
            complete = QuestState(224, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2185, 0.7343, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "accept-267-the-trogg-threat",
            kind = "accept",
            priority = 1830,
            text = "Accept The Trogg Threat from Captain Rugelfuss in Valley of Kings.",
            complete = QuestState(267, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2323, 0.7366, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "objective-224-in-defense-of-the-king-s-lands",
            kind = "objective",
            priority = 1840,
            text = "Kill 10 Stonesplinter Trogg and 10 Stonesplinter Scout which can be found in the area west of Thelsammar.",
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
            complete = QuestState(224, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2900, 0.5300, "Stonesplinter Trogg",
                    "Travel to Stonesplinter Trogg."),
            },
        },
        {
            id = "objective-267-the-trogg-threat",
            kind = "objective",
            priority = 1850,
            text = "Kill Stonesplinter Scout and Stonesplinter Trogg in the area west of Thelsammar to collect 8 Trogg Stone Tooth.",
            dependsOn = { "accept-267-the-trogg-threat" },
            complete = QuestState(267, "complete"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2900, 0.5300, "Stonesplinter Scout",
                    "Travel to Stonesplinter Scout."),
            },
        },
        {
            id = "turnin-267-the-trogg-threat",
            kind = "turnin",
            priority = 1860,
            text = "Turn in The Trogg Threat to Captain Rugelfuss in Valley of Kings.",
            dependsOn = { "objective-267-the-trogg-threat" },
            complete = QuestState(267, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2323, 0.7366, "Captain Rugelfuss",
                    "Travel to Captain Rugelfuss."),
            },
        },
        {
            id = "turnin-224-in-defense-of-the-king-s-lands",
            kind = "turnin",
            priority = 1870,
            text = "Turn in In Defense of the King's Lands to Mountaineer Cobbleflint in Valley of Kings.",
            dependsOn = { "objective-224-in-defense-of-the-king-s-lands" },
            complete = QuestState(224, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2203, 0.7305, "Mountaineer Cobbleflint",
                    "Travel to Mountaineer Cobbleflint."),
            },
        },
        {
            id = "accept-237-in-defense-of-the-king-s-lands",
            kind = "accept",
            priority = 1880,
            text = "Accept In Defense of the King's Lands from Mountaineer Gravelgaw in Valley of Kings.",
            complete = QuestState(237, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2352, 0.7637, "Mountaineer Gravelgaw",
                    "Travel to Mountaineer Gravelgaw."),
            },
        },
        {
            id = "turnin-414-stout-to-kadrell",
            kind = "turnin",
            priority = 1900,
            text = "Turn in Stout to Kadrell to Mountaineer Kadrell in Thelsamar.",
            dependsOn = { "accept-414-stout-to-kadrell" },
            complete = QuestState(414, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3494, 0.4704, "Mountaineer Kadrell",
                    "Travel to Mountaineer Kadrell."),
            },
        },
        {
            id = "accept-416-rat-catching",
            kind = "accept",
            priority = 1910,
            text = "Accept Rat Catching from Mountaineer Kadrell in Thelsamar.",
            complete = QuestState(416, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3494, 0.4704, "Mountaineer Kadrell",
                    "Travel to Mountaineer Kadrell."),
            },
        },
        {
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            priority = 1920,
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell in Thelsamar.",
            complete = QuestState(1339, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3510, 0.4702, "Mountaineer Kadrell",
                    "Travel to Mountaineer Kadrell."),
            },
        },
        {
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            priority = 1930,
            text = "Accept Thelsamar Blood Sausages in Stoutlager Inn.",
            complete = QuestState(418, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3488, 0.4918, "Stoutlager Inn",
                    "Travel to Stoutlager Inn."),
            },
        },
        {
            id = "accept-6387-honor-students",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Accept Honor Students from Brock Stoneseeker in Thelsamar.",
            complete = QuestState(6387, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3707, 0.4779, "Brock Stoneseeker",
                    "Travel to Brock Stoneseeker."),
            },
        },
        {
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            priority = 1960,
            text = "Turn in Mountaineer Stormpike's Task to Mountaineer Stormpike in Algaz Station.",
            dependsOn = { "accept-1339-mountaineer-stormpike-s-task" },
            complete = QuestState(1339, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2479, 0.1840, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "accept-1338-stormpike-s-order",
            kind = "accept",
            priority = 1970,
            text = "Accept Stormpike's Order from Mountaineer Stormpike in Algaz Station.",
            complete = QuestState(1338, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.2479, 0.1840, "Mountaineer Stormpike",
                    "Travel to Mountaineer Stormpike."),
            },
        },
        {
            id = "turnin-6387-honor-students",
            kind = "turnin",
            priority = 1990,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Turn in Honor Students to Thorgrum Borrelson in Thelsamar.",
            dependsOn = { "accept-6387-honor-students" },
            complete = QuestState(6387, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3388, 0.5095, "Thorgrum Borrelson",
                    "Travel to Thorgrum Borrelson."),
            },
        },
        {
            id = "accept-6391-ride-to-ironforge",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Accept Ride to Ironforge from Thorgrum Borrelson in Thelsamar.",
            complete = QuestState(6391, "activeOrCompleted"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3388, 0.5095, "Thorgrum Borrelson",
                    "Travel to Thorgrum Borrelson."),
            },
        },
        {
            id = "turnin-291-the-reports",
            kind = "turnin",
            priority = 2020,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Turn in The Reports to Senator Barin Redstone in The Great Forge.",
            dependsOn = { "accept-291-the-reports" },
            complete = QuestState(291, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.3958, 0.5716, "Senator Barin Redstone",
                    "Travel to Senator Barin Redstone."),
            },
        },
        {
            id = "turnin-6391-ride-to-ironforge",
            kind = "turnin",
            priority = 2030,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Turn in Ride to Ironforge to Golnir Bouldertoe in The Great Forge.",
            dependsOn = { "accept-6391-ride-to-ironforge" },
            complete = QuestState(6391, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5150, 0.2630, "Golnir Bouldertoe",
                    "Travel to Golnir Bouldertoe."),
            },
        },
        {
            id = "accept-6388-gryth-thurden",
            kind = "accept",
            priority = 2040,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Accept Gryth Thurden from Golnir Bouldertoe in The Great Forge.",
            complete = QuestState(6388, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5130, 0.2789, "Golnir Bouldertoe",
                    "Travel to Golnir Bouldertoe."),
            },
        },
        {
            id = "turnin-6388-gryth-thurden",
            kind = "turnin",
            priority = 2050,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Turn in Gryth Thurden to Gryth Thurden in The Great Forge.",
            dependsOn = { "accept-6388-gryth-thurden" },
            complete = QuestState(6388, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5548, 0.4787, "Gryth Thurden",
                    "Travel to Gryth Thurden."),
            },
        },
        {
            id = "accept-6392-return-to-brock",
            kind = "accept",
            priority = 2060,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Accept Return to Brock from Gryth Thurden in The Great Forge.",
            complete = QuestState(6392, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5548, 0.4787, "Gryth Thurden",
                    "Travel to Gryth Thurden."),
            },
        },
        {
            id = "turnin-6392-return-to-brock",
            kind = "turnin",
            priority = 2080,
            conditions = {
                all = {
                    { race = 3 },
                },
            },
            text = "Turn in Return to Brock to Brock Stoneseeker in Thelsamar.",
            dependsOn = { "accept-6392-return-to-brock" },
            complete = QuestState(6392, "completed"),
            route = {
                Point(MAP.LOCH_MODAN, 0.3707, 0.4779, "Brock Stoneseeker",
                    "Travel to Brock Stoneseeker."),
            },
        },
    },
})
