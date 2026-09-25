local _, ns = ...

-- Stonetalon Mountains Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Era/20-22-stonetalon-mountains.lua, Guides/Era/22-23-stonetalon-mountains.lua, Guides/Leveling/23-25-stonetalon-mountains.lua, Guides/Era/27-27-stonetalon-mountains.lua
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains
-- Dungeon quests stay in the dungeon guides.
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
    ZONE_1455 = 1455,
    ZONE_1453 = 1453,
    ZONE_1441 = 1441,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
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
    id = "leveling-stonetalon-mountains",
    title = "Stonetalon Mountains",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
            priority = 290,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 300,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 310,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 320,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 340,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 350,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 360,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 370,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 380,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 390,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 400,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 410,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 420,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Trouble in the Deeps from Tsunaman in Sun Rock Retreat.",
            complete = QuestState(6562, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6426, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "accept-6481-earthen-arise",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Earthen Arise from Mor'rogal.",
            complete = QuestState(6481, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.472, 0.640, "Mor'rogal",
                    "Travel to Mor'rogal."),
            },
        },
        {
            id = "objective-6481-earthen-arise-1",
            kind = "objective",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 20 } },
                },
            },
            text = "Earthen Arise: Goggeroc. This is an elite. Bring a group.",
            dependsOn = { "accept-6481-earthen-arise" },
            complete = QuestObjective(6481, 1, "Goggeroc"),
            route = {
                Point(MAP.STONETALON, 0.472, 0.640, "Mor'rogal",
                    "Travel to Mor'rogal."),
            },
        },
        {
            id = "turnin-6481-earthen-arise",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Earthen Arise to Mor'rogal.",
            dependsOn = { "objective-6481-earthen-arise-1" },
            complete = QuestState(6481, "completed"),
            route = {
                Point(MAP.STONETALON, 0.472, 0.640, "Mor'rogal",
                    "Travel to Mor'rogal."),
            },
        },
        {
            id = "objective-6421-2-investigate-cave",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
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
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
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
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Naga at the Zoram Strand to Marukai in Zoram'gar Outpost.",
            dependsOn = { "objective-6442-naga-at-the-zoram-strand" },
            complete = QuestState(6442, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1169, 0.3486, "Marukai",
                    "Travel to Marukai."),
            },
        },
        {
            id = "accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept On Guard in Stonetalon from Sentinel Thenysil in Astranaar.",
            complete = QuestState(1070, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3492, 0.4977, "Sentinel Thenysil",
                    "Travel to Sentinel Thenysil."),
            },
        },
        {
            id = "accept-1056-journey-to-stonetalon-peak",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Journey to Stonetalon Peak from Faldreas Goeth'Shael in Astranaar.",
            complete = QuestState(1056, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3578, 0.4916, "Faldreas Goeth'Shael",
                    "Travel to Faldreas Goeth'Shael."),
            },
        },
        {
            id = "turnin-1070-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in On Guard in Stonetalon to Kaela Shadowspear in Webwinder Path.",
            dependsOn = { "accept-1070-on-guard-in-stonetalon" },
            complete = QuestState(1070, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5987, 0.6686, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "accept-1085-on-guard-in-stonetalon",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept On Guard in Stonetalon from Kaela Shadowspear in Webwinder Path.",
            complete = QuestState(1085, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5987, 0.6686, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "accept-1083-enraged-spirits",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Enraged Spirits from Kaela Shadowspear.",
            complete = QuestState(1083, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.598, 0.668, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "objective-1083-enraged-spirits-1",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Enraged Spirits: Smoldering Embers.",
            dependsOn = { "accept-1083-enraged-spirits" },
            complete = QuestObjective(1083, 1, "Smoldering Embers"),
            route = {
                Point(MAP.STONETALON, 0.368, 0.604, "Rogue Flame Spirit",
                    "Travel to Rogue Flame Spirit."),
            },
        },
        {
            id = "turnin-1083-enraged-spirits",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Enraged Spirits to Kaela Shadowspear.",
            dependsOn = { "objective-1083-enraged-spirits-1" },
            complete = QuestState(1083, "completed"),
            route = {
                Point(MAP.STONETALON, 0.598, 0.668, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in On Guard in Stonetalon to Gaxim Rustfizzle in Webwinder Path.",
            dependsOn = { "accept-1085-on-guard-in-stonetalon" },
            complete = QuestState(1085, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5949, 0.6710, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1071-a-gnome-s-respite",
            kind = "accept",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept A Gnome's Respite from Gaxim Rustfizzle in Webwinder Path.",
            complete = QuestState(1071, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5949, 0.6710, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1079-covert-ops-alpha",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept Covert Ops - Alpha from Gaxim Rustfizzle.",
            complete = QuestState(1079, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1080-covert-ops-beta",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept Covert Ops - Beta from Gaxim Rustfizzle.",
            complete = QuestState(1080, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1091-kaelas-update",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept Kaela's Update from Gaxim Rustfizzle.",
            complete = QuestState(1091, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1091-kaelas-update-1",
            kind = "objective",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Kaela's Update: Venture Co. Letters.",
            dependsOn = { "accept-1091-kaelas-update" },
            complete = QuestObjective(1091, 1, "Venture Co. Letters"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "turnin-1091-kaelas-update",
            kind = "turnin",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in Kaela's Update to Kaela Shadowspear.",
            dependsOn = { "objective-1091-kaelas-update-1" },
            complete = QuestState(1091, "completed"),
            route = {
                Point(MAP.STONETALON, 0.598, 0.668, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "objective-1080-covert-ops-beta-1",
            kind = "objective",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Beta: Venture Co. Letters.",
            dependsOn = { "accept-1080-covert-ops-beta" },
            complete = QuestObjective(1080, 1, "Venture Co. Letters"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "turnin-1080-covert-ops-beta",
            kind = "turnin",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in Covert Ops - Beta to Gaxim Rustfizzle.",
            dependsOn = { "objective-1080-covert-ops-beta-1" },
            complete = QuestState(1080, "completed"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1079-covert-ops-alpha-1",
            kind = "objective",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Alpha: Venture Co. Engineering Plans.",
            dependsOn = { "accept-1079-covert-ops-alpha" },
            complete = QuestObjective(1079, 1, "Venture Co. Engineering Plans"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1079-covert-ops-alpha-2",
            kind = "objective",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Alpha: NG-5 Explosives (Blue).",
            dependsOn = { "accept-1079-covert-ops-alpha" },
            complete = QuestObjective(1079, 2, "NG-5 Explosives (Blue)"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1079-covert-ops-alpha-3",
            kind = "objective",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Alpha: NG-5 Explosives (Red).",
            dependsOn = { "accept-1079-covert-ops-alpha" },
            complete = QuestObjective(1079, 3, "NG-5 Explosives (Red)"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1079-covert-ops-alpha-4",
            kind = "objective",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Alpha: Remote Detonator (Blue).",
            dependsOn = { "accept-1079-covert-ops-alpha" },
            complete = QuestObjective(1079, 4, "Remote Detonator (Blue)"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1079-covert-ops-alpha-5",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Covert Ops - Alpha: Remote Detonator (Red).",
            dependsOn = { "accept-1079-covert-ops-alpha" },
            complete = QuestObjective(1079, 5, "Remote Detonator (Red)"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "turnin-1079-covert-ops-alpha",
            kind = "turnin",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in Covert Ops - Alpha to Gaxim Rustfizzle.",
            dependsOn = { "objective-1079-covert-ops-alpha-5" },
            complete = QuestState(1079, "completed"),
            route = {
                Point(MAP.STONETALON, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1071-gnome-s-respite",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 10 Venture Co. Deforester and 10 Venture Co. Logger in Windshear Crag.",
            dependsOn = { "accept-1071-a-gnome-s-respite" },
            complete = QuestState(1071, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6790, 0.5144, "Continue toward Gnome's Respite",
                    "Continue toward Gnome's Respite."),
                Point(MAP.STONETALON, 0.6899, 0.5677, "Venture Co. Deforester",
                    "Travel to Venture Co. Deforester."),
            },
        },
        {
            id = "turnin-1071-a-gnome-s-respite",
            kind = "turnin",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in A Gnome's Respite to Gaxim Rustfizzle in Webwinder Path.",
            dependsOn = { "objective-1071-gnome-s-respite" },
            complete = QuestState(1071, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5950, 0.6716, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1072-an-old-colleague",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept An Old Colleague from Gaxim Rustfizzle in Webwinder Path.",
            complete = QuestState(1072, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5950, 0.6716, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "turnin-1056-journey-to-stonetalon-peak",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Journey to Stonetalon Peak to Keeper Albagorm in Stonetalon Peak.",
            dependsOn = { "accept-1056-journey-to-stonetalon-peak" },
            complete = QuestState(1056, "completed"),
            route = {
                Point(MAP.STONETALON, 0.3710, 0.0810, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "accept-1087-cenarius-legacy",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Cenarius' Legacy from Braelyn Firehand in Sun Rock Retreat.",
            complete = QuestState(1087, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "accept-6282-harpies-threaten",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Harpies Threaten from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(6282, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-6393-elemental-war",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Elemental War from Tsunaman in Sun Rock Retreat.",
            complete = QuestState(6393, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6427, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "accept-86576-bloodfury-trinkets",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Bloodfury Trinkets from Maggran Earthbinder.",
            complete = QuestState(86576, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.472, 0.610, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-1057-reclaiming-the-charred-vale",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm.",
            complete = QuestState(1057, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "objective-1057-reclaiming-the-charred-vale-1",
            kind = "objective",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Reclaiming the Charred Vale: Bloodfury Harpy.",
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            complete = QuestObjective(1057, 1, "Bloodfury Harpy"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "objective-1057-reclaiming-the-charred-vale-2",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Reclaiming the Charred Vale: Bloodfury Ambusher.",
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            complete = QuestObjective(1057, 2, "Bloodfury Ambusher"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "objective-1057-reclaiming-the-charred-vale-3",
            kind = "objective",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Reclaiming the Charred Vale: Bloodfury Slayer.",
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            complete = QuestObjective(1057, 3, "Bloodfury Slayer"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "objective-1057-reclaiming-the-charred-vale-4",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Reclaiming the Charred Vale: Bloodfury Roguefeather.",
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            complete = QuestObjective(1057, 4, "Bloodfury Roguefeather"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "turnin-1057-reclaiming-the-charred-vale",
            kind = "turnin",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            text = "Turn in Reclaiming the Charred Vale to Keeper Albagorm.",
            dependsOn = { "objective-1057-reclaiming-the-charred-vale-4" },
            complete = QuestState(1057, "completed"),
            route = {
                Point(MAP.STONETALON, 0.370, 0.080, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
        {
            id = "turnin-1059-reclaiming-the-charred-vale",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            dependsOn = { "turnin-1057-reclaiming-the-charred-vale" },
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm, then turn it in to Falfindel Waywarder.",
            complete = QuestState(1059, "completed"),
            route = {
                Point(MAP.STONETALON, 0.896, 0.464, "Falfindel Waywarder",
                    "Travel to Falfindel Waywarder."),
            },
        },
        {
            id = "objective-86576-bloodfury-trinkets-1",
            kind = "objective",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Bloodfury Trinkets: Glittering Sunstone.",
            dependsOn = { "accept-86576-bloodfury-trinkets" },
            complete = QuestObjective(86576, 1, "Glittering Sunstone"),
            route = {
                Point(MAP.STONETALON, 0.332, 0.600, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "turnin-86576-bloodfury-trinkets",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Bloodfury Trinkets to Maggran Earthbinder.",
            dependsOn = { "objective-86576-bloodfury-trinkets-1" },
            complete = QuestState(86576, "completed"),
            route = {
                Point(MAP.STONETALON, 0.472, 0.610, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "objective-1087-cenarius-legacy",
            kind = "objective",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill 4 Son of Cenarius, 4 Daughter of Cenarius and 4 Cenarion Botanist in the center of Stonetalon Peak.",
            dependsOn = { "accept-1087-cenarius-legacy" },
            complete = QuestState(1087, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3700, 0.1500, "Son of Cenarius",
                    "Travel to Son of Cenarius."),
            },
        },
        {
            id = "accept-6381-new-life",
            kind = "accept",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept New Life from Tammra Windfield in Sun Rock Retreat.",
            complete = QuestState(6381, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "turnin-1087-cenarius-legacy",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Cenarius' Legacy to Braelyn Firehand in Sun Rock Retreat.",
            dependsOn = { "objective-1087-cenarius-legacy" },
            complete = QuestState(1087, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "accept-1084-wounded-ancients",
            kind = "accept",
            priority = 1351,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Accept Wounded Ancients from Kaela Shadowspear.",
            complete = QuestState(1084, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.598, 0.668, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "objective-1084-wounded-ancients-1",
            kind = "objective",
            priority = 1352,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Wounded Ancients: Corroded Shrapnel.",
            dependsOn = { "accept-1084-wounded-ancients" },
            complete = QuestObjective(1084, 1, "Corroded Shrapnel"),
            route = {
                Point(MAP.STONETALON, 0.338, 0.634, "Charred Ancient",
                    "Travel to Charred Ancient."),
            },
        },
        {
            id = "turnin-1084-wounded-ancients",
            kind = "turnin",
            priority = 1353,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in Wounded Ancients to Kaela Shadowspear.",
            dependsOn = { "objective-1084-wounded-ancients-1" },
            complete = QuestState(1084, "completed"),
            route = {
                Point(MAP.STONETALON, 0.598, 0.668, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "accept-1088-ordanus",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Ordanus from Braelyn Firehand in Sun Rock Retreat.",
            complete = QuestState(1088, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "accept-1089-the-den",
            kind = "accept",
            priority = 1361,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "Accept The Den from Braelyn Firehand.",
            complete = QuestState(1089, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.460, 0.604, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "objective-1089-the-den-1",
            kind = "objective",
            priority = 1362,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "The Den: Sleepers' Key. This is an elite. Bring a group.",
            dependsOn = { "accept-1089-the-den" },
            complete = QuestObjective(1089, 1, "Sleepers' Key"),
            route = {
                Point(MAP.STONETALON, 0.460, 0.604, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "objective-1089-the-den-2",
            kind = "objective",
            priority = 1363,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "The Den: Claw Key. This is an elite. Bring a group.",
            dependsOn = { "accept-1089-the-den" },
            complete = QuestObjective(1089, 2, "Claw Key"),
            route = {
                Point(MAP.STONETALON, 0.460, 0.604, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "objective-1089-the-den-3",
            kind = "objective",
            priority = 1364,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "The Den: Barrow Key. This is an elite. Bring a group.",
            dependsOn = { "accept-1089-the-den" },
            complete = QuestObjective(1089, 3, "Barrow Key"),
            route = {
                Point(MAP.STONETALON, 0.460, 0.604, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "objective-1089-the-den-4",
            kind = "objective",
            priority = 1365,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "The Den: Gatekeeper's Key. This is an elite. Bring a group.",
            dependsOn = { "accept-1089-the-den" },
            complete = QuestObjective(1089, 4, "Gatekeeper's Key"),
            route = {
                Point(MAP.STONETALON, 0.460, 0.604, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "turnin-1089-the-den",
            kind = "turnin",
            priority = 1366,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in The Den to Talon Den Hoard.",
            dependsOn = { "objective-1089-the-den-4" },
            complete = QuestState(1089, "completed"),
            route = {
                Point(MAP.STONETALON, 0.267, 0.109, "Talon Den Hoard",
                    "Travel to Talon Den Hoard."),
            },
        },
        {
            id = "turnin-1095-further-instructions",
            kind = "turnin",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Further Instructions to Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1095, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "accept-1096-gerenzo-wrenchwhistle",
            kind = "accept",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Gerenzo Wrenchwhistle from Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1096, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "objective-1096-gerenzo-wrenchwhistle",
            kind = "objective",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill Gerenzo Wrenchwhistle at the Cragpool Lake in the Water Wheel and take Gerenzo's Mechanical Arm.",
            dependsOn = { "accept-1096-gerenzo-wrenchwhistle" },
            complete = QuestState(1096, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6900, 0.4010, "Continue toward Gerenzo Wrenchwhistle",
                    "Continue toward Gerenzo Wrenchwhistle."),
                Point(MAP.STONETALON, 0.6790, 0.3770, "Continue toward Gerenzo Wrenchwhistle",
                    "Continue toward Gerenzo Wrenchwhistle."),
                Point(MAP.STONETALON, 0.6400, 0.3900, "Gerenzo Wrenchwhistle",
                    "Travel to Gerenzo Wrenchwhistle."),
            },
        },
        {
            id = "turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Gerenzo Wrenchwhistle to Ziz Fizziks in Windshear Crag.",
            dependsOn = { "objective-1096-gerenzo-wrenchwhistle" },
            complete = QuestState(1096, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "objective-6381-new-life",
            kind = "objective",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Plant 10 Enchanted Gaea Seeds in Gaea Dirt Mounds west in The Charred Vale.",
            dependsOn = { "accept-6381-new-life" },
            complete = QuestState(6381, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.6700, "The Charred Vale",
                    "Travel to The Charred Vale."),
            },
        },
        {
            id = "objective-6393-elemental-war",
            kind = "objective",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill Rogue Flame Spirit, Burning Ravager or Burning Destroyer in The Charred Vale for 10 Incendrites.",
            dependsOn = { "accept-6393-elemental-war" },
            complete = QuestState(6393, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.6700, "Rogue Flame Spirit",
                    "Travel to Rogue Flame Spirit."),
            },
        },
        {
            id = "objective-6282-harpies-threaten",
            kind = "objective",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill the required Bloodfury Harpies in the The Charred Vale.",
            dependsOn = { "accept-6282-harpies-threaten" },
            complete = QuestState(6282, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3230, 0.6300, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "turnin-6282-harpies-threaten",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Harpies Threaten to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6282-harpies-threaten" },
            complete = QuestState(6282, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "turnin-6381-new-life",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in New Life to Tammra Windfield in Sun Rock Retreat.",
            dependsOn = { "objective-6381-new-life" },
            complete = QuestState(6381, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "turnin-6393-elemental-war",
            kind = "turnin",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Elemental War to Tsunaman in Sun Rock Retreat.",
            dependsOn = { "objective-6393-elemental-war" },
            complete = QuestState(6393, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6427, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "accept-5881-calling-in-the-reserves",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Calling in the Reserves from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(5881, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-6283-bloodfury-bloodline",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Bloodfury Bloodline from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(6283, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4718, 0.6108, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "objective-6283-bloodfury-bloodline",
            kind = "objective",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill Bloodfury Ripper and get Bloodfury Ripper's Remains in The Charred Vale.",
            dependsOn = { "accept-6283-bloodfury-bloodline" },
            complete = QuestState(6283, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3000, 0.6300, "Bloodfury Ripper",
                    "Travel to Bloodfury Ripper."),
            },
        },
        {
            id = "turnin-6283-bloodfury-bloodline",
            kind = "turnin",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Bloodfury Bloodline to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6283-bloodfury-bloodline" },
            complete = QuestState(6283, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4718, 0.6108, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-1196-the-sacred-flame",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { quest = { id = 1195, state = "completed" } },
                },
            },
            text = "Accept The Sacred Flame from Zangen Stonehoof in Thunder Bluff.",
            complete = QuestState(1196, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5467, 0.5128, "Zangen Stonehoof",
                    "Travel to Zangen Stonehoof."),
            },
        },
        {
            id = "turnin-1061-the-spirits-of-stonetalon",
            kind = "turnin",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept The Spirits of Stonetalon from Zor Lonetree, then turn it in to Seereth Stonebreak.",
            complete = QuestState(1061, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.352, 0.278, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak in Orgrimmar."),
            },
        },
        {
            id = "turnin-79980-scramble",
            kind = "turnin",
            priority = 1570,
            conditions = {
                all = {
                    { level = { min = 24 } },
                },
            },
            text = "Accept Scramble from Pocket Litter, then turn it in to Mound of Dirt.",
            complete = QuestState(79980, "completed"),
            route = {
                Point(MAP.STONETALON, 0.396, 0.499, "Mound of Dirt",
                    "Travel to Mound of Dirt."),
            },
        },
        {
            id = "turnin-79974-wet-job",
            kind = "turnin",
            priority = 1580,
            conditions = {
                all = {
                    { level = { min = 32 } },
                },
            },
            dependsOn = { "turnin-79980-scramble" },
            text = "Accept Wet Job from Mound of Dirt, then turn it in to Carved Figurine.",
            complete = QuestState(79974, "completed"),
            route = {
                Point(MAP.STONETALON, 0.495, 0.128, "Carved Figurine",
                    "Travel to Carved Figurine."),
            },
        },
        {
            id = "accept-1073-ineptitude-chemicals-fun",
            kind = "accept",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Ineptitude + Chemicals = Fun from Lomac Gearstrip.",
            complete = QuestState(1073, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "objective-1073-ineptitude-chemicals-fun-1",
            kind = "objective",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Ineptitude + Chemicals = Fun: Minor Mana Potion.",
            dependsOn = { "accept-1073-ineptitude-chemicals-fun" },
            complete = QuestObjective(1073, 1, "Minor Mana Potion"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "objective-1073-ineptitude-chemicals-fun-2",
            kind = "objective",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Ineptitude + Chemicals = Fun: Elixir of Minor Fortitude.",
            dependsOn = { "accept-1073-ineptitude-chemicals-fun" },
            complete = QuestObjective(1073, 2, "Elixir of Minor Fortitude"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "turnin-1073-ineptitude-chemicals-fun",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Ineptitude + Chemicals = Fun to Lomac Gearstrip.",
            dependsOn = { "objective-1073-ineptitude-chemicals-fun-2" },
            complete = QuestState(1073, "completed"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "accept-1074-ineptitude-chemicals-fun",
            kind = "accept",
            priority = 1630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            dependsOn = { "turnin-1073-ineptitude-chemicals-fun" },
            text = "Accept Ineptitude + Chemicals = Fun from Lomac Gearstrip.",
            complete = QuestState(1074, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "objective-1074-ineptitude-chemicals-fun-1",
            kind = "objective",
            priority = 1640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Ineptitude + Chemicals = Fun: NG-5.",
            dependsOn = { "accept-1074-ineptitude-chemicals-fun" },
            complete = QuestObjective(1074, 1, "NG-5"),
            route = {
                Point(MAP.ZONE_1455, 0.718, 0.516, "Lomac Gearstrip",
                    "Travel to Lomac Gearstrip in Ironforge."),
            },
        },
        {
            id = "turnin-1074-ineptitude-chemicals-fun",
            kind = "turnin",
            priority = 1650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Ineptitude + Chemicals = Fun to Gaxim Rustfizzle.",
            dependsOn = { "objective-1074-ineptitude-chemicals-fun-1" },
            complete = QuestState(1074, "completed"),
            route = {
                Point(MAP.ZONE_1455, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle in Ironforge."),
            },
        },
        {
            id = "turnin-1075-a-scroll-from-mauren",
            kind = "turnin",
            priority = 1660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept A Scroll from Mauren from Gaxim Rustfizzle, then turn it in to Collin Mauren.",
            complete = QuestState(1075, "completed"),
            route = {
                Point(MAP.STONETALON, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren."),
            },
        },
        {
            id = "accept-1076-devils-in-westfall",
            kind = "accept",
            priority = 1670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            dependsOn = { "turnin-1075-a-scroll-from-mauren" },
            text = "Accept Devils in Westfall from Collin Mauren.",
            complete = QuestState(1076, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "accept-1077-special-delivery-for-gaxim",
            kind = "accept",
            priority = 1680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Special Delivery for Gaxim from Collin Mauren.",
            complete = QuestState(1077, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "accept-1078-retrieval-for-mauren",
            kind = "accept",
            priority = 1690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Retrieval for Mauren from Collin Mauren.",
            complete = QuestState(1078, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "objective-1078-retrieval-for-mauren-1",
            kind = "objective",
            priority = 1700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Retrieval for Mauren: Crystalized Scales.",
            dependsOn = { "accept-1078-retrieval-for-mauren" },
            complete = QuestObjective(1078, 1, "Crystalized Scales"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "turnin-1078-retrieval-for-mauren",
            kind = "turnin",
            priority = 1710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Retrieval for Mauren to Collin Mauren.",
            dependsOn = { "objective-1078-retrieval-for-mauren-1" },
            complete = QuestState(1078, "completed"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "objective-1077-special-delivery-for-gaxim-1",
            kind = "objective",
            priority = 1720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Special Delivery for Gaxim: Scroll of Messaging.",
            dependsOn = { "accept-1077-special-delivery-for-gaxim" },
            complete = QuestObjective(1077, 1, "Scroll of Messaging"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "turnin-1077-special-delivery-for-gaxim",
            kind = "turnin",
            priority = 1730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Special Delivery for Gaxim to Gaxim Rustfizzle.",
            dependsOn = { "objective-1077-special-delivery-for-gaxim-1" },
            complete = QuestState(1077, "completed"),
            route = {
                Point(MAP.ZONE_1453, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle in Stormwind City."),
            },
        },
        {
            id = "objective-1076-devils-in-westfall-1",
            kind = "objective",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Devils in Westfall: Dust Devil Debris.",
            dependsOn = { "accept-1076-devils-in-westfall" },
            complete = QuestObjective(1076, 1, "Dust Devil Debris"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "turnin-1076-devils-in-westfall",
            kind = "turnin",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Devils in Westfall to Collin Mauren.",
            dependsOn = { "objective-1076-devils-in-westfall-1" },
            complete = QuestState(1076, "completed"),
            route = {
                Point(MAP.ZONE_1453, 0.430, 0.802, "Collin Mauren",
                    "Travel to Collin Mauren in Stormwind City."),
            },
        },
        {
            id = "turnin-1082-update-for-sentinel-thenysil",
            kind = "turnin",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept Update for Sentinel Thenysil from Kaela Shadowspear, then turn it in to Sentinel Thenysil.",
            complete = QuestState(1082, "completed"),
            route = {
                Point(MAP.STONETALON, 0.348, 0.498, "Sentinel Thenysil",
                    "Travel to Sentinel Thenysil."),
            },
        },
        {
            id = "turnin-1081-reception-from-tyrande",
            kind = "turnin",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "turnin-1082-update-for-sentinel-thenysil" },
            text = "Accept Reception from Tyrande from Sentinel Thenysil, then turn it in to Tyrande Whisperwind.",
            complete = QuestState(1081, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.390, 0.812, "Tyrande Whisperwind",
                    "Travel to Tyrande Whisperwind in Ashenvale."),
            },
        },
        {
            id = "accept-1090-gerenzos-orders",
            kind = "accept",
            priority = 1780,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            text = "Accept Gerenzo's Orders from Piznik.",
            complete = QuestState(1090, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.718, 0.600, "Piznik",
                    "Travel to Piznik."),
            },
        },
        {
            id = "objective-1090-gerenzos-orders-1",
            kind = "objective",
            priority = 1790,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            text = "Gerenzo's Orders: Gerenzo's Orders.",
            dependsOn = { "accept-1090-gerenzos-orders" },
            complete = QuestObjective(1090, 1, "Gerenzo's Orders"),
            route = {
                Point(MAP.STONETALON, 0.718, 0.600, "Piznik",
                    "Travel to Piznik."),
            },
        },
        {
            id = "turnin-1090-gerenzos-orders",
            kind = "turnin",
            priority = 1800,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            text = "Turn in Gerenzo's Orders to Piznik.",
            dependsOn = { "objective-1090-gerenzos-orders-1" },
            complete = QuestState(1090, "completed"),
            route = {
                Point(MAP.STONETALON, 0.718, 0.600, "Piznik",
                    "Travel to Piznik."),
            },
        },
        {
            id = "accept-1092-gerenzos-orders",
            kind = "accept",
            priority = 1810,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            dependsOn = { "turnin-1090-gerenzos-orders" },
            text = "Accept Gerenzo's Orders from Piznik.",
            complete = QuestState(1092, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.718, 0.600, "Piznik",
                    "Travel to Piznik."),
            },
        },
        {
            id = "objective-1092-gerenzos-orders-1",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            text = "Gerenzo's Orders: Unidentified Ore.",
            dependsOn = { "accept-1092-gerenzos-orders" },
            complete = QuestObjective(1092, 1, "Unidentified Ore"),
            route = {
                Point(MAP.STONETALON, 0.718, 0.600, "Piznik",
                    "Travel to Piznik."),
            },
        },
        {
            id = "turnin-1092-gerenzos-orders",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { level = { min = 22 } },
                },
            },
            text = "Turn in Gerenzo's Orders to Ziz Fizziks.",
            dependsOn = { "objective-1092-gerenzos-orders-1" },
            complete = QuestState(1092, "completed"),
            route = {
                Point(MAP.STONETALON, 0.590, 0.624, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "turnin-6542-report-to-kadrak",
            kind = "turnin",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Report to Kadrak from Darn Talongrip, then turn it in to Kadrak.",
            complete = QuestState(6542, "completed"),
            route = {
                Point(MAP.STONETALON, 0.480, 0.054, "Kadrak",
                    "Travel to Kadrak."),
            },
        },
        {
            id = "objective-86574-stonetalon-supply-run-1",
            kind = "objective",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Stonetalon Supply Run: Stonetalon Supply Bundle.",
            complete = QuestObjective(86574, 1, "Stonetalon Supply Bundle"),
            route = {
                Point(MAP.ZONE_1441, 0.532, 0.410, "Freewind Post Wyvern",
                    "Travel to Freewind Post Wyvern in Thousand Needles."),
            },
        },
        {
            id = "objective-86574-stonetalon-supply-run-2",
            kind = "objective",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Stonetalon Supply Run: Stonetalon Supply Satchel.",
            complete = QuestObjective(86574, 2, "Stonetalon Supply Satchel"),
            route = {
                Point(MAP.ZONE_1441, 0.532, 0.410, "Freewind Post Wyvern",
                    "Travel to Freewind Post Wyvern in Thousand Needles."),
            },
        },
        {
            id = "turnin-86574-stonetalon-supply-run",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Turn in Stonetalon Supply Run to . Wowhead has no pin, so follow the quest text.",
            dependsOn = { "objective-86574-stonetalon-supply-run-2" },
            complete = QuestState(86574, "completed"),
            route = {},
        },
        {
            id = "accept-97538-pigments-for-paints",
            kind = "accept",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Pigments for Paints from Tah Winterhoof.",
            complete = QuestState(97538, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.540, 0.474, "Tah Winterhoof",
                    "Travel to Tah Winterhoof in Thunder Bluff."),
            },
        },
        {
            id = "objective-97538-pigments-for-paints-1",
            kind = "objective",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Pigments for Paints: Mirkweed Pods.",
            dependsOn = { "accept-97538-pigments-for-paints" },
            complete = QuestObjective(97538, 1, "Mirkweed Pods"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.540, 0.474, "Tah Winterhoof",
                    "Travel to Tah Winterhoof in Thunder Bluff."),
            },
        },
        {
            id = "turnin-97538-pigments-for-paints",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Pigments for Paints to Tah Winterhoof.",
            dependsOn = { "objective-97538-pigments-for-paints-1" },
            complete = QuestState(97538, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.540, 0.474, "Tah Winterhoof",
                    "Travel to Tah Winterhoof in Thunder Bluff."),
            },
        },
        {
            id = "accept-80001-rekindle",
            kind = "accept",
            priority = 1901,
            conditions = { level = { min = 40 } },
            text = "Accept Rekindle from Firepit.",
            complete = QuestState(80001, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.406, 0.524, "Firepit",
                    "Travel to Firepit."),
            },
        },
        {
            id = "objective-80001-rekindle-1",
            kind = "objective",
            priority = 1902,
            conditions = { level = { min = 40 } },
            text = "Rekindle: Simple Wood.",
            dependsOn = { "accept-80001-rekindle" },
            complete = QuestObjective(80001, 1, "Simple Wood"),
            route = {
                Point(MAP.STONETALON, 0.406, 0.524, "Firepit",
                    "Travel to Firepit."),
            },
        },
        {
            id = "objective-80001-rekindle-2",
            kind = "objective",
            priority = 1903,
            conditions = { level = { min = 40 } },
            text = "Rekindle: Flint and Tinder.",
            dependsOn = { "accept-80001-rekindle" },
            complete = QuestObjective(80001, 2, "Flint and Tinder"),
            route = {
                Point(MAP.STONETALON, 0.406, 0.524, "Firepit",
                    "Travel to Firepit."),
            },
        },
        {
            id = "turnin-80001-rekindle",
            kind = "turnin",
            priority = 1904,
            conditions = { level = { min = 40 } },
            text = "Turn in Rekindle to Firepit.",
            dependsOn = { "objective-80001-rekindle-2" },
            complete = QuestState(80001, "completed"),
            route = {
                Point(MAP.STONETALON, 0.406, 0.524, "Firepit",
                    "Travel to Firepit."),
            },
        },
    },
})
