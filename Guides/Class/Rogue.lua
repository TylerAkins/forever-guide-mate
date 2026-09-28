local _, ns = ...

-- Rogue class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- The Horn of Xelthos
-- At Home in the Shadows
-- Left out (dungeon quest): The Azure Key
-- Left out (no start pin): Second-Story Work, The Dark Hoard, Fool Me Twice, Atop the Cliffs, Into the Hold of Shadows, The Enemy of my Enemy, The Manor, Ravenholdt, The Talisman of Kazdor, Thrice Stolen, The Azure Key, Goblin Lockpicks, One Last Drop (+6 more)

local MAP = {
    ALTERACMOUNTAINS = 1416,
    AZSHARA = 1447,
    BARRENS = 1413,
    DARNASSUS = 1457,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    ELWYNNFOREST = 1429,
    HILLSBRADFOOTHILLS = 1424,
    IRONFORGE = 1455,
    ORGRIMMAR = 1454,
    REDRIDGEMOUNTAINS = 1433,
    SILVERPINEFOREST = 1421,
    STORMWINDCITY = 1453,
    TELDRASSIL = 1438,
    TIRISFALGLADES = 1420,
    UNDERCITY = 1458,
    WESTFALL = 1436,
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
    id = "class-rogue",
    title = "Rogue",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 4 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-78261-the-horn-of-xelthos",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Horn of Xelthos from Dead Drop in Silverpine Forest.",
            complete = QuestState(78261, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4710, 0.7110, "Dead Drop",
                    "Travel to Dead Drop in Silverpine Forest."),
            },
        },
        {
            id = "turnin-78261-the-horn-of-xelthos",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Horn of Xelthos to Dead Drop in Silverpine Forest.",
            dependsOn = { "accept-78261-the-horn-of-xelthos" },
            complete = QuestState(78261, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.4710, 0.7110, "Dead Drop",
                    "Travel to Dead Drop in Silverpine Forest."),
            },
        },
        {
            id = "accept-92483-at-home-in-the-shadows",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept At Home in the Shadows from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92483, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92483-at-home-in-the-shadows",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in At Home in the Shadows to Akeri Duskblade in Zephras Isle.",
            dependsOn = { "accept-92483-at-home-in-the-shadows" },
            complete = QuestState(92483, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4360, 0.2420, "Akeri Duskblade",
                    "Travel to Akeri Duskblade in Zephras Isle."),
            },
        },
        {
            id = "accept-2218-road-to-salvation",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Road to Salvation from Hogral Bakkan in Dun Morogh.",
            complete = QuestState(2218, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4760, 0.5260, "Hogral Bakkan",
                    "Travel to Hogral Bakkan in Dun Morogh."),
            },
        },
        {
            id = "turnin-2218-road-to-salvation",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Road to Salvation to Hulfdan Blackbeard in Ironforge.",
            dependsOn = { "accept-2218-road-to-salvation" },
            complete = QuestState(2218, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge."),
            },
        },
        {
            id = "accept-2238-simple-subterfugin",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Simple Subterfugin' from Hulfdan Blackbeard in Ironforge.",
            dependsOn = { "turnin-2218-road-to-salvation" },
            complete = QuestState(2238, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge."),
            },
        },
        {
            id = "turnin-2238-simple-subterfugin",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Simple Subterfugin' to Onin MacHammar in Dun Morogh.",
            dependsOn = { "accept-2238-simple-subterfugin" },
            complete = QuestState(2238, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2520, 0.4440, "Onin MacHammar",
                    "Travel to Onin MacHammar in Dun Morogh."),
            },
        },
        {
            id = "accept-2239-onins-report",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Onin's Report from Onin MacHammar in Dun Morogh.",
            dependsOn = { "turnin-2238-simple-subterfugin" },
            complete = QuestState(2239, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2520, 0.4440, "Onin MacHammar",
                    "Travel to Onin MacHammar in Dun Morogh."),
            },
        },
        {
            id = "turnin-2239-onins-report",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Onin's Report to Hulfdan Blackbeard in Ironforge.",
            dependsOn = { "accept-2239-onins-report" },
            complete = QuestState(2239, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge."),
            },
        },
        {
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Mathias and the Defias from Master Mathias Shaw in Stormwind City.",
            complete = QuestState(2360, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "turnin-2360-mathias-and-the-defias",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Mathias and the Defias to Agent Kearnen in Westfall.",
            dependsOn = { "accept-2360-mathias-and-the-defias" },
            complete = QuestState(2360, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.6840, 0.7000, "Agent Kearnen",
                    "Travel to Agent Kearnen in Westfall."),
            },
        },
        {
            id = "accept-2359-klavens-tower",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Klaven's Tower from Agent Kearnen in Westfall.",
            dependsOn = { "turnin-2360-mathias-and-the-defias" },
            complete = QuestState(2359, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.6840, 0.7000, "Agent Kearnen",
                    "Travel to Agent Kearnen in Westfall."),
            },
        },
        {
            id = "objective-2359-klavens-tower",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Klaven's Tower: Defias Tower Key. This is an elite. Bring a group.",
            dependsOn = { "accept-2359-klavens-tower" },
            complete = QuestState(2359, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.6940, 0.7440, "Malformed Defias Drone",
                    "Travel to Malformed Defias Drone in Westfall."),
                Point(MAP.WESTFALL, 0.7040, 0.7420, "Klaven Mortwake",
                    "Travel to Klaven Mortwake in Westfall."),
            },
        },
        {
            id = "turnin-2359-klavens-tower",
            kind = "turnin",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Klaven's Tower to Master Mathias Shaw in Stormwind City.",
            dependsOn = { "objective-2359-klavens-tower" },
            complete = QuestState(2359, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "accept-2607-the-touch-of-zanzil",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Touch of Zanzil from Master Mathias Shaw in Stormwind City.",
            dependsOn = { "turnin-2359-klavens-tower" },
            complete = QuestState(2607, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "turnin-2607-the-touch-of-zanzil",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
            dependsOn = { "accept-2607-the-touch-of-zanzil" },
            complete = QuestState(2607, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7800, 0.5900, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil in Stormwind City."),
            },
        },
        {
            id = "accept-2608-the-touch-of-zanzil",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Touch of Zanzil from Doc Mixilpixil in Stormwind City.",
            dependsOn = { "turnin-2607-the-touch-of-zanzil" },
            complete = QuestState(2608, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7800, 0.5900, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil in Stormwind City."),
            },
        },
        {
            id = "turnin-2608-the-touch-of-zanzil",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
            dependsOn = { "accept-2608-the-touch-of-zanzil" },
            complete = QuestState(2608, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7800, 0.5900, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil in Stormwind City."),
            },
        },
        {
            id = "accept-8233-a-simple-request",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept A Simple Request from Miles Dexter in Undercity.",
            complete = QuestState(8233, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.7120, "Miles Dexter",
                    "Travel to Miles Dexter in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.STORMWINDCITY, 0.7440, 0.5280, "Osborne the Night Man",
                    "Travel to Osborne the Night Man in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.ORGRIMMAR, 0.4400, 0.5440, "Ormok",
                    "Travel to Ormok in Orgrimmar.", { map = { MAP.DARNASSUS } }),
                Point(MAP.DARNASSUS, 0.3680, 0.2180, "Syurna",
                    "Travel to Syurna in Darnassus."),
            },
        },
        {
            id = "turnin-8233-a-simple-request",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in A Simple Request to Lord Jorach Ravenholdt in Alterac Mountains.",
            dependsOn = { "accept-8233-a-simple-request" },
            complete = QuestState(8233, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8600, 0.7900, "Lord Jorach Ravenholdt",
                    "Travel to Lord Jorach Ravenholdt in Alterac Mountains."),
            },
        },
        {
            id = "accept-8234-sealed-azure-bag",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Sealed Azure Bag from Lord Jorach Ravenholdt in Alterac Mountains.",
            dependsOn = { "turnin-8233-a-simple-request" },
            complete = QuestState(8234, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8600, 0.7900, "Lord Jorach Ravenholdt",
                    "Travel to Lord Jorach Ravenholdt in Alterac Mountains."),
            },
        },
        {
            id = "turnin-8234-sealed-azure-bag",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Sealed Azure Bag to Archmage Xylem in Azshara.",
            dependsOn = { "accept-8234-sealed-azure-bag" },
            complete = QuestState(8234, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "accept-3503-meeting-with-the-master",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 45 } },
                },
            },
            text = "Accept Meeting with the Master from Sanath Lim-yo in Azshara.",
            complete = QuestState(3503, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2800, 0.5000, "Sanath Lim-yo",
                    "Travel to Sanath Lim-yo in Azshara."),
            },
        },
        {
            id = "turnin-3503-meeting-with-the-master",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 45 } },
                },
            },
            text = "Turn in Meeting with the Master to Sanath Lim-yo in Azshara.",
            dependsOn = { "accept-3503-meeting-with-the-master" },
            complete = QuestState(3503, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2800, 0.5000, "Sanath Lim-yo",
                    "Travel to Sanath Lim-yo in Azshara."),
            },
        },
        {
            id = "accept-8235-encoded-fragments",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Encoded Fragments from Archmage Xylem in Azshara.",
            dependsOn = { "turnin-8234-sealed-azure-bag" },
            complete = QuestState(8235, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "objective-8235-encoded-fragments",
            kind = "objective",
            priority = 270,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Encoded Fragments: Encoded Fragment.",
            dependsOn = { "accept-8235-encoded-fragments" },
            complete = QuestState(8235, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.1840, 0.6560, "The Evalcharr",
                    "Travel to The Evalcharr in Azshara."),
                Point(MAP.AZSHARA, 0.7140, 0.2900, "Forest Ooze",
                    "Travel to Forest Ooze in Azshara."),
            },
        },
        {
            id = "turnin-8235-encoded-fragments",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Encoded Fragments to Archmage Xylem in Azshara.",
            dependsOn = { "objective-8235-encoded-fragments" },
            complete = QuestState(8235, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "accept-3421-return-trip",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 45 } },
                },
            },
            text = "Accept Return Trip from Nyrill in Azshara.",
            complete = QuestState(3421, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2640, 0.4620, "Nyrill",
                    "Travel to Nyrill in Azshara."),
            },
        },
        {
            id = "turnin-3421-return-trip",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 45 } },
                },
            },
            text = "Turn in Return Trip to Nyrill in Azshara.",
            dependsOn = { "accept-3421-return-trip" },
            complete = QuestState(3421, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2640, 0.4620, "Nyrill",
                    "Travel to Nyrill in Azshara."),
            },
        },
        {
            id = "accept-2460-the-shattered-salute",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Shattered Salute from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            complete = QuestState(2460, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "turnin-2460-the-shattered-salute",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Shattered Salute to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2460-the-shattered-salute" },
            complete = QuestState(2460, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "accept-2458-deep-cover",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Deep Cover from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2460-the-shattered-salute" },
            complete = QuestState(2458, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "turnin-2458-deep-cover",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Deep Cover to Taskmaster Fizzule in The Barrens. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2458-deep-cover" },
            complete = QuestState(2458, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5540, 0.0560, "Taskmaster Fizzule",
                    "Travel to Taskmaster Fizzule in The Barrens."),
            },
        },
        {
            id = "accept-2478-mission-possible-but-not-probable",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Mission: Possible But Not Probable from Taskmaster Fizzule in The Barrens. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2458-deep-cover" },
            complete = QuestState(2478, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5540, 0.0560, "Taskmaster Fizzule",
                    "Travel to Taskmaster Fizzule in The Barrens."),
            },
        },
        {
            id = "objective-2478-mission-possible-but-not-probable",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Mission: Possible But Not Probable: Cache of Zanzil's Altered Mixture. This is an elite. Bring a group. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            complete = QuestState(2478, "complete"),
            route = {
                Point(MAP.BARRENS, 0.5540, 0.0560, "Taskmaster Fizzule",
                    "Travel to Taskmaster Fizzule in The Barrens."),
                Point(MAP.BARRENS, 0.5470, 0.0560, "Gallywix's Lockbox",
                    "Travel to Gallywix's Lockbox in The Barrens."),
                Point(MAP.BARRENS, 0.5480, 0.0600, "Foreman Silixiz",
                    "Travel to Foreman Silixiz in The Barrens."),
                Point(MAP.BARRENS, 0.5480, 0.0560, "Grand Foreman Puzik Gallywix",
                    "Travel to Grand Foreman Puzik Gallywix in The Barrens."),
            },
        },
        {
            id = "turnin-2478-mission-possible-but-not-probable",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Mission: Possible But Not Probable to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "objective-2478-mission-possible-but-not-probable" },
            complete = QuestState(2478, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "accept-2479-hinotts-assistance",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Hinott's Assistance from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2478-mission-possible-but-not-probable" },
            complete = QuestState(2479, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "turnin-2479-hinotts-assistance",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Hinott's Assistance to Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2479-hinotts-assistance" },
            complete = QuestState(2479, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6160, 0.1920, "Serge Hinott",
                    "Travel to Serge Hinott in Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-2480-hinotts-assistance",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Hinott's Assistance from Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2479-hinotts-assistance" },
            complete = QuestState(2480, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6160, 0.1920, "Serge Hinott",
                    "Travel to Serge Hinott in Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-2480-hinotts-assistance",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Hinott's Assistance to Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2480-hinotts-assistance" },
            complete = QuestState(2480, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.6160, 0.1920, "Serge Hinott",
                    "Travel to Serge Hinott in Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-3083-encrypted-tablet",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 8 },
                },
            },
            text = "Accept Encrypted Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3083, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3083-encrypted-tablet",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 8 },
                },
            },
            text = "Turn in Encrypted Tablet to Rwag in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3083-encrypted-tablet" },
            complete = QuestState(3083, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4120, 0.6800, "Rwag",
                    "Travel to Rwag in Durotar."),
            },
        },
        {
            id = "accept-3088-encrypted-parchment",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 2 },
                },
            },
            text = "Accept Encrypted Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(3088, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3088-encrypted-parchment",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 2 },
                },
            },
            text = "Turn in Encrypted Parchment to Rwag in Durotar. This step is for Orcs.",
            dependsOn = { "accept-3088-encrypted-parchment" },
            complete = QuestState(3088, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4120, 0.6800, "Rwag",
                    "Travel to Rwag in Durotar."),
            },
        },
        {
            id = "accept-3096-encrypted-scroll",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                },
            },
            text = "Accept Encrypted Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(3096, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-3096-encrypted-scroll",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                },
            },
            text = "Turn in Encrypted Scroll to David Trias in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-3096-encrypted-scroll" },
            complete = QuestState(3096, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3240, 0.6560, "David Trias",
                    "Travel to David Trias in Tirisfal Glades."),
            },
        },
        {
            id = "accept-3102-encrypted-letter",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 1 },
                },
            },
            text = "Accept Encrypted Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3102, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3102-encrypted-letter",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 1 },
                },
            },
            text = "Turn in Encrypted Letter to Jorik Kerridan in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3102-encrypted-letter" },
            complete = QuestState(3102, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.5040, 0.3980, "Jorik Kerridan",
                    "Travel to Jorik Kerridan in Elwynn Forest."),
            },
        },
        {
            id = "accept-3109-encrypted-rune",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 3 },
                },
            },
            text = "Accept Encrypted Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(3109, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3109-encrypted-rune",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 3 },
                },
            },
            text = "Turn in Encrypted Rune to Solm Hargrin in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-3109-encrypted-rune" },
            complete = QuestState(3109, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2840, 0.6740, "Solm Hargrin",
                    "Travel to Solm Hargrin in Dun Morogh."),
            },
        },
        {
            id = "accept-3113-encrypted-memorandum",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 7 },
                },
            },
            text = "Accept Encrypted Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
            complete = QuestState(3113, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3113-encrypted-memorandum",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = 7 },
                },
            },
            text = "Turn in Encrypted Memorandum to Solm Hargrin in Dun Morogh. This step is for Gnomes.",
            dependsOn = { "accept-3113-encrypted-memorandum" },
            complete = QuestState(3113, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2840, 0.6740, "Solm Hargrin",
                    "Travel to Solm Hargrin in Dun Morogh."),
            },
        },
        {
            id = "accept-3118-encrypted-sigil",
            kind = "accept",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = { 1, 4 } },
                },
            },
            text = "Accept Encrypted Sigil from Conservator Ilthalaine in Teldrassil. This step is for Humans and Night Elves.",
            complete = QuestState(3118, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4420, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine in Teldrassil."),
            },
        },
        {
            id = "turnin-3118-encrypted-sigil",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { race = { 1, 4 } },
                },
            },
            text = "Turn in Encrypted Sigil to Frahun Shadewhisper in Teldrassil. This step is for Humans and Night Elves.",
            dependsOn = { "accept-3118-encrypted-sigil" },
            complete = QuestState(3118, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5960, 0.3860, "Frahun Shadewhisper",
                    "Travel to Frahun Shadewhisper in Teldrassil."),
            },
        },
        {
            id = "accept-1859-therzok",
            kind = "accept",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Therzok from Kaplak in Durotar. This step is for Orcs and Trolls.",
            complete = QuestState(1859, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5200, 0.4360, "Kaplak",
                    "Travel to Kaplak in Durotar."),
            },
        },
        {
            id = "turnin-1859-therzok",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Therzok to Therzok in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-1859-therzok" },
            complete = QuestState(1859, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5340, "Therzok",
                    "Travel to Therzok in Orgrimmar."),
            },
        },
        {
            id = "accept-1885-mennet-carkad",
            kind = "accept",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Mennet Carkad from Marion Call in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(1885, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6160, 0.5200, "Marion Call",
                    "Travel to Marion Call in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1885-mennet-carkad",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Mennet Carkad to Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "accept-1885-mennet-carkad" },
            complete = QuestState(1885, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "accept-1886-the-deathstalkers",
            kind = "accept",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1885-mennet-carkad" },
            complete = QuestState(1886, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-1886-the-deathstalkers",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Deathstalkers to Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "accept-1886-the-deathstalkers" },
            complete = QuestState(1886, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "accept-1898-the-deathstalkers",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1886-the-deathstalkers" },
            complete = QuestState(1898, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-1898-the-deathstalkers",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Deathstalkers to Andron Gant in Undercity. This step is for Undead.",
            dependsOn = { "accept-1898-the-deathstalkers" },
            complete = QuestState(1898, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5460, 0.7560, "Andron Gant",
                    "Travel to Andron Gant in Undercity."),
            },
        },
        {
            id = "accept-1899-the-deathstalkers",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Deathstalkers from Andron Gant in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1898-the-deathstalkers" },
            complete = QuestState(1899, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5460, 0.7560, "Andron Gant",
                    "Travel to Andron Gant in Undercity."),
            },
        },
        {
            id = "turnin-1899-the-deathstalkers",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Deathstalkers to Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "accept-1899-the-deathstalkers" },
            complete = QuestState(1899, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "accept-1963-the-shattered-hand",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Shattered Hand from Therzok in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-1859-therzok" },
            complete = QuestState(1963, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5340, "Therzok",
                    "Travel to Therzok in Orgrimmar."),
            },
        },
        {
            id = "turnin-1963-the-shattered-hand",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Shattered Hand to Therzok in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "accept-1963-the-shattered-hand" },
            complete = QuestState(1963, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5340, "Therzok",
                    "Travel to Therzok in Orgrimmar."),
            },
        },
        {
            id = "accept-1858-the-shattered-hand",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Shattered Hand from Therzok in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "turnin-1963-the-shattered-hand" },
            complete = QuestState(1858, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5340, "Therzok",
                    "Travel to Therzok in Orgrimmar."),
            },
        },
        {
            id = "objective-1858-the-shattered-hand",
            kind = "objective",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "The Shattered Hand: Tazan's Key. This step is for Orcs and Trolls.",
            dependsOn = { "accept-1858-the-shattered-hand" },
            complete = QuestState(1858, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5420, 0.6820, "Gamon",
                    "Travel to Gamon in Orgrimmar."),
            },
        },
        {
            id = "turnin-1858-the-shattered-hand",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Shattered Hand to Therzok in Orgrimmar. This step is for Orcs and Trolls.",
            dependsOn = { "objective-1858-the-shattered-hand" },
            complete = QuestState(1858, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5340, "Therzok",
                    "Travel to Therzok in Orgrimmar."),
            },
        },
        {
            id = "accept-1978-the-deathstalkers",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1899-the-deathstalkers" },
            complete = QuestState(1978, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-1978-the-deathstalkers",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Deathstalkers to Varimathras in Undercity. This step is for Undead.",
            dependsOn = { "accept-1978-the-deathstalkers" },
            complete = QuestState(1978, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5620, 0.9260, "Varimathras",
                    "Travel to Varimathras in Undercity."),
            },
        },
        {
            id = "accept-2205-seek-out-si-7",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Seek out SI: 7 from Keryn Sylvius in Elwynn Forest.",
            complete = QuestState(2205, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4380, 0.6580, "Keryn Sylvius",
                    "Travel to Keryn Sylvius in Elwynn Forest."),
            },
        },
        {
            id = "turnin-2205-seek-out-si-7",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Seek out SI: 7 to Master Mathias Shaw in Stormwind City.",
            dependsOn = { "accept-2205-seek-out-si-7" },
            complete = QuestState(2205, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "accept-2206-snatch-and-grab",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Snatch and Grab from Master Mathias Shaw in Stormwind City.",
            complete = QuestState(2206, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "turnin-2206-snatch-and-grab",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Snatch and Grab to Master Mathias Shaw in Stormwind City.",
            dependsOn = { "accept-2206-snatch-and-grab" },
            complete = QuestState(2206, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw in Stormwind City."),
            },
        },
        {
            id = "accept-2241-the-apple-falls",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Apple Falls from Jannok Breezesong in Teldrassil.",
            complete = QuestState(2241, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5620, 0.6000, "Jannok Breezesong",
                    "Travel to Jannok Breezesong in Teldrassil."),
            },
        },
        {
            id = "turnin-2241-the-apple-falls",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Apple Falls to Syurna in Darnassus.",
            dependsOn = { "accept-2241-the-apple-falls" },
            complete = QuestState(2241, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3680, 0.2180, "Syurna",
                    "Travel to Syurna in Darnassus."),
            },
        },
        {
            id = "accept-2242-destiny-calls",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Destiny Calls from Syurna in Darnassus.",
            complete = QuestState(2242, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3680, 0.2180, "Syurna",
                    "Travel to Syurna in Darnassus."),
            },
        },
        {
            id = "turnin-2242-destiny-calls",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Destiny Calls to Syurna in Darnassus.",
            dependsOn = { "accept-2242-destiny-calls" },
            complete = QuestState(2242, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3680, 0.2180, "Syurna",
                    "Travel to Syurna in Darnassus."),
            },
        },
        {
            id = "accept-1998-fenwick-thatros",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Fenwick Thatros from Mennet Carkad in Undercity. This step is for Undead.",
            complete = QuestState(1998, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-1998-fenwick-thatros",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Fenwick Thatros to Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "accept-1998-fenwick-thatros" },
            complete = QuestState(1998, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "accept-1999-tools-of-the-trade",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Tools of the Trade from Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1998-fenwick-thatros" },
            complete = QuestState(1999, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-1999-tools-of-the-trade",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = 5 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Tools of the Trade to Mennet Carkad in Undercity. This step is for Undead.",
            dependsOn = { "accept-1999-tools-of-the-trade" },
            complete = QuestState(1999, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "accept-2259-erion-shadewhisper",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Erion Shadewhisper from Jannok Breezesong in Teldrassil.",
            complete = QuestState(2259, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5620, 0.6000, "Jannok Breezesong",
                    "Travel to Jannok Breezesong in Teldrassil."),
            },
        },
        {
            id = "turnin-2259-erion-shadewhisper",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Erion Shadewhisper to Erion Shadewhisper in Darnassus.",
            dependsOn = { "accept-2259-erion-shadewhisper" },
            complete = QuestState(2259, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3460, 0.2560, "Erion Shadewhisper",
                    "Travel to Erion Shadewhisper in Darnassus."),
            },
        },
        {
            id = "accept-2260-erions-behest",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Erion's Behest from Erion Shadewhisper in Darnassus.",
            dependsOn = { "turnin-2259-erion-shadewhisper" },
            complete = QuestState(2260, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3460, 0.2560, "Erion Shadewhisper",
                    "Travel to Erion Shadewhisper in Darnassus."),
            },
        },
        {
            id = "turnin-2260-erions-behest",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Erion's Behest to Renzik \"The Shiv\" in Stormwind City.",
            dependsOn = { "accept-2260-erions-behest" },
            complete = QuestState(2260, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.6020, "Renzik \"The Shiv\"",
                    "Travel to Renzik \"The Shiv\" in Stormwind City."),
            },
        },
        {
            id = "accept-2281-redridge-rendezvous",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Redridge Rendezvous from Renzik \"The Shiv\" in Stormwind City.",
            complete = QuestState(2281, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.6020, "Renzik \"The Shiv\"",
                    "Travel to Renzik \"The Shiv\" in Stormwind City."),
            },
        },
        {
            id = "turnin-2281-redridge-rendezvous",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Redridge Rendezvous to Lucius in Redridge Mountains.",
            dependsOn = { "accept-2281-redridge-rendezvous" },
            complete = QuestState(2281, "completed"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2820, 0.5220, "Lucius",
                    "Travel to Lucius in Redridge Mountains."),
            },
        },
        {
            id = "accept-2282-althers-mill",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Alther's Mill from Lucius in Redridge Mountains.",
            dependsOn = { "turnin-2281-redridge-rendezvous" },
            complete = QuestState(2282, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2820, 0.5220, "Lucius",
                    "Travel to Lucius in Redridge Mountains."),
            },
        },
        {
            id = "turnin-2282-althers-mill",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Alther's Mill to Lucius in Redridge Mountains.",
            dependsOn = { "accept-2282-althers-mill" },
            complete = QuestState(2282, "completed"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2820, 0.5220, "Lucius",
                    "Travel to Lucius in Redridge Mountains."),
            },
        },
        {
            id = "accept-2299-to-hulfdan",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept To Hulfdan! from Hogral Bakkan in Dun Morogh.",
            complete = QuestState(2299, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4760, 0.5260, "Hogral Bakkan",
                    "Travel to Hogral Bakkan in Dun Morogh."),
            },
        },
        {
            id = "turnin-2299-to-hulfdan",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in To Hulfdan! to Hulfdan Blackbeard in Ironforge.",
            dependsOn = { "accept-2299-to-hulfdan" },
            complete = QuestState(2299, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge."),
            },
        },
        {
            id = "accept-2298-kingly-shakedown",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Kingly Shakedown from Hulfdan Blackbeard in Ironforge.",
            dependsOn = { "turnin-2299-to-hulfdan" },
            complete = QuestState(2298, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5160, 0.1480, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard in Ironforge."),
            },
        },
        {
            id = "turnin-2298-kingly-shakedown",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Kingly Shakedown to Renzik \"The Shiv\" in Stormwind City.",
            dependsOn = { "accept-2298-kingly-shakedown" },
            complete = QuestState(2298, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.6020, "Renzik \"The Shiv\"",
                    "Travel to Renzik \"The Shiv\" in Stormwind City."),
            },
        },
        {
            id = "accept-2300-si-7",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept SI:7 from Keryn Sylvius in Elwynn Forest.",
            complete = QuestState(2300, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4380, 0.6580, "Keryn Sylvius",
                    "Travel to Keryn Sylvius in Elwynn Forest."),
            },
        },
        {
            id = "turnin-2300-si-7",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in SI:7 to Renzik \"The Shiv\" in Stormwind City.",
            dependsOn = { "accept-2300-si-7" },
            complete = QuestState(2300, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7580, 0.6020, "Renzik \"The Shiv\"",
                    "Travel to Renzik \"The Shiv\" in Stormwind City."),
            },
        },
        {
            id = "accept-2378-find-the-shattered-hand",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Find the Shattered Hand from Mennet Carkad in Undercity. This step is for Orcs, Undead, and Trolls.",
            complete = QuestState(2378, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8320, 0.6900, "Mennet Carkad",
                    "Travel to Mennet Carkad in Undercity."),
            },
        },
        {
            id = "turnin-2378-find-the-shattered-hand",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Find the Shattered Hand to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2378-find-the-shattered-hand" },
            complete = QuestState(2378, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "accept-2380-to-orgrimmar",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept To Orgrimmar! from Kaplak in Durotar.",
            dependsOn = { "turnin-2378-find-the-shattered-hand" },
            complete = QuestState(2380, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5200, 0.4360, "Kaplak",
                    "Travel to Kaplak in Durotar."),
            },
        },
        {
            id = "turnin-2380-to-orgrimmar",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in To Orgrimmar! to Shenthul in Orgrimmar.",
            dependsOn = { "accept-2380-to-orgrimmar" },
            complete = QuestState(2380, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "accept-2379-zandozan",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Zando'zan from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2380-to-orgrimmar" },
            complete = QuestState(2379, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4300, 0.5340, "Shenthul",
                    "Travel to Shenthul in Orgrimmar."),
            },
        },
        {
            id = "turnin-2379-zandozan",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Zando'zan to Zando'zan in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2379-zandozan" },
            complete = QuestState(2379, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5300, "Zando'zan",
                    "Travel to Zando'zan in Orgrimmar."),
            },
        },
        {
            id = "accept-2382-wrenix-of-ratchet",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Wrenix of Ratchet from Zando'zan in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2379-zandozan" },
            complete = QuestState(2382, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4280, 0.5300, "Zando'zan",
                    "Travel to Zando'zan in Orgrimmar."),
            },
        },
        {
            id = "turnin-2382-wrenix-of-ratchet",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Wrenix of Ratchet to Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2382-wrenix-of-ratchet" },
            complete = QuestState(2382, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6300, 0.3640, "Wrenix the Wretched",
                    "Travel to Wrenix the Wretched in The Barrens."),
            },
        },
        {
            id = "accept-2381-plundering-the-plunderers",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Plundering the Plunderers from Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "turnin-2382-wrenix-of-ratchet" },
            complete = QuestState(2381, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6300, 0.3640, "Wrenix the Wretched",
                    "Travel to Wrenix the Wretched in The Barrens."),
            },
        },
        {
            id = "objective-2381-plundering-the-plunderers",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Plundering the Plunderers: Southsea Treasure. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-2381-plundering-the-plunderers" },
            complete = QuestState(2381, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6480, 0.4540, "Polly",
                    "Travel to Polly in The Barrens."),
            },
        },
        {
            id = "turnin-2381-plundering-the-plunderers",
            kind = "turnin",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 4 },
                    { race = { 2, 5, 8 } },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Plundering the Plunderers to Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "objective-2381-plundering-the-plunderers" },
            complete = QuestState(2381, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6300, 0.3640, "Wrenix the Wretched",
                    "Travel to Wrenix the Wretched in The Barrens."),
            },
        },
        {
            id = "accept-2609-the-touch-of-zanzil",
            kind = "accept",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Touch of Zanzil from Doc Mixilpixil in Stormwind City.",
            complete = QuestState(2609, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7800, 0.5900, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil in Stormwind City."),
            },
        },
        {
            id = "objective-2609-the-touch-of-zanzil",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "The Touch of Zanzil: Simple Wildflowers.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestState(2609, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.7140, 0.2900, "Forest Ooze",
                    "Travel to Forest Ooze in Azshara."),
            },
        },
        {
            id = "turnin-2609-the-touch-of-zanzil",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
            dependsOn = { "objective-2609-the-touch-of-zanzil" },
            complete = QuestState(2609, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7800, 0.5900, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil in Stormwind City."),
            },
        },
        {
            id = "accept-6701-syndicate-emblems",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 24 } },
                },
            },
            text = "Accept Syndicate Emblems from Ravenholdt Guard in Hillsbrad Foothills.",
            complete = QuestState(6701, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.7760, 0.2000, "Ravenholdt Guard",
                    "Travel to Ravenholdt Guard in Hillsbrad Foothills.", { map = { MAP.ALTERACMOUNTAINS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.8440, 0.7940, "Ravenholdt Guard",
                    "Travel to Ravenholdt Guard in Alterac Mountains."),
            },
        },
        {
            id = "objective-6701-syndicate-emblems",
            kind = "objective",
            priority = 1140,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 24 } },
                },
            },
            text = "Syndicate Emblems: Syndicate Emblem.",
            dependsOn = { "accept-6701-syndicate-emblems" },
            complete = QuestState(6701, "complete"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.7880, 0.4140, "Syndicate Shadow Mage",
                    "Travel to Syndicate Shadow Mage in Hillsbrad Foothills.", { map = { MAP.ALTERACMOUNTAINS } }),
                Point(MAP.HILLSBRADFOOTHILLS, 0.7520, 0.4080, "Syndicate Rogue",
                    "Travel to Syndicate Rogue in Hillsbrad Foothills.", { map = { MAP.ALTERACMOUNTAINS } }),
                Point(MAP.HILLSBRADFOOTHILLS, 0.8100, 0.4400, "Syndicate Watchman",
                    "Travel to Syndicate Watchman in Hillsbrad Foothills.", { map = { MAP.ALTERACMOUNTAINS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.5640, 0.6560, "Syndicate Footpad",
                    "Travel to Syndicate Footpad in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.5900, 0.6920, "Syndicate Thief",
                    "Travel to Syndicate Thief in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.6180, 0.4100, "Syndicate Spy",
                    "Travel to Syndicate Spy in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.5620, 0.2720, "Syndicate Sentry",
                    "Travel to Syndicate Sentry in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.5620, 0.2740, "Syndicate Saboteur",
                    "Travel to Syndicate Saboteur in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.3920, 0.1520, "Syndicate Assassin",
                    "Travel to Syndicate Assassin in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.3920, 0.1540, "Syndicate Enforcer",
                    "Travel to Syndicate Enforcer in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.6180, 0.4100, "Syndicate Wizard",
                    "Travel to Syndicate Wizard in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.6220, 0.4320, "Gravis Slipknot",
                    "Travel to Gravis Slipknot in Alterac Mountains."),
            },
        },
        {
            id = "turnin-6701-syndicate-emblems",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 24 } },
                },
            },
            text = "Turn in Syndicate Emblems to Ravenholdt Guard in Hillsbrad Foothills.",
            dependsOn = { "objective-6701-syndicate-emblems" },
            complete = QuestState(6701, "completed"),
            route = {
                Point(MAP.HILLSBRADFOOTHILLS, 0.7760, 0.2000, "Ravenholdt Guard",
                    "Travel to Ravenholdt Guard in Hillsbrad Foothills.", { map = { MAP.ALTERACMOUNTAINS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.8440, 0.7940, "Ravenholdt Guard",
                    "Travel to Ravenholdt Guard in Alterac Mountains."),
            },
        },
        {
            id = "accept-8249-junkboxes-needed",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Junkboxes Needed from Fahrad in Alterac Mountains.",
            complete = QuestState(8249, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8440, 0.8020, "Fahrad",
                    "Travel to Fahrad in Alterac Mountains."),
            },
        },
        {
            id = "turnin-8249-junkboxes-needed",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { class = 4 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Junkboxes Needed to Fahrad in Alterac Mountains.",
            dependsOn = { "accept-8249-junkboxes-needed" },
            complete = QuestState(8249, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8440, 0.8020, "Fahrad",
                    "Travel to Fahrad in Alterac Mountains."),
            },
        }
    },
})
