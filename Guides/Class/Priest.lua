local _, ns = ...

-- Priest class quests.
-- The classic route is the Zygor class guide. Forever quests from wow-database
-- are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- Hallowed Memorandum
-- Divine Grace
-- Divine Grace
-- Confounding Flash
-- Confounding Flash
-- Left out (dungeon quest): Blood of Morphaz, An Earnest Proposition
-- Left out (needs 5653, which is not on this route): Hex of Weakness
-- Left out (needs 5659, which is not on this route): Touch of Weakness
-- Left out (no start pin): Desperate Prayer, Hex of Weakness, Elune's Grace, Divine Grace, Contingency Plan, Confounding Flash, The Troll Scroll

local MAP = {
    AZSHARA = 1447,
    DARNASSUS = 1457,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    EASTERNPLAGUELANDS = 1423,
    ELWYNNFOREST = 1429,
    IRONFORGE = 1455,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    STORMWINDCITY = 1453,
    TELDRASSIL = 1438,
    THUNDERBLUFF = 1456,
    TIRISFALGLADES = 1420,
    UNDERCITY = 1458,
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
    id = "class-priest",
    title = "Priest",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 5 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-98574-hallowed-memorandum",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                },
            },
            text = "Accept Hallowed Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
            complete = QuestState(98574, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-98574-hallowed-memorandum",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                },
            },
            text = "Turn in Hallowed Memorandum to Branstock Khalder in Dun Morogh. This step is for Gnomes.",
            dependsOn = { "accept-98574-hallowed-memorandum" },
            complete = QuestState(98574, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6640, "Branstock Khalder",
                    "Travel to Branstock Khalder in Dun Morogh."),
            },
        },
        {
            id = "accept-5637-desperate-prayer",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from Maxan Anvol in Dun Morogh. This step is for Humans and Dwarves.",
            complete = QuestState(5637, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "turnin-5637-desperate-prayer",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5637-desperate-prayer" },
            complete = QuestState(5637, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5629-returning-home",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Laurna Morninglight in Teldrassil. This step is for Night Elves.",
            complete = QuestState(5629, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight in Teldrassil."),
            },
        },
        {
            id = "turnin-5629-returning-home",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5629-returning-home" },
            complete = QuestState(5629, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-94774-divine-grace",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Divine Grace from Priestess Josetta in Elwynn Forest. This step is for Humans.",
            complete = QuestState(94774, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4340, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94774-divine-grace",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Divine Grace to High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-94774-divine-grace" },
            complete = QuestState(94774, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-94773-divine-grace",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Divine Grace from High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-94774-divine-grace" },
            complete = QuestState(94773, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "turnin-94773-divine-grace",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Divine Grace to High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-94773-divine-grace" },
            complete = QuestState(94773, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-94824-confounding-flash",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Confounding Flash from Maxan Anvol in Dun Morogh. This step is for Gnomes.",
            complete = QuestState(94824, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "turnin-94824-confounding-flash",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Confounding Flash to High Priestess Mims in Ironforge. This step is for Gnomes.",
            dependsOn = { "accept-94824-confounding-flash" },
            complete = QuestState(94824, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2480, 0.1000, "High Priestess Mims",
                    "Travel to High Priestess Mims in Ironforge."),
            },
        },
        {
            id = "accept-94817-confounding-flash",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Confounding Flash from High Priestess Mims in Ironforge. This step is for Gnomes.",
            dependsOn = { "turnin-94824-confounding-flash" },
            complete = QuestState(94817, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2480, 0.1000, "High Priestess Mims",
                    "Travel to High Priestess Mims in Ironforge."),
            },
        },
        {
            id = "turnin-94817-confounding-flash",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Confounding Flash to High Priestess Mims in Ironforge. This step is for Gnomes.",
            dependsOn = { "accept-94817-confounding-flash" },
            complete = QuestState(94817, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2480, 0.1000, "High Priestess Mims",
                    "Travel to High Priestess Mims in Ironforge."),
            },
        },
        {
            id = "accept-5641-a-lack-of-fear",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept A Lack of Fear from High Priest Rohan in Ironforge. This step is for Dwarves.",
            complete = QuestState(5641, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "turnin-5641-a-lack-of-fear",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-5641-a-lack-of-fear" },
            complete = QuestState(5641, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "accept-5676-arcane-feedback",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Arcane Feedback from High Priestess Laurena in Stormwind City. This step is for Humans.",
            complete = QuestState(5676, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "turnin-5676-arcane-feedback",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-5676-arcane-feedback" },
            complete = QuestState(5676, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5672-elunes-grace",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Elune's Grace from Priestess Alathea in Darnassus. This step is for Night Elves.",
            complete = QuestState(5672, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "turnin-5672-elunes-grace",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5672-elunes-grace" },
            complete = QuestState(5672, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5643-shadowguard",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Shadowguard from Aelthalyste in Undercity. This step is for Trolls.",
            complete = QuestState(5643, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "turnin-5643-shadowguard",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5643-shadowguard" },
            complete = QuestState(5643, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-5644-devouring-plague",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devouring Plague from Miles Welsh in Thunder Bluff. This step is for Undead.",
            complete = QuestState(5644, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2540, 0.1540, "Miles Welsh",
                    "Travel to Miles Welsh in Thunder Bluff."),
            },
        },
        {
            id = "turnin-5644-devouring-plague",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5644-devouring-plague" },
            complete = QuestState(5644, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-8254-cenarion-aid",
            kind = "accept",
            priority = 250,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Cenarion Aid from Brother Joshua in Stormwind City.",
            complete = QuestState(8254, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2680, "Brother Joshua",
                    "Travel to Brother Joshua in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR } }),
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge.", { map = { MAP.ORGRIMMAR } }),
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "turnin-8254-cenarion-aid",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Cenarion Aid to Ogtinc in Azshara.",
            dependsOn = { "accept-8254-cenarion-aid" },
            complete = QuestState(8254, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-8255-of-coursers-we-know",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Of Coursers We Know from Ogtinc in Azshara.",
            dependsOn = { "turnin-8254-cenarion-aid" },
            complete = QuestState(8255, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "objective-8255-of-coursers-we-know",
            kind = "objective",
            priority = 280,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Of Coursers We Know: Healthy Courser Gland.",
            dependsOn = { "accept-8255-of-coursers-we-know" },
            complete = QuestState(8255, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.3780, 0.6920, "Mosshoof Courser",
                    "Travel to Mosshoof Courser in Azshara."),
            },
        },
        {
            id = "turnin-8255-of-coursers-we-know",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Of Coursers We Know to Ogtinc in Azshara.",
            dependsOn = { "objective-8255-of-coursers-we-know" },
            complete = QuestState(8255, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-8256-the-ichor-of-undeath",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept The Ichor of Undeath from Ogtinc in Azshara.",
            dependsOn = { "turnin-8255-of-coursers-we-know", "turnin-8254-cenarion-aid" },
            complete = QuestState(8256, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "objective-8256-the-ichor-of-undeath",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "The Ichor of Undeath: Ichor of Undeath.",
            dependsOn = { "accept-8256-the-ichor-of-undeath" },
            complete = QuestState(8256, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.1340, 0.7340, "Highborne Apparition",
                    "Travel to Highborne Apparition in Azshara."),
                Point(MAP.AZSHARA, 0.1340, 0.7320, "Highborne Lichling",
                    "Travel to Highborne Lichling in Azshara."),
                Point(MAP.AZSHARA, 0.1760, 0.6920, "Varo'then's Ghost",
                    "Travel to Varo'then's Ghost in Azshara."),
                Point(MAP.AZSHARA, 0.3940, 0.5020, "Lingering Highborne",
                    "Travel to Lingering Highborne in Azshara."),
            },
        },
        {
            id = "turnin-8256-the-ichor-of-undeath",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in The Ichor of Undeath to Ogtinc in Azshara.",
            dependsOn = { "objective-8256-the-ichor-of-undeath" },
            complete = QuestState(8256, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.4240, 0.4260, "Ogtinc",
                    "Travel to Ogtinc in Azshara."),
            },
        },
        {
            id = "accept-3085-hallowed-tablet",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                },
            },
            text = "Accept Hallowed Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3085, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3085-hallowed-tablet",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                },
            },
            text = "Turn in Hallowed Tablet to Ken'jai in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3085-hallowed-tablet" },
            complete = QuestState(3085, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6880, "Ken'jai",
                    "Travel to Ken'jai in Durotar."),
            },
        },
        {
            id = "accept-3097-hallowed-scroll",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                },
            },
            text = "Accept Hallowed Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(3097, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-3097-hallowed-scroll",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                },
            },
            text = "Turn in Hallowed Scroll to Dark Cleric Duesten in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-3097-hallowed-scroll" },
            complete = QuestState(3097, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6600, "Dark Cleric Duesten",
                    "Travel to Dark Cleric Duesten in Tirisfal Glades."),
            },
        },
        {
            id = "accept-3103-hallowed-letter",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                },
            },
            text = "Accept Hallowed Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3103, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3103-hallowed-letter",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                },
            },
            text = "Turn in Hallowed Letter to Priestess Anetta in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3103-hallowed-letter" },
            complete = QuestState(3103, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4980, 0.3960, "Priestess Anetta",
                    "Travel to Priestess Anetta in Elwynn Forest."),
            },
        },
        {
            id = "accept-3110-hallowed-rune",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                },
            },
            text = "Accept Hallowed Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(3110, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3110-hallowed-rune",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                },
            },
            text = "Turn in Hallowed Rune to Branstock Khalder in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-3110-hallowed-rune" },
            complete = QuestState(3110, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6640, "Branstock Khalder",
                    "Travel to Branstock Khalder in Dun Morogh."),
            },
        },
        {
            id = "accept-3119-hallowed-sigil",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                },
            },
            text = "Accept Hallowed Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
            complete = QuestState(3119, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4420, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine in Teldrassil."),
            },
        },
        {
            id = "turnin-3119-hallowed-sigil",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                },
            },
            text = "Turn in Hallowed Sigil to Shanda in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-3119-hallowed-sigil" },
            complete = QuestState(3119, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5920, 0.4040, "Shanda",
                    "Travel to Shanda in Teldrassil."),
            },
        },
        {
            id = "accept-5622-in-favor-of-elune",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept In Favor of Elune from Shanda in Teldrassil. This step is for Night Elves.",
            complete = QuestState(5622, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5920, 0.4040, "Shanda",
                    "Travel to Shanda in Teldrassil."),
            },
        },
        {
            id = "turnin-5622-in-favor-of-elune",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in In Favor of Elune to Laurna Morninglight in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-5622-in-favor-of-elune" },
            complete = QuestState(5622, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight in Teldrassil."),
            },
        },
        {
            id = "accept-5621-garments-of-the-moon",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Garments of the Moon from Laurna Morninglight in Teldrassil. This step is for Night Elves.",
            dependsOn = { "turnin-5622-in-favor-of-elune" },
            complete = QuestState(5621, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight in Teldrassil."),
            },
        },
        {
            id = "turnin-5621-garments-of-the-moon",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Garments of the Moon to Laurna Morninglight in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-5621-garments-of-the-moon" },
            complete = QuestState(5621, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight in Teldrassil."),
            },
        },
        {
            id = "accept-5623-in-favor-of-the-light",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept In Favor of the Light from Priestess Anetta in Elwynn Forest. This step is for Humans.",
            complete = QuestState(5623, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4980, 0.3960, "Priestess Anetta",
                    "Travel to Priestess Anetta in Elwynn Forest."),
            },
        },
        {
            id = "turnin-5623-in-favor-of-the-light",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in In Favor of the Light to Priestess Josetta in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-5623-in-favor-of-the-light" },
            complete = QuestState(5623, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4320, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "accept-5624-garments-of-the-light",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Garments of the Light from Priestess Josetta in Elwynn Forest. This step is for Humans.",
            dependsOn = { "turnin-5623-in-favor-of-the-light" },
            complete = QuestState(5624, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4340, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "turnin-5624-garments-of-the-light",
            kind = "turnin",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Garments of the Light to Priestess Josetta in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-5624-garments-of-the-light" },
            complete = QuestState(5624, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4340, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "accept-5626-in-favor-of-the-light",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept In Favor of the Light from Branstock Khalder in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(5626, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6640, "Branstock Khalder",
                    "Travel to Branstock Khalder in Dun Morogh."),
            },
        },
        {
            id = "turnin-5626-in-favor-of-the-light",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in In Favor of the Light to Maxan Anvol in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-5626-in-favor-of-the-light" },
            complete = QuestState(5626, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "accept-5625-garments-of-the-light",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Garments of the Light from Maxan Anvol in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "turnin-5626-in-favor-of-the-light" },
            complete = QuestState(5625, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "turnin-5625-garments-of-the-light",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Garments of the Light to Maxan Anvol in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-5625-garments-of-the-light" },
            complete = QuestState(5625, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "accept-5649-in-favor-of-spirituality",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept In Favor of Spirituality from Ken'jai in Durotar. This step is for Trolls.",
            complete = QuestState(5649, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6880, "Ken'jai",
                    "Travel to Ken'jai in Durotar."),
            },
        },
        {
            id = "turnin-5649-in-favor-of-spirituality",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in In Favor of Spirituality to Tai'jin in Durotar. This step is for Trolls.",
            dependsOn = { "accept-5649-in-favor-of-spirituality" },
            complete = QuestState(5649, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4280, "Tai'jin",
                    "Travel to Tai'jin in Durotar."),
            },
        },
        {
            id = "accept-5648-garments-of-spirituality",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Garments of Spirituality from Tai'jin in Durotar. This step is for Trolls.",
            dependsOn = { "turnin-5649-in-favor-of-spirituality" },
            complete = QuestState(5648, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4280, "Tai'jin",
                    "Travel to Tai'jin in Durotar."),
            },
        },
        {
            id = "turnin-5648-garments-of-spirituality",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Garments of Spirituality to Tai'jin in Durotar. This step is for Trolls.",
            dependsOn = { "accept-5648-garments-of-spirituality" },
            complete = QuestState(5648, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4280, "Tai'jin",
                    "Travel to Tai'jin in Durotar."),
            },
        },
        {
            id = "accept-5651-in-favor-of-darkness",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept In Favor of Darkness from Dark Cleric Duesten in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(5651, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6600, "Dark Cleric Duesten",
                    "Travel to Dark Cleric Duesten in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-5651-in-favor-of-darkness",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in In Favor of Darkness to Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-5651-in-favor-of-darkness" },
            complete = QuestState(5651, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6160, 0.5220, "Dark Cleric Beryl",
                    "Travel to Dark Cleric Beryl in Tirisfal Glades."),
            },
        },
        {
            id = "accept-5650-garments-of-darkness",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 5 } },
                },
            },
            text = "Accept Garments of Darkness from Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-5651-in-favor-of-darkness" },
            complete = QuestState(5650, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6160, 0.5220, "Dark Cleric Beryl",
                    "Travel to Dark Cleric Beryl in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-5650-garments-of-darkness",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 5 } },
                },
            },
            text = "Turn in Garments of Darkness to Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-5650-garments-of-darkness" },
            complete = QuestState(5650, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6160, 0.5220, "Dark Cleric Beryl",
                    "Travel to Dark Cleric Beryl in Tirisfal Glades."),
            },
        },
        {
            id = "accept-5627-stars-of-elune",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Stars of Elune from Priestess Alathea in Darnassus. This step is for Night Elves.",
            complete = QuestState(5627, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "turnin-5627-stars-of-elune",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Stars of Elune to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5627-stars-of-elune" },
            complete = QuestState(5627, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5628-returning-home",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Priestess Josetta in Elwynn Forest. This step is for Night Elves.",
            complete = QuestState(5628, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4320, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "turnin-5628-returning-home",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5628-returning-home" },
            complete = QuestState(5628, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5630-returning-home",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Maxan Anvol in Dun Morogh. This step is for Night Elves.",
            complete = QuestState(5630, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5220, "Maxan Anvol",
                    "Travel to Maxan Anvol in Dun Morogh."),
            },
        },
        {
            id = "turnin-5630-returning-home",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5630-returning-home" },
            complete = QuestState(5630, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5631-returning-home",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Brother Joshua in Stormwind City. This step is for Night Elves.",
            complete = QuestState(5631, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2680, "Brother Joshua",
                    "Travel to Brother Joshua in Stormwind City."),
            },
        },
        {
            id = "turnin-5631-returning-home",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5631-returning-home" },
            complete = QuestState(5631, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5632-returning-home",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Nara Meideros in Stormwind City. This step is for Night Elves.",
            complete = QuestState(5632, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2080, 0.5020, "Nara Meideros",
                    "Travel to Nara Meideros in Stormwind City."),
            },
        },
        {
            id = "turnin-5632-returning-home",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Nara Meideros in Stormwind City. This step is for Night Elves.",
            dependsOn = { "accept-5632-returning-home" },
            complete = QuestState(5632, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2080, 0.5020, "Nara Meideros",
                    "Travel to Nara Meideros in Stormwind City."),
            },
        },
        {
            id = "accept-5633-returning-home",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Returning Home from Braenna Flintcrag in Ironforge. This step is for Night Elves.",
            complete = QuestState(5633, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2460, 0.0920, "Braenna Flintcrag",
                    "Travel to Braenna Flintcrag in Ironforge."),
            },
        },
        {
            id = "turnin-5633-returning-home",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5633-returning-home" },
            complete = QuestState(5633, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5635-desperate-prayer",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from Priestess Josetta in Elwynn Forest. This step is for Humans and Dwarves.",
            complete = QuestState(5635, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4320, 0.6560, "Priestess Josetta",
                    "Travel to Priestess Josetta in Elwynn Forest."),
            },
        },
        {
            id = "turnin-5635-desperate-prayer",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5635-desperate-prayer" },
            complete = QuestState(5635, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5636-desperate-prayer",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from Laurna Morninglight in Teldrassil. This step is for Humans and Dwarves.",
            complete = QuestState(5636, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5680, "Laurna Morninglight",
                    "Travel to Laurna Morninglight in Teldrassil."),
            },
        },
        {
            id = "turnin-5636-desperate-prayer",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5636-desperate-prayer" },
            complete = QuestState(5636, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5638-desperate-prayer",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from Nara Meideros in Stormwind City. This step is for Humans and Dwarves.",
            complete = QuestState(5638, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2080, 0.5020, "Nara Meideros",
                    "Travel to Nara Meideros in Stormwind City."),
            },
        },
        {
            id = "turnin-5638-desperate-prayer",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5638-desperate-prayer" },
            complete = QuestState(5638, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5639-desperate-prayer",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
            complete = QuestState(5639, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "turnin-5639-desperate-prayer",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5639-desperate-prayer" },
            complete = QuestState(5639, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5640-desperate-prayer",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Desperate Prayer from Priestess Alathea in Darnassus. This step is for Humans and Dwarves.",
            complete = QuestState(5640, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "turnin-5640-desperate-prayer",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = { 1, 3 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
            dependsOn = { "accept-5640-desperate-prayer" },
            complete = QuestState(5640, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5654-hex-of-weakness",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Hex of Weakness from Tai'jin in Durotar. This step is for Trolls.",
            complete = QuestState(5654, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4280, "Tai'jin",
                    "Travel to Tai'jin in Durotar."),
            },
        },
        {
            id = "turnin-5654-hex-of-weakness",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5654-hex-of-weakness" },
            complete = QuestState(5654, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-5655-hex-of-weakness",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Hex of Weakness from Var'jun in Mulgore. This step is for Trolls.",
            complete = QuestState(5655, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4700, 0.5880, "Var'jun",
                    "Travel to Var'jun in Mulgore."),
            },
        },
        {
            id = "turnin-5655-hex-of-weakness",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5655-hex-of-weakness" },
            complete = QuestState(5655, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-5657-hex-of-weakness",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Hex of Weakness from Aelthalyste in Undercity. This step is for Trolls.",
            complete = QuestState(5657, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "turnin-5657-hex-of-weakness",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5657-hex-of-weakness" },
            complete = QuestState(5657, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-5660-touch-of-weakness",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Touch of Weakness from Tai'jin in Durotar. This step is for Undead.",
            complete = QuestState(5660, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4280, "Tai'jin",
                    "Travel to Tai'jin in Durotar."),
            },
        },
        {
            id = "turnin-5660-touch-of-weakness",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5660-touch-of-weakness" },
            complete = QuestState(5660, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5661-touch-of-weakness",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Touch of Weakness from Var'jun in Mulgore. This step is for Undead.",
            complete = QuestState(5661, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4700, 0.5880, "Var'jun",
                    "Travel to Var'jun in Mulgore."),
            },
        },
        {
            id = "turnin-5661-touch-of-weakness",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5661-touch-of-weakness" },
            complete = QuestState(5661, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5662-touch-of-weakness",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Touch of Weakness from Ur'kyo in Orgrimmar. This step is for Undead.",
            complete = QuestState(5662, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "turnin-5662-touch-of-weakness",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5662-touch-of-weakness" },
            complete = QuestState(5662, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5663-touch-of-weakness",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Touch of Weakness from Miles Welsh in Thunder Bluff. This step is for Undead.",
            complete = QuestState(5663, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2540, 0.1540, "Miles Welsh",
                    "Travel to Miles Welsh in Thunder Bluff."),
            },
        },
        {
            id = "turnin-5663-touch-of-weakness",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5663-touch-of-weakness" },
            complete = QuestState(5663, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5642-shadowguard",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Shadowguard from Miles Welsh in Thunder Bluff. This step is for Trolls.",
            complete = QuestState(5642, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2540, 0.1540, "Miles Welsh",
                    "Travel to Miles Welsh in Thunder Bluff."),
            },
        },
        {
            id = "turnin-5642-shadowguard",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5642-shadowguard" },
            complete = QuestState(5642, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-5645-a-lack-of-fear",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept A Lack of Fear from High Priestess Laurena in Stormwind City. This step is for Dwarves.",
            complete = QuestState(5645, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "turnin-5645-a-lack-of-fear",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-5645-a-lack-of-fear" },
            complete = QuestState(5645, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "accept-5646-devouring-plague",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devouring Plague from Ur'kyo in Orgrimmar. This step is for Undead.",
            complete = QuestState(5646, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "turnin-5646-devouring-plague",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5646-devouring-plague" },
            complete = QuestState(5646, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5647-a-lack-of-fear",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept A Lack of Fear from Priestess Alathea in Darnassus. This step is for Dwarves.",
            complete = QuestState(5647, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "turnin-5647-a-lack-of-fear",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 3 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
            dependsOn = { "accept-5647-a-lack-of-fear" },
            complete = QuestState(5647, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "accept-5673-elunes-grace",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Elune's Grace from High Priestess Laurena in Stormwind City. This step is for Night Elves.",
            complete = QuestState(5673, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "turnin-5673-elunes-grace",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5673-elunes-grace" },
            complete = QuestState(5673, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5675-elunes-grace",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Elune's Grace from High Priest Rohan in Ironforge. This step is for Night Elves.",
            complete = QuestState(5675, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "turnin-5675-elunes-grace",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5675-elunes-grace" },
            complete = QuestState(5675, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "accept-5677-arcane-feedback",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Arcane Feedback from High Priest Rohan in Ironforge. This step is for Humans.",
            complete = QuestState(5677, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2500, 0.0840, "High Priest Rohan",
                    "Travel to High Priest Rohan in Ironforge."),
            },
        },
        {
            id = "turnin-5677-arcane-feedback",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-5677-arcane-feedback" },
            complete = QuestState(5677, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5678-arcane-feedback",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Arcane Feedback from Priestess Alathea in Darnassus. This step is for Humans.",
            complete = QuestState(5678, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3920, 0.8100, "Priestess Alathea",
                    "Travel to Priestess Alathea in Darnassus."),
            },
        },
        {
            id = "turnin-5678-arcane-feedback",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 5 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-5678-arcane-feedback" },
            complete = QuestState(5678, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3880, 0.2640, "High Priestess Laurena",
                    "Travel to High Priestess Laurena in Stormwind City."),
            },
        },
        {
            id = "accept-5679-devouring-plague",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devouring Plague from Aelthalyste in Undercity. This step is for Undead.",
            complete = QuestState(5679, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "turnin-5679-devouring-plague",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 5 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
            dependsOn = { "accept-5679-devouring-plague" },
            complete = QuestState(5679, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4920, 0.1820, "Aelthalyste",
                    "Travel to Aelthalyste in Undercity."),
            },
        },
        {
            id = "accept-5680-shadowguard",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Shadowguard from Ur'kyo in Orgrimmar. This step is for Trolls.",
            complete = QuestState(5680, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "turnin-5680-shadowguard",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 5 },
                    { race = 8 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
            dependsOn = { "accept-5680-shadowguard" },
            complete = QuestState(5680, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3560, 0.8760, "Ur'kyo",
                    "Travel to Ur'kyo in Orgrimmar."),
            },
        },
        {
            id = "accept-7621-a-warning",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept A Warning from Eris Havenfire in Eastern Plaguelands.",
            complete = QuestState(7621, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERNPLAGUELANDS, 0.2080, 0.1840, "Eris Havenfire",
                    "Travel to Eris Havenfire in Eastern Plaguelands."),
            },
        },
        {
            id = "turnin-7621-a-warning",
            kind = "turnin",
            priority = 1200,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in A Warning to Eris Havenfire in Eastern Plaguelands.",
            dependsOn = { "accept-7621-a-warning" },
            complete = QuestState(7621, "completed"),
            route = {
                Point(MAP.EASTERNPLAGUELANDS, 0.2080, 0.1840, "Eris Havenfire",
                    "Travel to Eris Havenfire in Eastern Plaguelands."),
            },
        },
        {
            id = "accept-7622-the-balance-of-light-and-shadow",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept The Balance of Light and Shadow from Eris Havenfire in Eastern Plaguelands.",
            complete = QuestState(7622, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERNPLAGUELANDS, 0.2080, 0.1840, "Eris Havenfire",
                    "Travel to Eris Havenfire in Eastern Plaguelands."),
            },
        },
        {
            id = "turnin-7622-the-balance-of-light-and-shadow",
            kind = "turnin",
            priority = 1220,
            conditions = {
                all = {
                    { class = 5 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in The Balance of Light and Shadow to Eris Havenfire in Eastern Plaguelands.",
            dependsOn = { "accept-7622-the-balance-of-light-and-shadow" },
            complete = QuestState(7622, "completed"),
            route = {
                Point(MAP.EASTERNPLAGUELANDS, 0.2080, 0.1840, "Eris Havenfire",
                    "Travel to Eris Havenfire in Eastern Plaguelands."),
            },
        }
    },
})
