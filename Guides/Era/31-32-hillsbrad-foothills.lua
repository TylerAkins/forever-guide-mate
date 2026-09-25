local _, ns = ...

-- Alliance Era leveling route for Hillsbrad Foothills, levels 31-32.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    HILLSBRAD = 1424,
    WETLANDS = 1437,
    ARATHI = 1417,
    ALTERAC = 1416,
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
    id = "leveling-era-31-32-hillsbrad-foothills",
    title = "31-32 Hillsbrad Foothills (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 31 } },
        },
    },
    goals = {
        {
            id = "accept-472-fall-of-dun-modr",
            kind = "accept",
            priority = 20,
            text = "Accept Fall of Dun Modr from Harlo Barnaby in Menethil Harbor.",
            complete = QuestState(472, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1083, 0.5585, "Harlo Barnaby",
                    "Travel to Harlo Barnaby."),
            },
        },
        {
            id = "turnin-472-fall-of-dun-modr",
            kind = "turnin",
            priority = 40,
            text = "Turn in Fall of Dun Modr to Longbraid the Grim in Dun Modr.",
            dependsOn = { "accept-472-fall-of-dun-modr" },
            complete = QuestState(472, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.4992, 0.1823, "Longbraid the Grim",
                    "Travel to Longbraid the Grim."),
            },
        },
        {
            id = "accept-631-the-thandol-span",
            kind = "accept",
            priority = 50,
            text = "Accept The Thandol Span from Longbraid the Grim in Dun Modr.",
            complete = QuestState(631, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4992, 0.1823, "Longbraid the Grim",
                    "Travel to Longbraid the Grim."),
            },
        },
        {
            id = "accept-304-a-grim-task",
            kind = "accept",
            priority = 60,
            text = "Accept A Grim Task from Rhag Garmason in Dun Modr.",
            complete = QuestState(304, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4968, 0.1824, "Rhag Garmason",
                    "Travel to Rhag Garmason."),
            },
        },
        {
            id = "accept-303-the-dark-iron-war",
            kind = "accept",
            priority = 70,
            text = "Accept The Dark Iron War from Motley Garmason in Dun Modr.",
            complete = QuestState(303, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4969, 0.1830, "Motley Garmason",
                    "Travel to Motley Garmason."),
            },
        },
        {
            id = "objective-304-a-grim-task",
            kind = "objective",
            priority = 80,
            text = "Kill Balgaras the Foul and loot Ear of Balgaras in Direforge Hill This is an elite group quest and not soloable, safe to skip.",
            dependsOn = { "accept-304-a-grim-task" },
            complete = QuestState(304, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.6000, 0.2700, "Balgaras the Foul",
                    "Travel to Balgaras the Foul."),
            },
        },
        {
            id = "objective-303-the-dark-iron-war",
            kind = "objective",
            priority = 90,
            text = "Kill 15 Dark Iron Dwarf, 5 Dark Iron Tunneler, 5 Dark Iron Saboteur and 5 Dark Iron Demolitionist in Direforge Hill This is an elite group quest, you can solo slowly it for a lot XP, safe to skip.",
            dependsOn = { "accept-303-the-dark-iron-war" },
            complete = QuestState(303, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.4780, 0.1730, "Continue toward The Dark Iron War",
                    "Continue toward The Dark Iron War."),
                Point(MAP.WETLANDS, 0.6070, 0.2170, "Dark Iron Dwarf",
                    "Travel to Dark Iron Dwarf."),
            },
        },
        {
            id = "turnin-304-a-grim-task",
            kind = "turnin",
            priority = 100,
            text = "Turn in A Grim Task to Longbraid the Grim in Dun Modr.",
            dependsOn = { "objective-304-a-grim-task" },
            complete = QuestState(304, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.4968, 0.1824, "Longbraid the Grim",
                    "Travel to Longbraid the Grim."),
            },
        },
        {
            id = "turnin-303-the-dark-iron-war",
            kind = "turnin",
            priority = 110,
            text = "Turn in The Dark Iron War to Motley Garmason in Dun Modr.",
            dependsOn = { "objective-303-the-dark-iron-war" },
            complete = QuestState(303, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.4969, 0.1830, "Motley Garmason",
                    "Travel to Motley Garmason."),
            },
        },
        {
            id = "turnin-631-the-thandol-span",
            kind = "turnin",
            priority = 120,
            text = "Turn in The Thandol Span in Thandol Span.",
            dependsOn = { "accept-631-the-thandol-span" },
            complete = QuestState(631, "completed"),
            route = {
                Point(MAP.ARATHI, 0.4566, 0.9308, "Thandol Span",
                    "Travel to Thandol Span."),
            },
        },
        {
            id = "accept-632-the-thandol-span",
            kind = "accept",
            priority = 130,
            text = "Accept The Thandol Span in Thandol Span.",
            complete = QuestState(632, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.4566, 0.9308, "Thandol Span",
                    "Travel to Thandol Span."),
            },
        },
        {
            id = "turnin-632-the-thandol-span",
            kind = "turnin",
            priority = 140,
            text = "Turn in The Thandol Span to Rhag Garmason in Dun Modr.",
            dependsOn = { "accept-632-the-thandol-span" },
            complete = QuestState(632, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.4991, 0.1820, "Rhag Garmason",
                    "Travel to Rhag Garmason."),
            },
        },
        {
            id = "accept-633-the-thandol-span",
            kind = "accept",
            priority = 150,
            text = "Accept The Thandol Span from Rhag Garmason in Dun Modr.",
            complete = QuestState(633, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4991, 0.1820, "Rhag Garmason",
                    "Travel to Rhag Garmason."),
            },
        },
        {
            id = "objective-633-the-thandol-span",
            kind = "objective",
            priority = 160,
            text = "Destroy the Cache of Explosives. Found across the small bridge to the east.",
            dependsOn = { "accept-633-the-thandol-span" },
            complete = QuestState(633, "complete"),
            route = {
                Point(MAP.ARATHI, 0.4564, 0.8821, "Continue toward The Thandol Span",
                    "Continue toward The Thandol Span."),
                Point(MAP.ARATHI, 0.4871, 0.8798, "The Thandol Span",
                    "Travel to The Thandol Span."),
            },
        },
        {
            id = "turnin-633-the-thandol-span",
            kind = "turnin",
            priority = 170,
            text = "Turn in The Thandol Span to Rhag Garmason in Dun Modr.",
            dependsOn = { "objective-633-the-thandol-span" },
            complete = QuestState(633, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.4991, 0.1820, "Rhag Garmason",
                    "Travel to Rhag Garmason."),
            },
        },
        {
            id = "accept-634-plea-to-the-alliance",
            kind = "accept",
            priority = 180,
            text = "Accept Plea To The Alliance from Rhag Garmason in Dun Modr.",
            complete = QuestState(634, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.4991, 0.1820, "Rhag Garmason",
                    "Travel to Rhag Garmason."),
            },
        },
        {
            id = "accept-647-mackreel-s-moonshine",
            kind = "accept",
            priority = 190,
            text = "Accept MacKreel's Moonshine from Foggy MacKreel in Thandol Span.",
            complete = QuestState(647, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.4313, 0.9119, "Continue toward MacKreel's Moonshine",
                    "Continue toward MacKreel's Moonshine."),
                Point(MAP.ARATHI, 0.4325, 0.9260, "Foggy MacKreel",
                    "Travel to Foggy MacKreel."),
            },
        },
        {
            id = "turnin-634-plea-to-the-alliance",
            kind = "turnin",
            priority = 210,
            text = "Turn in Plea To The Alliance to Captain Nials in Refuge Pointe.",
            dependsOn = { "accept-634-plea-to-the-alliance" },
            complete = QuestState(634, "completed"),
            route = {
                Point(MAP.ARATHI, 0.4585, 0.4759, "Captain Nials",
                    "Travel to Captain Nials."),
            },
        },
        {
            id = "turnin-538-southshore",
            kind = "turnin",
            priority = 230,
            text = "Turn in Southshore to Loremaster Dibbs in Southshore.",
            complete = QuestState(538, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5056, 0.5713, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "accept-540-preserving-knowledge",
            kind = "accept",
            priority = 240,
            text = "Accept Preserving Knowledge from Loremaster Dibbs in Southshore.",
            complete = QuestState(540, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5056, 0.5713, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "turnin-647-mackreel-s-moonshine",
            kind = "turnin",
            priority = 250,
            text = "Turn in MacKreel's Moonshine to Brewmeister Bilger in Southshore.",
            dependsOn = { "accept-647-mackreel-s-moonshine" },
            complete = QuestState(647, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5214, 0.5871, "Brewmeister Bilger",
                    "Travel to Brewmeister Bilger."),
            },
        },
        {
            id = "note-9435-southshore",
            kind = "note",
            priority = 260,
            text = "Set your hearth in Southshore with Innkeeper Anderson.",
            route = {
                Point(MAP.HILLSBRAD, 0.5110, 0.5890, "Innkeeper Anderson",
                    "Travel to Innkeeper Anderson."),
            },
        },
        {
            id = "accept-555-soothing-turtle-bisque",
            kind = "accept",
            priority = 270,
            text = "Accept Soothing Turtle Bisque from Chef Jessen in Southshore.",
            complete = QuestState(555, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5167, 0.5832, "Chef Jessen",
                    "Travel to Chef Jessen."),
            },
        },
        {
            id = "accept-536-down-the-coast",
            kind = "accept",
            priority = 280,
            text = "Accept Down the Coast from Lieutenant Farren Orinelle in Southshore.",
            complete = QuestState(536, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5145, 0.5848, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "accept-505-syndicate-assassins",
            kind = "accept",
            priority = 290,
            text = "Accept Syndicate Assassins from Magistrate Henry Maleb in Southshore.",
            complete = QuestState(505, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.4815, 0.5927, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "accept-564-costly-menace",
            kind = "accept",
            priority = 300,
            text = "Accept Costly Menace from Darren Malvew in Southshore.",
            complete = QuestState(564, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5235, 0.5609, "Darren Malvew",
                    "Travel to Darren Malvew."),
            },
        },
        {
            id = "objective-536-down-the-coast",
            kind = "objective",
            priority = 310,
            text = "Kill 10 Torn Fin Tidehunter and 10 Torn Fin Oracle which can be found along the coast in Western Strand.",
            dependsOn = { "accept-536-down-the-coast" },
            complete = QuestState(536, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.4400, 0.6700, "Torn Fin Tidehunter",
                    "Travel to Torn Fin Tidehunter."),
            },
        },
        {
            id = "turnin-536-down-the-coast",
            kind = "turnin",
            priority = 320,
            text = "Turn in Down the Coast to Lieutenant Farren Orinelle in Southshore.",
            dependsOn = { "objective-536-down-the-coast" },
            complete = QuestState(536, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "accept-559-farren-s-proof",
            kind = "accept",
            priority = 330,
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle in Southshore.",
            complete = QuestState(559, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "objective-559-farren-s-proof",
            kind = "objective",
            priority = 340,
            text = "Collect 10 Murloc Head from the murlocs found on the Western Strand.",
            dependsOn = { "accept-559-farren-s-proof" },
            complete = QuestState(559, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.4400, 0.6700, "Torn Fin Tidehunter",
                    "Travel to Torn Fin Tidehunter."),
            },
        },
        {
            id = "turnin-559-farren-s-proof",
            kind = "turnin",
            priority = 350,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle in Southshore.",
            dependsOn = { "objective-559-farren-s-proof" },
            complete = QuestState(559, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "accept-560-farren-s-proof",
            kind = "accept",
            priority = 360,
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle in Southshore.",
            complete = QuestState(560, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "turnin-560-farren-s-proof",
            kind = "turnin",
            priority = 370,
            text = "Turn in Farren's Proof to Marshal Redpath in Southshore.",
            dependsOn = { "accept-560-farren-s-proof" },
            complete = QuestState(560, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4947, 0.5870, "Marshal Redpath",
                    "Travel to Marshal Redpath."),
            },
        },
        {
            id = "accept-561-farren-s-proof",
            kind = "accept",
            priority = 380,
            text = "Accept Farren's Proof from Marshal Redpath in Southshore.",
            complete = QuestState(561, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.4947, 0.5870, "Marshal Redpath",
                    "Travel to Marshal Redpath."),
            },
        },
        {
            id = "turnin-561-farren-s-proof",
            kind = "turnin",
            priority = 390,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle in Southshore.",
            dependsOn = { "accept-561-farren-s-proof" },
            complete = QuestState(561, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "accept-562-stormwind-ho",
            kind = "accept",
            priority = 400,
            text = "Accept Stormwind Ho! from Lieutenant Farren Orinelle in Southshore.",
            complete = QuestState(562, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "objective-562-stormwind-ho",
            kind = "objective",
            priority = 410,
            text = "Kill 10 Daggerspine Shorehunter and 10 Daggerspine Siren in Eastern Strand.",
            dependsOn = { "accept-562-stormwind-ho" },
            complete = QuestState(562, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.5600, 0.6500, "Daggerspine Shorehunter",
                    "Travel to Daggerspine Shorehunter."),
            },
        },
        {
            id = "turnin-562-stormwind-ho",
            kind = "turnin",
            priority = 420,
            text = "Turn in Stormwind Ho! to Lieutenant Farren Orinelle in Southshore.",
            dependsOn = { "objective-562-stormwind-ho" },
            complete = QuestState(562, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "accept-563-reassignment",
            kind = "accept",
            priority = 430,
            text = "Accept Reassignment from Lieutenant Farren Orinelle in Southshore.",
            complete = QuestState(563, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5143, 0.5835, "Lieutenant Farren Orinelle",
                    "Travel to Lieutenant Farren Orinelle."),
            },
        },
        {
            id = "objective-555-1-soothing-turtle-bisque",
            kind = "objective",
            priority = 440,
            text = "Kill Snapjaw along the river and collect 10 Turtle Meat move follow the river north.",
            dependsOn = { "accept-555-soothing-turtle-bisque" },
            complete = QuestObjective(555, 1),
            route = {
                Point(MAP.HILLSBRAD, 0.5579, 0.5439, "Continue toward Soothing Turtle Bisque",
                    "Continue toward Soothing Turtle Bisque."),
                Point(MAP.HILLSBRAD, 0.6400, 0.4000, "Continue toward Soothing Turtle Bisque",
                    "Continue toward Soothing Turtle Bisque."),
                Point(MAP.HILLSBRAD, 0.6860, 0.2820, "Snapjaw",
                    "Travel to Snapjaw."),
            },
        },
        {
            id = "accept-511-encrypted-letter",
            kind = "accept",
            priority = 460,
            text = "Accept Encrypted Letter in Sofera's Naze.",
            complete = QuestState(511, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERAC, 0.5830, 0.6780, "Sofera's Naze",
                    "Travel to Sofera's Naze."),
            },
        },
        {
            id = "accept-510-foreboding-plans",
            kind = "accept",
            priority = 470,
            text = "Accept Foreboding Plans in Sofera's Naze.",
            complete = QuestState(510, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERAC, 0.5830, 0.6780, "Sofera's Naze",
                    "Travel to Sofera's Naze."),
            },
        },
        {
            id = "objective-505-syndicate-assassins",
            kind = "objective",
            priority = 480,
            text = "Kill 12 Syndicate Footpad and 8 Syndicate Thief which can be found at the Camps before entering Alterac Mountains.",
            dependsOn = { "accept-505-syndicate-assassins" },
            complete = QuestState(505, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.5700, 0.6600, "Continue toward Syndicate Assassins",
                    "Continue toward Syndicate Assassins."),
                Point(MAP.ALTERAC, 0.4800, 0.7700, "Syndicate Footpad",
                    "Travel to Syndicate Footpad."),
            },
        },
        {
            id = "objective-564-costly-menace",
            kind = "objective",
            priority = 490,
            text = "Kill 8 Mountain Lion and 10 Hulking Mountain Lion in The Headland.",
            dependsOn = { "accept-564-costly-menace" },
            complete = QuestState(564, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.4300, 0.8000, "Mountain Lion",
                    "Travel to Mountain Lion."),
            },
        },
        {
            id = "objective-555-2-soothing-spices",
            kind = "objective",
            priority = 510,
            text = "Buy Soothing Spices from Micha Yance in Southshore.",
            dependsOn = { "accept-555-soothing-turtle-bisque" },
            complete = QuestObjective(555, 2),
            route = {
                Point(MAP.HILLSBRAD, 0.4900, 0.5510, "Micha Yance",
                    "Travel to Micha Yance."),
            },
        },
        {
            id = "turnin-511-encrypted-letter",
            kind = "turnin",
            priority = 520,
            text = "Turn in Encrypted Letter to Loremaster Dibbs in Southshore.",
            dependsOn = { "accept-511-encrypted-letter" },
            complete = QuestState(511, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5000, 0.5700, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "accept-514-letter-to-stormpike",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { quest = { id = 511, state = "completed" } },
                },
            },
            text = "Accept Letter to Stormpike from Loremaster Dibbs in Southshore.",
            complete = QuestState(514, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.5000, 0.5700, "Loremaster Dibbs",
                    "Travel to Loremaster Dibbs."),
            },
        },
        {
            id = "turnin-505-syndicate-assassins",
            kind = "turnin",
            priority = 540,
            text = "Turn in Syndicate Assassins to Magistrate Henry Maleb in Southshore.",
            dependsOn = { "objective-505-syndicate-assassins" },
            complete = QuestState(505, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4814, 0.5913, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "turnin-510-foreboding-plans",
            kind = "turnin",
            priority = 550,
            text = "Turn in Foreboding Plans to Magistrate Henry Maleb in Southshore.",
            dependsOn = { "accept-510-foreboding-plans" },
            complete = QuestState(510, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.4814, 0.5913, "Magistrate Henry Maleb",
                    "Travel to Magistrate Henry Maleb."),
            },
        },
        {
            id = "turnin-555-soothing-turtle-bisque",
            kind = "turnin",
            priority = 560,
            text = "Turn in Soothing Turtle Bisque to Chef Jessen in Southshore.",
            dependsOn = { "objective-555-1-soothing-turtle-bisque", "objective-555-2-soothing-spices" },
            complete = QuestState(555, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5184, 0.5868, "Chef Jessen",
                    "Travel to Chef Jessen."),
            },
        },
        {
            id = "turnin-564-costly-menace",
            kind = "turnin",
            priority = 570,
            text = "Turn in Costly Menace to Darren Malvew in Southshore.",
            dependsOn = { "objective-564-costly-menace" },
            complete = QuestState(564, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.5243, 0.5597, "Darren Malvew",
                    "Travel to Darren Malvew."),
            },
        },
        {
            id = "accept-681-northfold-manor",
            kind = "accept",
            priority = 590,
            text = "Accept Northfold Manor from Captain Nials in Refuge Pointe.",
            complete = QuestState(681, "activeOrCompleted"),
            route = {
                Point(MAP.ARATHI, 0.4584, 0.4750, "Captain Nials",
                    "Travel to Captain Nials."),
            },
        },
        {
            id = "objective-681-northfold-manor",
            kind = "objective",
            priority = 600,
            text = "Kill 10 Syndicate Highwayman and 6 Syndicate Mercenary in Northfold Manor Syndicate Highwayman are stealth look for them carefully.",
            dependsOn = { "accept-681-northfold-manor" },
            complete = QuestState(681, "complete"),
            route = {
                Point(MAP.ARATHI, 0.3274, 0.2863, "Syndicate Highwayman",
                    "Travel to Syndicate Highwayman."),
            },
        },
        {
            id = "turnin-681-northfold-manor",
            kind = "turnin",
            priority = 620,
            text = "Turn in Northfold Manor to Captain Nials in Refuge Pointe.",
            dependsOn = { "objective-681-northfold-manor" },
            complete = QuestState(681, "completed"),
            route = {
                Point(MAP.ARATHI, 0.4584, 0.4750, "Captain Nials",
                    "Travel to Captain Nials."),
            },
        },
    },
})
