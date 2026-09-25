local _, ns = ...

-- Horde Era leveling route for Stonetalon Mountains, levels 20-22.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STONETALON = 1442,
    ORGRIMMAR = 1454,
    BARRENS = 1413,
    UNDERCITY = 1458,
    SILVERPINE = 1421,
    WETLANDS = 1437,
    THUNDER_BLUFF = 1456,
    HILLSBRAD = 1424,
    ASHENVALE = 1440,
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
    id = "leveling-era-20-22-stonetalon-mountains",
    title = "20-22 Stonetalon Mountains (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 20 } },
        },
    },
    goals = {
        {
            id = "accept-1507-devourer-of-souls",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Devourer of Souls from Mordak Darkfist in Cleft of Shadow.",
            complete = QuestState(1507, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4823, 0.4534, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "turnin-1507-devourer-of-souls",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Devourer of Souls in Cleft of Shadow.",
            dependsOn = { "accept-1507-devourer-of-souls" },
            complete = QuestState(1507, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4721, 0.4658, "Cleft of Shadow",
                    "Travel to Cleft of Shadow."),
            },
        },
        {
            id = "accept-1508-blind-cazul",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Blind Cazul from Cazul in Cleft of Shadow.",
            complete = QuestState(1508, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4721, 0.4658, "Cazul",
                    "Travel to Cazul."),
            },
        },
        {
            id = "turnin-1508-blind-cazul",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Blind Cazul to Zankaja in Orgrimmar.",
            dependsOn = { "accept-1508-blind-cazul" },
            complete = QuestState(1508, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3710, 0.5955, "Zankaja",
                    "Travel to Zankaja."),
            },
        },
        {
            id = "accept-1509-news-of-dogran",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept News of Dogran from Zankaja in Orgrimmar.",
            complete = QuestState(1509, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3710, 0.5955, "Zankaja",
                    "Travel to Zankaja."),
            },
        },
        {
            id = "turnin-1509-news-of-dogran",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in News of Dogran to Gazrog in The Crossroads.",
            dependsOn = { "accept-1509-news-of-dogran" },
            complete = QuestState(1509, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5191, 0.3032, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "accept-1510-news-of-dogran",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept News of Dogran from Gazrog in The Crossroads.",
            complete = QuestState(1510, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5191, 0.3032, "Gazrog",
                    "Travel to Gazrog."),
            },
        },
        {
            id = "turnin-1510-news-of-dogran",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in News of Dogran to Ken'zigla in Malaka'jin.",
            dependsOn = { "accept-1510-news-of-dogran" },
            complete = QuestState(1510, "completed"),
            route = {
                Point(MAP.STONETALON, 0.7316, 0.9496, "Ken'zigla",
                    "Travel to Ken'zigla."),
            },
        },
        {
            id = "accept-1511-ken-zigla-s-draught",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Ken'zigla's Draught from Ken'zigla in Malaka'jin.",
            complete = QuestState(1511, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.7316, 0.9496, "Ken'zigla",
                    "Travel to Ken'zigla."),
            },
        },
        {
            id = "turnin-1511-ken-zigla-s-draught",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Ken'zigla's Draught to Grunt Logmar in Camp Taurajo.",
            dependsOn = { "accept-1511-ken-zigla-s-draught" },
            complete = QuestState(1511, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4463, 0.5925, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "accept-1515-dogran-s-captivity",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Dogran's Captivity from Grunt Logmar in Camp Taurajo.",
            complete = QuestState(1515, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4463, 0.5925, "Grunt Logmar",
                    "Travel to Grunt Logmar."),
            },
        },
        {
            id = "turnin-1515-dogran-s-captivity",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Dogran's Captivity to Grunt Dogran in Agama'gor.",
            dependsOn = { "accept-1515-dogran-s-captivity" },
            complete = QuestState(1515, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4332, 0.4790, "Grunt Dogran",
                    "Travel to Grunt Dogran."),
            },
        },
        {
            id = "accept-1512-love-s-gift",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept Love's Gift from Grunt Dogran in Agama'gor.",
            complete = QuestState(1512, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4332, 0.4790, "Grunt Dogran",
                    "Travel to Grunt Dogran."),
            },
        },
        {
            id = "turnin-1512-love-s-gift",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in Love's Gift to Mordak Darkfist in Cleft of Shadow.",
            dependsOn = { "accept-1512-love-s-gift" },
            complete = QuestState(1512, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4816, 0.4544, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "accept-1513-the-binding",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Accept The Binding from Mordak Darkfist in Cleft of Shadow.",
            complete = QuestState(1513, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4816, 0.4544, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "objective-1513-the-binding",
            kind = "objective",
            priority = 160,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Using Dogran's Pendant, summon and subdue a Summoned Succubus in Cleft of Shadow.",
            dependsOn = { "accept-1513-the-binding" },
            complete = QuestState(1513, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4947, 0.5009, "Summoned Succubus",
                    "Travel to Summoned Succubus."),
            },
        },
        {
            id = "turnin-1513-the-binding",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 2, 8 } },
                },
            },
            text = "Turn in The Binding to Mordak Darkfist in Cleft of Shadow.",
            dependsOn = { "objective-1513-the-binding" },
            complete = QuestState(1513, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4817, 0.4540, "Mordak Darkfist",
                    "Travel to Mordak Darkfist."),
            },
        },
        {
            id = "accept-1472-devourer-of-souls",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Accept Devourer of Souls from Carendin Halgar in Magic Quarter.",
            complete = QuestState(1472, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8497, 0.2592, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "turnin-1472-devourer-of-souls",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Turn in Devourer of Souls to Godrick Farsan in Magic Quarter.",
            dependsOn = { "accept-1472-devourer-of-souls" },
            complete = QuestState(1472, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8497, 0.1483, "Godrick Farsan",
                    "Travel to Godrick Farsan."),
            },
        },
        {
            id = "accept-1476-hearts-of-the-pure",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Accept Hearts of the Pure from Godrick Farsan in Magic Quarter.",
            complete = QuestState(1476, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8497, 0.1483, "Godrick Farsan",
                    "Travel to Godrick Farsan."),
            },
        },
        {
            id = "objective-1476-1-dalin-forgewright",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Kill Dalin Forgewright in The Greymane Wall.",
            dependsOn = { "accept-1476-hearts-of-the-pure" },
            complete = QuestObjective(1476, 1),
            route = {
                Point(MAP.SILVERPINE, 0.4647, 0.8458, "Dalin Forgewright",
                    "Travel to Dalin Forgewright."),
            },
        },
        {
            id = "objective-1476-2-comar-villard",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Kill Comar Villard in Thandol Span.",
            dependsOn = { "accept-1476-hearts-of-the-pure" },
            complete = QuestObjective(1476, 2),
            route = {
                Point(MAP.WETLANDS, 0.4990, 0.1260, "Comar Villard",
                    "Travel to Comar Villard."),
            },
        },
        {
            id = "turnin-1476-hearts-of-the-pure",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Turn in Hearts of the Pure to Carendin Halgar in Magic Quarter.",
            dependsOn = { "objective-1476-1-dalin-forgewright", "objective-1476-2-comar-villard" },
            complete = QuestState(1476, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8515, 0.2600, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "accept-1474-the-binding",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Accept The Binding from Carendin Halgar in Magic Quarter.",
            complete = QuestState(1474, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8515, 0.2600, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "objective-1474-the-binding",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Using the Pure Hearts summon and subdue a Summoned Succubus in Magic Quarter.",
            dependsOn = { "accept-1474-the-binding" },
            complete = QuestState(1474, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.8643, 0.2703, "Summoned Succubus",
                    "Travel to Summoned Succubus."),
            },
        },
        {
            id = "turnin-1474-the-binding",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Turn in The Binding to Carendin Halgar in Magic Quarter.",
            dependsOn = { "objective-1474-the-binding" },
            complete = QuestState(1474, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8520, 0.2613, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "accept-1529-call-of-water",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { class = 7 },
                    { race = 6 },
                    { ["not"] = { quest = { id = 1528, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Call of Water from Xanis Flameweaver in Spirit Rise.",
            complete = QuestState(1529, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.2568, 0.2125, "Xanis Flameweaver",
                    "Travel to Xanis Flameweaver."),
            },
        },
        {
            id = "accept-1528-call-of-water",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { class = 7 },
                    { race = { 2, 8 } },
                    { ["not"] = { quest = { id = 1529, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Call of Water from Searn Firewarder in Grommash Hold.",
            complete = QuestState(1528, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3806, 0.3736, "Searn Firewarder",
                    "Travel to Searn Firewarder."),
            },
        },
        {
            id = "accept-1069-deepmoss-spider-eggs",
            kind = "accept",
            priority = 300,
            text = "Accept Deepmoss Spider Eggs from Mebok Mizzyrix in Ratchet.",
            complete = QuestState(1069, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6236, 0.3767, "Mebok Mizzyrix",
                    "Travel to Mebok Mizzyrix."),
            },
        },
        {
            id = "accept-1483-ziz-fizziks",
            kind = "accept",
            priority = 310,
            text = "Accept Ziz Fizziks from Sputtervalve in Ratchet.",
            complete = QuestState(1483, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6295, 0.3723, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "accept-1530-call-of-water",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Islen Waterseer in The Tidus Stair.",
            complete = QuestState(1530, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6582, 0.4378, "Islen Waterseer",
                    "Travel to Islen Waterseer."),
            },
        },
        {
            id = "turnin-1530-call-of-water",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Brine in Blackthorn Ridge.",
            dependsOn = { "accept-1530-call-of-water" },
            complete = QuestState(1530, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4342, 0.7740, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-1535-call-of-water",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Brine in Blackthorn Ridge.",
            complete = QuestState(1535, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4341, 0.7744, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "objective-1535-call-of-water",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Use the Empty Brown Waterskin at the watering hole below Brine's hut.",
            dependsOn = { "accept-1535-call-of-water" },
            complete = QuestState(1535, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4429, 0.7682, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "turnin-1535-call-of-water",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Brine in Blackthorn Ridge.",
            dependsOn = { "objective-1535-call-of-water" },
            complete = QuestState(1535, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4344, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-1536-call-of-water",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Brine in Blackthorn Ridge.",
            complete = QuestState(1536, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4344, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-493-journey-to-hillsbrad-foothills",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Journey to Hillsbrad Foothills from Apothecary Renferrel in The Sepulcher.",
            complete = QuestState(493, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE, 0.4290, 0.4090, "Apothecary Renferrel",
                    "Travel to Apothecary Renferrel."),
            },
        },
        {
            id = "turnin-493-journey-to-hillsbrad-foothills",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Journey to Hillsbrad Foothills to Apothecary Lydon in Tarren Mill.",
            dependsOn = { "accept-493-journey-to-hillsbrad-foothills" },
            complete = QuestState(493, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6150, 0.1920, "Apothecary Lydon",
                    "Travel to Apothecary Lydon."),
            },
        },
        {
            id = "objective-1536-call-of-water",
            kind = "objective",
            priority = 440,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Use the Empty Brown Waterskin at the well in Tarren Mill.",
            dependsOn = { "accept-1536-call-of-water" },
            complete = QuestState(1536, "complete"),
            route = {
                Point(MAP.HILLSBRAD, 0.6213, 0.2085, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-1536-call-of-water",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Turn in Call of Water to Brine in Blackthorn Ridge.",
            dependsOn = { "objective-1536-call-of-water" },
            complete = QuestState(1536, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4342, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-1534-call-of-water",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Accept Call of Water from Brine in Blackthorn Ridge.",
            complete = QuestState(1534, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4342, 0.7741, "Brine",
                    "Travel to Brine."),
            },
        },
        {
            id = "accept-1062-goblin-invaders",
            kind = "accept",
            priority = 490,
            text = "Accept Goblin Invaders from Seereth Stonebreak in The Barrens.",
            complete = QuestState(1062, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "accept-6548-avenge-my-village",
            kind = "accept",
            priority = 500,
            text = "Accept Avenge My Village from Makaba Flathoof in The Barrens.",
            complete = QuestState(6548, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "objective-6548-avenge-my-village",
            kind = "objective",
            priority = 510,
            text = "Kill 8 Grimtotem Ruffian and 6 Grimtotem Mercenary in the Greatwood Vale.",
            dependsOn = { "accept-6548-avenge-my-village" },
            complete = QuestState(6548, "complete"),
            route = {
                Point(MAP.STONETALON, 0.8100, 0.9100, "Grimtotem Ruffian",
                    "Travel to Grimtotem Ruffian."),
            },
        },
        {
            id = "turnin-6548-avenge-my-village",
            kind = "turnin",
            priority = 520,
            text = "Turn in Avenge My Village to Makaba Flathoof in The Barrens.",
            dependsOn = { "objective-6548-avenge-my-village" },
            complete = QuestState(6548, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "accept-6629-kill-grundig-darkcloud",
            kind = "accept",
            priority = 530,
            text = "Accept Kill Grundig Darkcloud from Makaba Flathoof in The Barrens.",
            complete = QuestState(6629, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "objective-6629-kill-grundig-darkcloud",
            kind = "objective",
            priority = 540,
            text = "Kill Grundig Darkcloud and 6 Grimtotem Brute at the Grimtotem Post.",
            dependsOn = { "accept-6629-kill-grundig-darkcloud" },
            complete = QuestState(6629, "complete"),
            route = {
                Point(MAP.STONETALON, 0.7360, 0.8610, "Grundig Darkcloud",
                    "Travel to Grundig Darkcloud."),
            },
        },
        {
            id = "accept-6523-protect-kaya",
            kind = "accept",
            priority = 550,
            text = "Accept Protect Kaya from Kaya Flathoof in Grimtotem Post.",
            complete = QuestState(6523, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.7349, 0.8565, "Kaya Flathoof",
                    "Travel to Kaya Flathoof."),
            },
        },
        {
            id = "objective-6523-protect-kaya",
            kind = "objective",
            priority = 560,
            text = "Escort Kaya Flathoof until objective is complete in Camp Aparaje.",
            dependsOn = { "accept-6523-protect-kaya" },
            complete = QuestState(6523, "complete"),
            route = {
                Point(MAP.STONETALON, 0.7755, 0.9073, "Kaya Flathoof",
                    "Travel to Kaya Flathoof."),
            },
        },
        {
            id = "turnin-6523-protect-kaya",
            kind = "turnin",
            priority = 570,
            text = "Turn in Protect Kaya to Makaba Flathoof in The Barrens.",
            dependsOn = { "objective-6523-protect-kaya" },
            complete = QuestState(6523, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "accept-6401-kaya-s-alive",
            kind = "accept",
            priority = 580,
            text = "Accept Kaya's Alive from Makaba Flathoof in The Barrens.",
            complete = QuestState(6401, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "turnin-6629-kill-grundig-darkcloud",
            kind = "turnin",
            priority = 590,
            text = "Turn in Kill Grundig Darkcloud to Makaba Flathoof in The Barrens.",
            dependsOn = { "objective-6629-kill-grundig-darkcloud" },
            complete = QuestState(6629, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3523, 0.2779, "Makaba Flathoof",
                    "Travel to Makaba Flathoof."),
            },
        },
        {
            id = "accept-1058-jin-zil-s-forest-magic",
            kind = "accept",
            priority = 610,
            text = "Accept Jin'Zil's Forest Magic from Witch Doctor Jin'Zil in Malaka'jin.",
            complete = QuestState(1058, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.7455, 0.9784, "Witch Doctor Jin'Zil",
                    "Travel to Witch Doctor Jin'Zil."),
            },
        },
        {
            id = "accept-6461-blood-feeders",
            kind = "accept",
            priority = 620,
            text = "Accept Blood Feeders from Xen'Zilla in Malaka'jin.",
            complete = QuestState(6461, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.7126, 0.9495, "Xen'Zilla",
                    "Travel to Xen'Zilla."),
            },
        },
        {
            id = "accept-6284-arachnophobia",
            kind = "accept",
            priority = 640,
            text = "Accept Arachnophobia in Webwinder Path.",
            complete = QuestState(6284, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5910, 0.7575, "Webwinder Path",
                    "Travel to Webwinder Path."),
            },
        },
        {
            id = "objective-6284-arachnophobia",
            kind = "objective",
            priority = 650,
            text = "Kill Besseleth and take Besseleth's Fang in Sishir Canyon.",
            dependsOn = { "accept-6284-arachnophobia" },
            complete = QuestState(6284, "complete"),
            route = {
                Point(MAP.STONETALON, 0.5220, 0.7390, "Besseleth",
                    "Travel to Besseleth."),
            },
        },
        {
            id = "objective-6461-blood-feeders",
            kind = "objective",
            priority = 660,
            text = "Kill 10 Deepmoss Creeper and 7 Deepmoss Venomspitter in Sishir Canyon.",
            dependsOn = { "accept-6461-blood-feeders" },
            complete = QuestState(6461, "complete"),
            route = {
                Point(MAP.STONETALON, 0.5333, 0.7404, "Deepmoss Creeper",
                    "Travel to Deepmoss Creeper."),
            },
        },
        {
            id = "accept-1093-super-reaper-6000",
            kind = "accept",
            priority = 680,
            text = "Accept Super Reaper 6000 from Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1093, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5898, 0.6250, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "objective-1093-super-reaper-6000",
            kind = "objective",
            priority = 690,
            text = "Kill Venture Co. Operator for the Super Reaper 6000 Blueprints in Windshear Crag.",
            dependsOn = { "accept-1093-super-reaper-6000" },
            complete = QuestState(1093, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6200, 0.5300, "Venture Co. Operator",
                    "Travel to Venture Co. Operator."),
            },
        },
        {
            id = "objective-1062-goblin-invaders",
            kind = "objective",
            priority = 700,
            text = "Kill 15 Venture Co. Logger in Windshear Crag.",
            dependsOn = { "accept-1062-goblin-invaders" },
            complete = QuestState(1062, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6400, 0.5500, "Venture Co. Logger",
                    "Travel to Venture Co. Logger."),
            },
        },
        {
            id = "turnin-1093-super-reaper-6000",
            kind = "turnin",
            priority = 710,
            text = "Turn in Super Reaper 6000 to Ziz Fizziks in Windshear Crag.",
            dependsOn = { "objective-1093-super-reaper-6000" },
            complete = QuestState(1093, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5898, 0.6250, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "accept-1094-further-instructions",
            kind = "accept",
            priority = 720,
            text = "Accept Further Instructions from Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1094, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5898, 0.6250, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "turnin-6284-arachnophobia",
            kind = "turnin",
            priority = 740,
            text = "Turn in Arachnophobia to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6284-arachnophobia" },
            complete = QuestState(6284, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4724, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-6301-cycle-of-rebirth",
            kind = "accept",
            priority = 750,
            text = "Accept Cycle of Rebirth from Tammra Windfield in Sun Rock Retreat.",
            complete = QuestState(6301, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "accept-6421-boulderslide-ravine",
            kind = "accept",
            priority = 760,
            text = "Accept Boulderslide Ravine from Mor'rogal in Sun Rock Retreat.",
            complete = QuestState(6421, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4463, 0.6179, "Continue toward Boulderslide Ravine",
                    "Continue toward Boulderslide Ravine."),
                Point(MAP.STONETALON, 0.4719, 0.6416, "Mor'rogal",
                    "Travel to Mor'rogal."),
            },
        },
        {
            id = "accept-6562-trouble-in-the-deeps",
            kind = "accept",
            priority = 770,
            text = "Accept Trouble in the Deeps from Tsunaman in Sun Rock Retreat.",
            complete = QuestState(6562, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6426, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "travel-6421-boulderslide-cavern",
            kind = "travel",
            priority = 780,
            text = "Travel to Boulderslide Cavern. Investigate Cave in Boulderslide Cavern.",
            complete = QuestObjective(6421, 2),
            dependsOn = { "accept-6421-boulderslide-ravine" },
            route = {
                Point(MAP.STONETALON, 0.4956, 0.6106, "Continue toward Boulderslide Cavern",
                    "Continue toward Boulderslide Cavern."),
                Point(MAP.STONETALON, 0.6689, 0.8883, "Continue toward Boulderslide Cavern",
                    "Continue toward Boulderslide Cavern."),
                Point(MAP.STONETALON, 0.6180, 0.9306, "Boulderslide Cavern",
                    "Travel to Boulderslide Cavern."),
            },
        },
        {
            id = "objective-6421-2-investigate-cave",
            kind = "objective",
            priority = 790,
            text = "Investigate Cave in Boulderslide Cavern.",
            dependsOn = { "accept-6421-boulderslide-ravine" },
            complete = QuestObjective(6421, 2),
            route = {
                Point(MAP.STONETALON, 0.5888, 0.9037, "Boulderslide Cavern",
                    "Travel to Boulderslide Cavern."),
            },
        },
        {
            id = "objective-6421-boulderslide-ravine",
            kind = "objective",
            priority = 810,
            text = "Click Item Resonite Crystal and collect 10 Resonite Crystal in Boulderslide Cavern.",
            dependsOn = { "accept-6421-boulderslide-ravine" },
            complete = QuestState(6421, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6100, 0.9100, "Boulderslide Cavern",
                    "Travel to Boulderslide Cavern."),
            },
        },
        {
            id = "turnin-6461-blood-feeders",
            kind = "turnin",
            priority = 830,
            text = "Turn in Blood Feeders to Xen'Zilla in Malaka'jin.",
            dependsOn = { "objective-6461-blood-feeders" },
            complete = QuestState(6461, "completed"),
            route = {
                Point(MAP.STONETALON, 0.7126, 0.9495, "Xen'Zilla",
                    "Travel to Xen'Zilla."),
            },
        },
        {
            id = "turnin-1062-goblin-invaders",
            kind = "turnin",
            priority = 840,
            text = "Turn in Goblin Invaders to Seereth Stonebreak in The Barrens.",
            dependsOn = { "objective-1062-goblin-invaders" },
            complete = QuestState(1062, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "accept-1063-the-elder-crone",
            kind = "accept",
            priority = 850,
            text = "Accept The Elder Crone from Seereth Stonebreak in The Barrens.",
            complete = QuestState(1063, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "accept-1068-shredding-machines",
            kind = "accept",
            priority = 860,
            text = "Accept Shredding Machines from Seereth Stonebreak in The Barrens.",
            complete = QuestState(1068, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "objective-822-3-lost-barrens-kodo",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { quest = { id = 821, state = "completed" } },
                },
            },
            text = "Kill Lost Barrens Kodo and collect Kodo Liver Note: the drop rate is quite low, if you're not having any luck after kill 20 or so kodos you should consider giving up and abandon the quest.",
            complete = QuestObjective(822, 3),
            route = {
                Point(MAP.BARRENS, 0.4187, 0.2155, "Lost Barrens Kodo",
                    "Travel to Lost Barrens Kodo."),
            },
        },
        {
            id = "accept-6541-report-to-kadrak",
            kind = "accept",
            priority = 880,
            text = "Accept Report to Kadrak from Thork in The Crossroads.",
            complete = QuestState(6541, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5150, 0.3085, "Thork",
                    "Travel to Thork."),
            },
        },
        {
            id = "accept-6383-the-ashenvale-hunt",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { quest = { id = 742, state = "completed" } },
                },
            },
            text = "Accept The Ashenvale Hunt from Senani Thunderheart in Splintertree Post.",
            complete = QuestState(6383, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7370, 0.6150, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "turnin-6383-the-ashenvale-hunt",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { quest = { id = 742, state = "completed" } },
                },
            },
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart in Splintertree Post. This is an elite. Bring a group.",
            dependsOn = { "accept-6383-the-ashenvale-hunt" },
            complete = QuestState(6383, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7370, 0.6150, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-1534-call-of-water",
            kind = "objective",
            priority = 920,
            conditions = {
                all = {
                    { class = 7 },
                },
            },
            text = "Use Empty Blue Waterskin at The Ruins of Stardust.",
            dependsOn = { "accept-1534-call-of-water" },
            complete = QuestState(1534, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3355, 0.6744, "The Ruins of Stardust",
                    "Travel to The Ruins of Stardust."),
            },
        },
        {
            id = "accept-6442-naga-at-the-zoram-strand",
            kind = "accept",
            priority = 950,
            text = "Accept Naga at the Zoram Strand from Marukai in Zoram'gar Outpost.",
            complete = QuestState(6442, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1169, 0.3486, "Marukai",
                    "Travel to Marukai."),
            },
        },
        {
            id = "objective-6442-naga-at-the-zoram-strand",
            kind = "objective",
            priority = 960,
            text = "Kill Wrathtail enemies and collect 20 Wrathtail Head.",
            dependsOn = { "accept-6442-naga-at-the-zoram-strand" },
            complete = QuestState(6442, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1000, 0.2800, "Wrathtail Wave Rider",
                    "Travel to Wrathtail Wave Rider."),
            },
        },
        {
            id = "turnin-6442-naga-at-the-zoram-strand",
            kind = "turnin",
            priority = 970,
            text = "Turn in Naga at the Zoram Strand to Marukai in Zoram'gar Outpost.",
            dependsOn = { "objective-6442-naga-at-the-zoram-strand" },
            complete = QuestState(6442, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1169, 0.3486, "Marukai",
                    "Travel to Marukai."),
            },
        },
    },
})
