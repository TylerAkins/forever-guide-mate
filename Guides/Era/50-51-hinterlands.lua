local _, ns = ...

-- Horde Era leveling route for the Hinterlands, levels 50-51.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    HINTERLANDS = 1425,
    AZSHARA = 1447,
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
    id = "leveling-era-50-51-hinterlands",
    title = "50-51 Hinterlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 50 } },
        },
    },
    goals = {
        {
            id = "travel-7815-revantusk-village",
            kind = "travel",
            priority = 10,
            text = "Travel to Revantusk Village in The Hinterlands.",
            route = {
                Point(MAP.HINTERLANDS, 0.8034, 0.8148, "Revantusk Village",
                    "Travel to Revantusk Village."),
            },
        },
        {
            id = "accept-7815-snapjaws-mon",
            kind = "accept",
            priority = 20,
            text = "Accept Snapjaws, Mon! from Katoom the Angler in Revantusk Village.",
            complete = QuestState(7815, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.8034, 0.8148, "Katoom the Angler",
                    "Travel to Katoom the Angler."),
            },
        },
        {
            id = "accept-7816-gammerita-mon",
            kind = "accept",
            priority = 30,
            text = "Accept Gammerita, Mon! in The Overlook Cliffs.",
            complete = QuestState(7816, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.7985, 0.5848, "The Overlook Cliffs",
                    "Travel to The Overlook Cliffs."),
            },
        },
        {
            id = "accept-7843-the-final-message-to-the-wildhammer",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 7842, state = "completed" } },
                },
            },
            text = "Accept The Final Message to the Wildhammer from Otho Moji'ko in Revantusk Village.",
            complete = QuestState(7843, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.7936, 0.7907, "Otho Moji'ko",
                    "Travel to Otho Moji'ko."),
            },
        },
        {
            id = "accept-7840-lard-lost-his-lunch",
            kind = "accept",
            priority = 50,
            text = "Accept Lard Lost His Lunch from Lard in Revantusk Village.",
            complete = QuestState(7840, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.7812, 0.8141, "Lard",
                    "Travel to Lard."),
            },
        },
        {
            id = "objective-7815-snapjaws-mon",
            kind = "objective",
            priority = 60,
            text = "Kill 15 Saltwater Snapjaw in The Overlook Cliffs.",
            dependsOn = { "accept-7815-snapjaws-mon" },
            complete = QuestState(7815, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.7732, 0.6836, "Saltwater Snapjaw",
                    "Travel to Saltwater Snapjaw."),
            },
        },
        {
            id = "objective-580-1-whiskey-slim-s-lost-grog",
            kind = "objective",
            priority = 70,
            text = "Collect 12 Pupellyverbos Port from the ground near the water around The Overlook Cliffs.",
            complete = QuestObjective(580, 1),
            route = {
                Point(MAP.HINTERLANDS, 0.7910, 0.7161, "Continue toward Whiskey Slim's Lost Grog",
                    "Continue toward Whiskey Slim's Lost Grog."),
                Point(MAP.HINTERLANDS, 0.7914, 0.6409, "Continue toward Whiskey Slim's Lost Grog",
                    "Continue toward Whiskey Slim's Lost Grog."),
                Point(MAP.HINTERLANDS, 0.8079, 0.5888, "Continue toward Whiskey Slim's Lost Grog",
                    "Continue toward Whiskey Slim's Lost Grog."),
                Point(MAP.HINTERLANDS, 0.8201, 0.4985, "The Overlook Cliffs",
                    "Travel to The Overlook Cliffs."),
            },
        },
        {
            id = "objective-7816-gammerita-mon",
            kind = "objective",
            priority = 80,
            text = "Kill Gammerita and collect Katoom's Best Lure in The Overlook Cliffs.",
            dependsOn = { "accept-7816-gammerita-mon" },
            complete = QuestState(7816, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.8017, 0.5842, "Gammerita",
                    "Travel to Gammerita."),
            },
        },
        {
            id = "turnin-626-cortello-s-riddle",
            kind = "turnin",
            priority = 90,
            text = "Turn in Cortello's Riddle in The Overlook Cliffs.",
            complete = QuestState(626, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.8082, 0.4679, "The Overlook Cliffs",
                    "Travel to The Overlook Cliffs."),
            },
        },
        {
            id = "objective-7840-lard-lost-his-lunch",
            kind = "objective",
            priority = 100,
            text = "Click on Lard's Picnic Basket in the small island and three level 49 Vilebranch Kidnapper will appear, kill them to collect Lard's Lunch.",
            dependsOn = { "accept-7840-lard-lost-his-lunch" },
            complete = QuestState(7840, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.8435, 0.4108, "Vilebranch Kidnapper",
                    "Travel to Vilebranch Kidnapper."),
            },
        },
        {
            id = "travel-2641-valorwind-lake",
            kind = "travel",
            priority = 110,
            text = "Travel to Valorwind Lake.",
            route = {
                Point(MAP.HINTERLANDS, 0.7636, 0.6093, "Continue toward Valorwind Lake",
                    "Continue toward Valorwind Lake."),
                Point(MAP.HINTERLANDS, 0.7174, 0.6536, "Continue toward Valorwind Lake",
                    "Continue toward Valorwind Lake."),
                Point(MAP.HINTERLANDS, 0.4004, 0.5993, "Valorwind Lake",
                    "Travel to Valorwind Lake."),
            },
        },
        {
            id = "objective-2641-violet-tragan",
            kind = "objective",
            priority = 120,
            text = "Collect Violet Tragan from the mushroom underwater in the middle of Valorwind Lake.",
            complete = QuestState(2641, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4005, 0.5989, "Valorwind Lake",
                    "Travel to Valorwind Lake."),
            },
        },
        {
            id = "travel-7843-aerie-peak",
            kind = "travel",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 7842, state = "completed" } },
                },
            },
            text = "Travel to Aerie Peak.",
            route = {
                Point(MAP.HINTERLANDS, 0.1400, 0.4800, "Aerie Peak",
                    "Travel to Aerie Peak."),
            },
        },
        {
            id = "objective-7843-the-final-message-to-the-wildhammer",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 7842, state = "completed" } },
                },
            },
            text = "Click on the well in Aerie Peak.",
            dependsOn = { "accept-7843-the-final-message-to-the-wildhammer" },
            complete = QuestState(7843, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.1400, 0.4800, "Aerie Peak",
                    "Travel to Aerie Peak."),
            },
        },
        {
            id = "accept-836-rescue-oox-09-hl",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 485, state = "completed" } },
                },
            },
            text = "Accept Rescue OOX-09/HL! from Homing Robot OOX-09/HL in The Hinterlands.",
            complete = QuestState(836, "activeOrCompleted"),
            route = {
                Point(MAP.HINTERLANDS, 0.4935, 0.3768, "Homing Robot OOX-09/HL",
                    "Travel to Homing Robot OOX-09/HL."),
            },
        },
        {
            id = "objective-836-rescue-oox-09-hl",
            kind = "objective",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 485, state = "completed" } },
                },
            },
            text = "Escort Homing Robot OOX-09/HL to the shoreline beyond The Overlook Cliffs You will be ambushed by 3 level 47 Savage Owlbeast and 3 Trolls, and 1 Wolf on seperate occassions.",
            dependsOn = { "accept-836-rescue-oox-09-hl" },
            complete = QuestState(836, "complete"),
            route = {
                Point(MAP.HINTERLANDS, 0.4827, 0.4123, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.4809, 0.4486, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.5337, 0.4467, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.5782, 0.5014, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.6193, 0.5405, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.6318, 0.5618, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.6600, 0.6113, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.7231, 0.6622, "Continue toward Rescue OOX-09/HL!",
                    "Continue toward Rescue OOX-09/HL!."),
                Point(MAP.HINTERLANDS, 0.7899, 0.6133, "Homing Robot OOX-09/HL",
                    "Travel to Homing Robot OOX-09/HL."),
            },
        },
        {
            id = "travel-revantusk-village",
            kind = "travel",
            priority = 170,
            text = "Travel to Revantusk Village.",
            route = {
                Point(MAP.HINTERLANDS, 0.7938, 0.7908, "Revantusk Village",
                    "Travel to Revantusk Village."),
            },
        },
        {
            id = "turnin-7843-the-final-message-to-the-wildhammer",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 7842, state = "completed" } },
                },
            },
            text = "Turn in The Final Message to the Wildhammer to Otho Moji'ko in Revantusk Village.",
            dependsOn = { "objective-7843-the-final-message-to-the-wildhammer" },
            complete = QuestState(7843, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.7938, 0.7908, "Otho Moji'ko",
                    "Travel to Otho Moji'ko."),
            },
        },
        {
            id = "turnin-7815-snapjaws-mon",
            kind = "turnin",
            priority = 190,
            text = "Turn in Snapjaws, Mon! to Katoom the Angler in Revantusk Village.",
            dependsOn = { "objective-7815-snapjaws-mon" },
            complete = QuestState(7815, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.8036, 0.8152, "Katoom the Angler",
                    "Travel to Katoom the Angler."),
            },
        },
        {
            id = "turnin-7816-gammerita-mon",
            kind = "turnin",
            priority = 200,
            text = "Turn in Gammerita, Mon! to Katoom the Angler in Revantusk Village.",
            dependsOn = { "objective-7816-gammerita-mon" },
            complete = QuestState(7816, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.8036, 0.8152, "Katoom the Angler",
                    "Travel to Katoom the Angler."),
            },
        },
        {
            id = "turnin-7840-lard-lost-his-lunch",
            kind = "turnin",
            priority = 210,
            text = "Turn in Lard Lost His Lunch to Lard in Revantusk Village.",
            dependsOn = { "objective-7840-lard-lost-his-lunch" },
            complete = QuestState(7840, "completed"),
            route = {
                Point(MAP.HINTERLANDS, 0.7815, 0.8138, "Lard",
                    "Travel to Lard."),
            },
        },
        {
            id = "travel-valormok",
            kind = "travel",
            priority = 220,
            text = "Travel to Valormok in Azshara.",
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Valormok",
                    "Travel to Valormok."),
            },
        },
        {
            id = "turnin-3562-magatha-s-payment-to-jediga",
            kind = "turnin",
            priority = 230,
            text = "Turn in Magatha's Payment to Jediga to Jediga in Valormok.",
            complete = QuestState(3562, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "turnin-3563-jes-rimon-s-payment-to-jediga",
            kind = "turnin",
            priority = 240,
            text = "Turn in Jes'rimon's Payment to Jediga to Jediga in Valormok.",
            complete = QuestState(3563, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "turnin-3564-andron-s-payment-to-jediga",
            kind = "turnin",
            priority = 250,
            text = "Turn in Andron's Payment to Jediga to Jediga in Valormok.",
            complete = QuestState(3564, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2256, 0.5141, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "travel-ratchet",
            kind = "travel",
            priority = 260,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4502, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Ratchet.",
            route = {
                Point(MAP.BARRENS, 0.6254, 0.3850, "Ratchet",
                    "Travel to Ratchet."),
            },
        },
        {
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            priority = 270,
            text = "Accept Volcanic Activity from Liv Rizzlefix in Ratchet.",
            complete = QuestState(4502, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6245, 0.3872, "Liv Rizzlefix",
                    "Travel to Liv Rizzlefix."),
            },
        },
    },
})
