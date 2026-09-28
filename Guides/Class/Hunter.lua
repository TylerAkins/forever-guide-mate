local _, ns = ...

-- Hunter class quests.
-- The classic route is the Zygor class guide. Forever quests from wow-database
-- are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- The Way of the Hunter
-- Taming the Beast
-- Taming the Beast
-- Taming the Beast
-- Taming the Beast
-- Training the Beast
-- Taming the Beast
-- Taming the Beast
-- Taming the Beast
-- Training the Beast
-- Left out (dungeon quest): The Green Drake
-- Left out (needs 6072, which is not on this route): The Hunter's Path
-- Left out (no start pin): Tracking the Trapper, One Night in Winterspring, Night Falls, Stave of the Ancients, Bug Hunt, Prowler, The Only Good Bug is a Dead Bug, The Beast Master of Moonglade, The Green Drake, A Hunter's Strength, Everyone Knows That Bugs Can't Fly, Showdown at Un'Goro Crater (+14 more)
-- Left out (raid quest): Ancient Sinew Wrapped Lamina, A Proper String

local MAP = {
    AZSHARA = 1447,
    DARNASSUS = 1457,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    ELWYNNFOREST = 1429,
    FELWOOD = 1448,
    IRONFORGE = 1455,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    STORMWINDCITY = 1453,
    TELDRASSIL = 1438,
    THUNDERBLUFF = 1456,
    ZEPHRASISLE = 2521,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
end

local function Point(mapID, x, y, label, offMapText, complete)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
    }
end

ns:RegisterGuide({
    id = "class-hunter",
    title = "Hunter",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 3 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-92482-the-way-of-the-hunter",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept The Way of the Hunter from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92482, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92482-the-way-of-the-hunter",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in The Way of the Hunter to Tai'ree Farsight in Zephras Isle.",
            dependsOn = { "accept-92482-the-way-of-the-hunter" },
            complete = QuestState(92482, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4240, 0.2360, "Tai'ree Farsight",
                    "Travel to Tai'ree Farsight in Zephras Isle."),
            },
        },
        {
            id = "accept-6063-taming-the-beast",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
            complete = QuestState(6063, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "turnin-6063-taming-the-beast",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-6063-taming-the-beast" },
            complete = QuestState(6063, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "accept-6101-taming-the-beast",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "turnin-6063-taming-the-beast" },
            complete = QuestState(6101, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "turnin-6101-taming-the-beast",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-6101-taming-the-beast" },
            complete = QuestState(6101, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "accept-6102-taming-the-beast",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "turnin-6101-taming-the-beast", "turnin-6063-taming-the-beast" },
            complete = QuestState(6102, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "turnin-6102-taming-the-beast",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-6102-taming-the-beast" },
            complete = QuestState(6102, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "accept-6103-training-the-beast",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "turnin-6102-taming-the-beast", "turnin-6101-taming-the-beast" },
            complete = QuestState(6103, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "turnin-6103-training-the-beast",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Jocaste in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-6103-training-the-beast" },
            complete = QuestState(6103, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.4020, 0.0880, "Jocaste",
                    "Travel to Jocaste in Darnassus."),
            },
        },
        {
            id = "accept-94007-taming-the-beast",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Elayaa Easewind in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(94007, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4520, 0.4420, "Elayaa Easewind",
                    "Travel to Elayaa Easewind in Zephras Isle."),
            },
        },
        {
            id = "turnin-94007-taming-the-beast",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94007-taming-the-beast" },
            complete = QuestState(94007, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "accept-94013-taming-the-beast",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(94013, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "turnin-94013-taming-the-beast",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94013-taming-the-beast" },
            complete = QuestState(94013, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "accept-94978-taming-the-beast",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "turnin-94013-taming-the-beast" },
            complete = QuestState(94978, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "turnin-94978-taming-the-beast",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94978-taming-the-beast" },
            complete = QuestState(94978, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "accept-94979-taming-the-beast",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "turnin-94978-taming-the-beast" },
            complete = QuestState(94979, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "turnin-94979-taming-the-beast",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94979-taming-the-beast" },
            complete = QuestState(94979, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "accept-94050-training-the-beast",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(94050, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'ana Quickgale",
                    "Travel to Quel'ana Quickgale in Zephras Isle."),
            },
        },
        {
            id = "turnin-94050-training-the-beast",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { class = 3 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Quel'dora Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94050-training-the-beast" },
            complete = QuestState(94050, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5960, 0.7260, "Quel'dora Quickgale",
                    "Travel to Quel'dora Quickgale in Zephras Isle."),
            },
        },
        {
            id = "accept-94792-taming-the-beast",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest.",
            complete = QuestState(94792, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94792-taming-the-beast",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest.",
            dependsOn = { "accept-94792-taming-the-beast" },
            complete = QuestState(94792, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "accept-94863-taming-the-beast",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest.",
            dependsOn = { "turnin-94792-taming-the-beast" },
            complete = QuestState(94863, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94863-taming-the-beast",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest.",
            dependsOn = { "accept-94863-taming-the-beast" },
            complete = QuestState(94863, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "accept-94864-taming-the-beast",
            kind = "accept",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest.",
            dependsOn = { "turnin-94863-taming-the-beast" },
            complete = QuestState(94864, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94864-taming-the-beast",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest.",
            dependsOn = { "accept-94864-taming-the-beast" },
            complete = QuestState(94864, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "accept-94793-training-the-beast",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Josephine Carson in Elwynn Forest.",
            dependsOn = { "turnin-94864-taming-the-beast" },
            complete = QuestState(94793, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4120, 0.6620, "Josephine Carson",
                    "Travel to Josephine Carson in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94793-training-the-beast",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Isaac Chan in Elwynn Forest.",
            dependsOn = { "accept-94793-training-the-beast" },
            complete = QuestState(94793, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4180, 0.6640, "Isaac Chan",
                    "Travel to Isaac Chan in Elwynn Forest."),
            },
        },
        {
            id = "accept-8151-the-hunters-charm",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept The Hunter's Charm from Ulfir Ironbeard in Stormwind City.",
            complete = QuestState(8151, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.6200, 0.1500, "Ulfir Ironbeard",
                    "Travel to Ulfir Ironbeard in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF, MAP.DARNASSUS } }),
                Point(MAP.IRONFORGE, 0.7060, 0.8380, "Olmin Burningbeard",
                    "Travel to Olmin Burningbeard in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF, MAP.DARNASSUS } }),
                Point(MAP.ORGRIMMAR, 0.6620, 0.1820, "Ormak Grimshot",
                    "Travel to Ormak Grimshot in Orgrimmar.", { map = { MAP.THUNDERBLUFF, MAP.DARNASSUS } }),
                Point(MAP.THUNDERBLUFF, 0.5740, 0.8920, "Holt Thunderhorn",
                    "Travel to Holt Thunderhorn in Thunder Bluff.", { map = { MAP.DARNASSUS } }),
                Point(MAP.DARNASSUS, 0.4220, 0.0760, "Dorion",
                    "Travel to Dorion in Darnassus."),
            },
        },
        {
            id = "turnin-8151-the-hunters-charm",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in The Hunter's Charm to Ogtinc in Azshara.",
            dependsOn = { "accept-8151-the-hunters-charm" },
            complete = QuestState(8151, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-8153-courser-antlers",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Courser Antlers from Ogtinc in Azshara.",
            dependsOn = { "turnin-8151-the-hunters-charm" },
            complete = QuestState(8153, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "objective-8153-courser-antlers",
            kind = "objective",
            priority = 320,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Courser Antlers: Perfect Courser Antler.",
            dependsOn = { "accept-8153-courser-antlers" },
            complete = QuestState(8153, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.3780, 0.6920, "Mosshoof Courser",
                    "Travel to Mosshoof Courser in Azshara."),
            },
        },
        {
            id = "turnin-8153-courser-antlers",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Courser Antlers to Ogtinc in Azshara.",
            dependsOn = { "objective-8153-courser-antlers" },
            complete = QuestState(8153, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-8231-wavethrashing",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Wavethrashing from Ogtinc in Azshara.",
            dependsOn = { "turnin-8153-courser-antlers", "turnin-8151-the-hunters-charm" },
            complete = QuestState(8231, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "objective-8231-wavethrashing",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Wavethrashing: Wavethrasher Scales.",
            dependsOn = { "accept-8231-wavethrashing" },
            complete = QuestState(8231, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.6540, 0.0860, "Young Wavethrasher",
                    "Travel to Young Wavethrasher in Azshara."),
                Point(MAP.AZSHARA, 0.7120, 0.3460, "Wavethrasher",
                    "Travel to Wavethrasher in Azshara."),
                Point(MAP.AZSHARA, 0.5580, 0.7220, "Great Wavethrasher",
                    "Travel to Great Wavethrasher in Azshara."),
            },
        },
        {
            id = "turnin-8231-wavethrashing",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Wavethrashing to Ogtinc in Azshara.",
            dependsOn = { "objective-8231-wavethrashing" },
            complete = QuestState(8231, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-7632-the-ancient-leaf",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept The Ancient Leaf from Vartus the Ancient in Felwood.",
            complete = QuestState(7632, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4899, 0.2444, "Vartus the Ancient",
                    "Travel to Vartus the Ancient in Felwood."),
                Point(MAP.FELWOOD, 0.4899, 0.2444, "Vartus the Ancient",
                    "Travel to Vartus the Ancient in Felwood."),
            },
        },
        {
            id = "turnin-7632-the-ancient-leaf",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in The Ancient Leaf to Vartrus the Ancient in Felwood.",
            dependsOn = { "accept-7632-the-ancient-leaf" },
            complete = QuestState(7632, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4880, 0.2420, "Vartrus the Ancient",
                    "Travel to Vartrus the Ancient in Felwood."),
            },
        },
        {
            id = "accept-7633-an-introduction",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept An Introduction from Vartrus the Ancient in Felwood.",
            dependsOn = { "turnin-7632-the-ancient-leaf" },
            complete = QuestState(7633, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4880, 0.2420, "Vartrus the Ancient",
                    "Travel to Vartrus the Ancient in Felwood."),
            },
        },
        {
            id = "turnin-7633-an-introduction",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in An Introduction to Vartrus the Ancient in Felwood.",
            dependsOn = { "accept-7633-an-introduction" },
            complete = QuestState(7633, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4880, 0.2420, "Vartrus the Ancient",
                    "Travel to Vartrus the Ancient in Felwood."),
            },
        },
        {
            id = "accept-7636-stave-of-the-ancients",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Stave of the Ancients from Vartrus the Ancient in Felwood.",
            dependsOn = { "turnin-7632-the-ancient-leaf" },
            complete = QuestState(7636, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4880, 0.2420, "Vartrus the Ancient",
                    "Travel to Vartrus the Ancient in Felwood."),
            },
        },
        {
            id = "turnin-7636-stave-of-the-ancients",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { class = 3 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Stave of the Ancients to Vartrus the Ancient in Felwood.",
            dependsOn = { "accept-7636-stave-of-the-ancients" },
            complete = QuestState(7636, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4880, 0.2420, "Vartrus the Ancient",
                    "Travel to Vartrus the Ancient in Felwood."),
            },
        },
        {
            id = "accept-3082-etched-tablet",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 8 },
                },
            },
            text = "Accept Etched Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3082, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3082-etched-tablet",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 8 },
                },
            },
            text = "Turn in Etched Tablet to Jen'shan in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3082-etched-tablet" },
            complete = QuestState(3082, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6920, "Jen'shan",
                    "Travel to Jen'shan in Durotar."),
            },
        },
        {
            id = "accept-3087-etched-parchment",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 2 },
                },
            },
            text = "Accept Etched Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(3087, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3087-etched-parchment",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 2 },
                },
            },
            text = "Turn in Etched Parchment to Jen'shan in Durotar. This step is for Orcs.",
            dependsOn = { "accept-3087-etched-parchment" },
            complete = QuestState(3087, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6920, "Jen'shan",
                    "Travel to Jen'shan in Durotar."),
            },
        },
        {
            id = "accept-3092-etched-note",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 6 } },
                },
            },
            text = "Accept Etched Note from Grull Hawkwind in Mulgore. This step is for Orcs and Tauren.",
            complete = QuestState(3092, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7720, "Grull Hawkwind",
                    "Travel to Grull Hawkwind in Mulgore."),
            },
        },
        {
            id = "turnin-3092-etched-note",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 6 } },
                },
            },
            text = "Turn in Etched Note to Lanka Farshot in Mulgore. This step is for Orcs and Tauren.",
            dependsOn = { "accept-3092-etched-note" },
            complete = QuestState(3092, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4420, 0.7580, "Lanka Farshot",
                    "Travel to Lanka Farshot in Mulgore."),
            },
        },
        {
            id = "accept-3108-etched-rune",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Accept Etched Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(3108, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3108-etched-rune",
            kind = "turnin",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                },
            },
            text = "Turn in Etched Rune to Thorgas Grimson in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-3108-etched-rune" },
            complete = QuestState(3108, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2900, 0.6740, "Thorgas Grimson",
                    "Travel to Thorgas Grimson in Dun Morogh."),
            },
        },
        {
            id = "accept-3117-etched-sigil",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                },
            },
            text = "Accept Etched Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
            complete = QuestState(3117, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4420, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine in Teldrassil."),
            },
        },
        {
            id = "turnin-3117-etched-sigil",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                },
            },
            text = "Turn in Etched Sigil to Ayanna Everstride in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-3117-etched-sigil" },
            complete = QuestState(3117, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4040, "Ayanna Everstride",
                    "Travel to Ayanna Everstride in Teldrassil."),
            },
        },
        {
            id = "accept-6065-the-hunters-path",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Kary Thunderhorn in Thunder Bluff. This step is for Tauren.",
            complete = QuestState(6065, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.5820, 0.8780, "Kary Thunderhorn",
                    "Travel to Kary Thunderhorn in Thunder Bluff."),
            },
        },
        {
            id = "turnin-6065-the-hunters-path",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-6065-the-hunters-path" },
            complete = QuestState(6065, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6066-the-hunters-path",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Sian'dur in Orgrimmar. This step is for Tauren.",
            dependsOn = { "turnin-6065-the-hunters-path" },
            complete = QuestState(6066, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6780, 0.1780, "Sian'dur",
                    "Travel to Sian'dur in Orgrimmar."),
            },
        },
        {
            id = "turnin-6066-the-hunters-path",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-6066-the-hunters-path" },
            complete = QuestState(6066, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6067-the-hunters-path",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Thotar in Durotar. This step is for Tauren.",
            dependsOn = { "turnin-6066-the-hunters-path" },
            complete = QuestState(6067, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "turnin-6067-the-hunters-path",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-6067-the-hunters-path" },
            complete = QuestState(6067, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6061-taming-the-beast",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "turnin-6067-the-hunters-path" },
            complete = QuestState(6061, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "turnin-6061-taming-the-beast",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-6061-taming-the-beast" },
            complete = QuestState(6061, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6087-taming-the-beast",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 6 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Orcs and Tauren.",
            dependsOn = { "turnin-6061-taming-the-beast" },
            complete = QuestState(6087, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "turnin-6087-taming-the-beast",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 6 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Orcs and Tauren.",
            dependsOn = { "accept-6087-taming-the-beast" },
            complete = QuestState(6087, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6088-taming-the-beast",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "turnin-6087-taming-the-beast", "turnin-6061-taming-the-beast" },
            complete = QuestState(6088, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "turnin-6088-taming-the-beast",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-6088-taming-the-beast" },
            complete = QuestState(6088, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "accept-6089-training-the-beast",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
            dependsOn = { "turnin-6088-taming-the-beast", "turnin-6087-taming-the-beast" },
            complete = QuestState(6089, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4780, 0.5560, "Yaw Sharpmane",
                    "Travel to Yaw Sharpmane in Mulgore."),
            },
        },
        {
            id = "turnin-6089-training-the-beast",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Holt Thunderhorn in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-6089-training-the-beast" },
            complete = QuestState(6089, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.5740, 0.8920, "Holt Thunderhorn",
                    "Travel to Holt Thunderhorn in Thunder Bluff."),
            },
        },
        {
            id = "accept-6068-the-hunters-path",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Sian'dur in Orgrimmar. This step is for Orcs and Trolls.",
            complete = QuestState(6068, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6780, 0.1780, "Sian'dur",
                    "Travel to Sian'dur in Orgrimmar."),
            },
        },
        {
            id = "turnin-6068-the-hunters-path",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6068-the-hunters-path" },
            complete = QuestState(6068, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6069-the-hunters-path",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Kali Remik in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6068-the-hunters-path" },
            complete = QuestState(6069, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7420, "Kali Remik",
                    "Travel to Kali Remik in Durotar."),
            },
        },
        {
            id = "turnin-6069-the-hunters-path",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6069-the-hunters-path" },
            complete = QuestState(6069, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6070-the-hunters-path",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Kary Thunderhorn in Thunder Bluff. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6069-the-hunters-path" },
            complete = QuestState(6070, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.5820, 0.8780, "Kary Thunderhorn",
                    "Travel to Kary Thunderhorn in Thunder Bluff."),
            },
        },
        {
            id = "turnin-6070-the-hunters-path",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6070-the-hunters-path" },
            complete = QuestState(6070, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6062-taming-the-beast",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6070-the-hunters-path" },
            complete = QuestState(6062, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "turnin-6062-taming-the-beast",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6062-taming-the-beast" },
            complete = QuestState(6062, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6083-taming-the-beast",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6062-taming-the-beast" },
            complete = QuestState(6083, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "turnin-6083-taming-the-beast",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6083-taming-the-beast" },
            complete = QuestState(6083, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6082-taming-the-beast",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6083-taming-the-beast", "turnin-6062-taming-the-beast" },
            complete = QuestState(6082, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "turnin-6082-taming-the-beast",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6082-taming-the-beast" },
            complete = QuestState(6082, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "accept-6081-training-the-beast",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-6082-taming-the-beast", "turnin-6083-taming-the-beast" },
            complete = QuestState(6081, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5180, 0.4340, "Thotar",
                    "Travel to Thotar in Durotar."),
            },
        },
        {
            id = "turnin-6081-training-the-beast",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 3 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Ormak Grimshot in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-6081-training-the-beast" },
            complete = QuestState(6081, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6620, 0.1820, "Ormak Grimshot",
                    "Travel to Ormak Grimshot in Orgrimmar."),
            },
        },
        {
            id = "accept-6071-the-hunters-path",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Jocaste in Darnassus. This step is for Night Elves.",
            complete = QuestState(6071, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.4020, 0.0880, "Jocaste",
                    "Travel to Jocaste in Darnassus."),
            },
        },
        {
            id = "turnin-6071-the-hunters-path",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Dazalar in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-6071-the-hunters-path" },
            complete = QuestState(6071, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5660, 0.5960, "Dazalar",
                    "Travel to Dazalar in Teldrassil."),
            },
        },
        {
            id = "accept-6074-the-hunters-path",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Olmin Burningbeard in Ironforge. This step is for Dwarves.",
            complete = QuestState(6074, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7060, 0.8380, "Olmin Burningbeard",
                    "Travel to Olmin Burningbeard in Ironforge."),
            },
        },
        {
            id = "turnin-6074-the-hunters-path",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6074-the-hunters-path" },
            complete = QuestState(6074, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6075-the-hunters-path",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Tristane Shadowstone in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-6074-the-hunters-path" },
            complete = QuestState(6075, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.3060, 0.4540, "Tristane Shadowstone",
                    "Travel to Tristane Shadowstone in Dun Morogh."),
            },
        },
        {
            id = "turnin-6075-the-hunters-path",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6075-the-hunters-path" },
            complete = QuestState(6075, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6076-the-hunters-path",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Hunter's Path from Einris Brightspear in Stormwind City. This step is for Dwarves.",
            dependsOn = { "turnin-6075-the-hunters-path" },
            complete = QuestState(6076, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.6160, 0.1540, "Einris Brightspear",
                    "Travel to Einris Brightspear in Stormwind City."),
            },
        },
        {
            id = "turnin-6076-the-hunters-path",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6076-the-hunters-path" },
            complete = QuestState(6076, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6064-taming-the-beast",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-6076-the-hunters-path" },
            complete = QuestState(6064, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "turnin-6064-taming-the-beast",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6064-taming-the-beast" },
            complete = QuestState(6064, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6084-taming-the-beast",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-6064-taming-the-beast" },
            complete = QuestState(6084, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "turnin-6084-taming-the-beast",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6084-taming-the-beast" },
            complete = QuestState(6084, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6085-taming-the-beast",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-6084-taming-the-beast", "turnin-6064-taming-the-beast" },
            complete = QuestState(6085, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "turnin-6085-taming-the-beast",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-6085-taming-the-beast" },
            complete = QuestState(6085, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "accept-6086-training-the-beast",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Training the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-6085-taming-the-beast", "turnin-6084-taming-the-beast" },
            complete = QuestState(6086, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4580, 0.5300, "Grif Wildheart",
                    "Travel to Grif Wildheart in Dun Morogh."),
            },
        },
        {
            id = "turnin-6086-training-the-beast",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 3 },
                    { race = 3 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Training the Beast to Belia Thundergranite in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-6086-training-the-beast" },
            complete = QuestState(6086, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7080, 0.8540, "Belia Thundergranite",
                    "Travel to Belia Thundergranite in Ironforge."),
            },
        }
    },
})
