local _, ns = ...

-- Warlock class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- Tainted Tablet
-- Hearts of the Lovers
-- The Binding
-- Love Hurts
-- Wish You Were Here
-- The Binding
-- What Is Love?
-- The Binding
-- Left out (dungeon quest): The Orb of Soran'ruk, Trolls of a Feather, The Prison's Bindings, Imp Delivery, Dreadsteed of Xoroth
-- Left out (no start pin): Soul of Devouring, The Final Test, Otherworldly Treasure, Soul Vessel, The Depleted Scythe, A Solid Foundation, Trolls of a Feather, Stolen Power, The Lost Rune, Tempting Fate, Soul of Mischief, Soul of the Void (+1 more)

local MAP = {
    ALTERACMOUNTAINS = 1416,
    ASHENVALE = 1440,
    AZSHARA = 1447,
    BADLANDS = 1418,
    BARRENS = 1413,
    BLASTEDLANDS = 1419,
    BURNINGSTEPPES = 1428,
    DARKSHORE = 1439,
    DESOLACE = 1443,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    DUSKWOOD = 1431,
    DUSTWALLOWMARSH = 1445,
    ELWYNNFOREST = 1429,
    FELWOOD = 1448,
    FERALAS = 1444,
    HINTERLANDS = 1425,
    IRONFORGE = 1455,
    LOCHMODAN = 1432,
    ORGRIMMAR = 1454,
    REDRIDGEMOUNTAINS = 1433,
    SEARINGGORGE = 1427,
    SILVERPINEFOREST = 1421,
    STONETALONMOUNTAINS = 1442,
    STORMWINDCITY = 1453,
    STRANGLETHORNVALE = 1434,
    SWAMPOFSORROWS = 1435,
    TANARIS = 1446,
    THOUSANDNEEDLES = 1441,
    TIRISFALGLADES = 1420,
    UNDERCITY = 1458,
    WESTFALL = 1436,
    WETLANDS = 1437,
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
    id = "class-warlock",
    title = "Warlock",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 9 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-1598-the-stolen-tome",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                },
            },
            text = "Accept The Stolen Tome from Drusilla La Salle in Elwynn Forest. This step is for Humans and Gnomes.",
            complete = QuestState(1598, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4980, 0.4260, "Drusilla La Salle",
                    "Travel to Drusilla La Salle in Elwynn Forest."),
            },
        },
        {
            id = "turnin-1598-the-stolen-tome",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                },
            },
            text = "Turn in The Stolen Tome to Drusilla La Salle in Elwynn Forest. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1598-the-stolen-tome" },
            complete = QuestState(1598, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4980, 0.4260, "Drusilla La Salle",
                    "Travel to Drusilla La Salle in Elwynn Forest."),
            },
        },
        {
            id = "accept-1599-beginnings",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                },
            },
            text = "Accept Beginnings from Alamar Grimm in Dun Morogh. This step is for Humans and Gnomes.",
            complete = QuestState(1599, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6620, "Alamar Grimm",
                    "Travel to Alamar Grimm in Dun Morogh."),
            },
        },
        {
            id = "objective-1599-beginnings",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                },
            },
            text = "Kill Frostmane Novice in Coldridge Valley and collect Feather Charm for Beginnings. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1599-beginnings" },
            complete = QuestState(1599, "complete"),
            route = {
                Point(MAP.DUNMOROGH, 0.3040, 0.7940, "Frostmane Novice",
                    "Travel to Frostmane Novice in Dun Morogh."),
            },
        },
        {
            id = "turnin-1599-beginnings",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                },
            },
            text = "Turn in Beginnings to Alamar Grimm in Dun Morogh. This step is for Humans and Gnomes.",
            dependsOn = { "objective-1599-beginnings" },
            complete = QuestState(1599, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6620, "Alamar Grimm",
                    "Travel to Alamar Grimm in Dun Morogh."),
            },
        },
        {
            id = "accept-98575-tainted-tablet",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 8 },
                },
            },
            text = "Accept Tainted Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(98575, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-98575-tainted-tablet",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 8 },
                },
            },
            text = "Turn in Tainted Tablet to Nartok in Durotar. This step is for Trolls.",
            dependsOn = { "accept-98575-tainted-tablet" },
            complete = QuestState(98575, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4060, 0.6840, "Nartok",
                    "Travel to Nartok in Durotar."),
            },
        },
        {
            id = "accept-1715-the-slaughtered-lamb",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Slaughtered Lamb from Lago Blackwrench in Ironforge. This step is for Humans and Gnomes.",
            complete = QuestState(1715, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4760, 0.0960, "Lago Blackwrench",
                    "Travel to Lago Blackwrench in Ironforge."),
            },
        },
        {
            id = "turnin-1715-the-slaughtered-lamb",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Slaughtered Lamb to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1715-the-slaughtered-lamb" },
            complete = QuestState(1715, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1685-gakins-summons",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Gakin's Summons from Remen Marcot in Elwynn Forest. This step is for Humans and Gnomes.",
            complete = QuestState(1685, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4440, 0.6620, "Remen Marcot",
                    "Travel to Remen Marcot in Elwynn Forest."),
            },
        },
        {
            id = "turnin-1685-gakins-summons",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Gakin's Summons to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1685-gakins-summons" },
            complete = QuestState(1685, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1688-surena-caledon",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Surena Caledon from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1685-gakins-summons", "turnin-1715-the-slaughtered-lamb" },
            complete = QuestState(1688, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Surena Caledon to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1688-surena-caledon" },
            complete = QuestState(1688, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1689-the-binding",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1688-surena-caledon", "turnin-1715-the-slaughtered-lamb", "turnin-1685-gakins-summons" },
            complete = QuestState(1689, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-1689-the-binding",
            kind = "turnin",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1689-the-binding" },
            complete = QuestState(1689, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1717-gakins-summons",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Gakin's Summons from Lago Blackwrench in Ironforge. This step is for Humans and Gnomes.",
            complete = QuestState(1717, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4760, 0.0960, "Lago Blackwrench",
                    "Travel to Lago Blackwrench in Ironforge."),
            },
        },
        {
            id = "turnin-1717-gakins-summons",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Gakin's Summons to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1717-gakins-summons" },
            complete = QuestState(1717, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1717-gakins-summons" },
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-1716-devourer-of-souls",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devourer of Souls to Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1716-devourer-of-souls" },
            complete = QuestState(1716, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4920, 0.5700, "Takar the Seer",
                    "Travel to Takar the Seer in The Barrens."),
            },
        },
        {
            id = "accept-1738-heartswood",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Heartswood from Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1716-devourer-of-souls" },
            complete = QuestState(1738, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4920, 0.5700, "Takar the Seer",
                    "Travel to Takar the Seer in The Barrens."),
            },
        },
        {
            id = "turnin-1738-heartswood",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Heartswood to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1738-heartswood" },
            complete = QuestState(1738, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1739-the-binding",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1738-heartswood" },
            complete = QuestState(1739, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-1739-the-binding",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1739-the-binding" },
            complete = QuestState(1739, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-65602-what-is-love",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept What Is Love? from Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1716-devourer-of-souls" },
            complete = QuestState(65602, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4920, 0.5700, "Takar the Seer",
                    "Travel to Takar the Seer in The Barrens."),
            },
        },
        {
            id = "turnin-65602-what-is-love",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in What Is Love? to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-65602-what-is-love" },
            complete = QuestState(65602, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-65603-the-binding",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-65602-what-is-love" },
            complete = QuestState(65603, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-65603-the-binding",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-65603-the-binding" },
            complete = QuestState(65603, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "accept-1798-seeking-strahad",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Seeking Strahad from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1739-the-binding" },
            complete = QuestState(1798, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7840, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder in Stormwind City."),
            },
        },
        {
            id = "turnin-1798-seeking-strahad",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1798-seeking-strahad" },
            complete = QuestState(1798, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-1758-tome-of-the-cabal",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1798-seeking-strahad" },
            complete = QuestState(1758, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "turnin-1758-tome-of-the-cabal",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1758-tome-of-the-cabal" },
            complete = QuestState(1758, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7420, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm in Ironforge."),
            },
        },
        {
            id = "accept-1802-tome-of-the-cabal",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1758-tome-of-the-cabal" },
            complete = QuestState(1802, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7420, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm in Ironforge."),
            },
        },
        {
            id = "turnin-1802-tome-of-the-cabal",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1802-tome-of-the-cabal" },
            complete = QuestState(1802, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7420, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm in Ironforge."),
            },
        },
        {
            id = "accept-1804-tome-of-the-cabal",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1802-tome-of-the-cabal", "turnin-1758-tome-of-the-cabal" },
            complete = QuestState(1804, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7420, 0.0980, "Krom Stoutarm",
                    "Travel to Krom Stoutarm in Ironforge."),
            },
        },
        {
            id = "turnin-1804-tome-of-the-cabal",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1804-tome-of-the-cabal" },
            complete = QuestState(1804, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-4487-summon-felsteed",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Summon Felsteed from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
            complete = QuestState(4487, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5020, 0.0600, "Briarthorn",
                    "Travel to Briarthorn in Ironforge."),
            },
        },
        {
            id = "turnin-4487-summon-felsteed",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4487-summon-felsteed" },
            complete = QuestState(4487, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-4488-summon-felsteed",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Summon Felsteed from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-4487-summon-felsteed" },
            complete = QuestState(4488, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7820, "Demisette Cloyce",
                    "Travel to Demisette Cloyce in Stormwind City."),
            },
        },
        {
            id = "turnin-4488-summon-felsteed",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4488-summon-felsteed" },
            complete = QuestState(4488, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-7601-what-niby-commands",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept What Niby Commands from Niby the Almighty in Felwood.",
            complete = QuestState(7601, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Niby the Almighty",
                    "Travel to Niby the Almighty in Felwood."),
            },
        },
        {
            id = "turnin-7601-what-niby-commands",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in What Niby Commands to Impsy in Felwood.",
            dependsOn = { "accept-7601-what-niby-commands" },
            complete = QuestState(7601, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "accept-7602-flawless-fel-essence",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Flawless Fel Essence from Impsy in Felwood.",
            dependsOn = { "turnin-7601-what-niby-commands" },
            complete = QuestState(7602, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "objective-7602-flawless-fel-essence",
            kind = "objective",
            priority = 530,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Kill Jaedenar Legionnaires in Jaedenar and collect Flawless Fel Essence.",
            dependsOn = { "accept-7602-flawless-fel-essence" },
            complete = QuestState(7602, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3740, 0.5320, "Jaedenar Legionnaire",
                    "Travel to Jaedenar Legionnaire in Felwood."),
            },
        },
        {
            id = "turnin-7602-flawless-fel-essence",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Flawless Fel Essence to Impsy in Felwood.",
            dependsOn = { "objective-7602-flawless-fel-essence" },
            complete = QuestState(7602, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "accept-7562-morzul-bloodbringer",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Mor'zul Bloodbringer from Martha Strain in Undercity.",
            complete = QuestState(7562, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8580, 0.1580, "Martha Strain",
                    "Travel to Martha Strain in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR } }),
                Point(MAP.STORMWINDCITY, 0.2580, 0.7760, "Spackle Thornberry",
                    "Travel to Spackle Thornberry in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR } }),
                Point(MAP.IRONFORGE, 0.5280, 0.0600, "Jubahl Corpseseeker",
                    "Travel to Jubahl Corpseseeker in Ironforge.", { map = { MAP.ORGRIMMAR } }),
                Point(MAP.ORGRIMMAR, 0.4760, 0.4680, "Kurgul",
                    "Travel to Kurgul in Orgrimmar."),
            },
        },
        {
            id = "turnin-7562-morzul-bloodbringer",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Mor'zul Bloodbringer to Mor'zul Bloodbringer in Burning Steppes.",
            dependsOn = { "accept-7562-morzul-bloodbringer" },
            complete = QuestState(7562, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "accept-7563-rage-of-blood",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Rage of Blood from Mor'zul Bloodbringer in Burning Steppes.",
            dependsOn = { "turnin-7562-morzul-bloodbringer" },
            complete = QuestState(7563, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "turnin-7563-rage-of-blood",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Rage of Blood to Mor'zul Bloodbringer in Burning Steppes.",
            dependsOn = { "accept-7563-rage-of-blood" },
            complete = QuestState(7563, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "accept-7564-wildeyes",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Wildeyes from Mor'zul Bloodbringer in Burning Steppes.",
            dependsOn = { "turnin-7563-rage-of-blood", "turnin-7562-morzul-bloodbringer" },
            complete = QuestState(7564, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "turnin-7564-wildeyes",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Wildeyes to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "accept-7564-wildeyes" },
            complete = QuestState(7564, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-7623-lord-banehollow",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Lord Banehollow from Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "turnin-7564-wildeyes" },
            complete = QuestState(7623, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "turnin-7623-lord-banehollow",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Lord Banehollow to Lord Banehollow in Felwood.",
            dependsOn = { "accept-7623-lord-banehollow" },
            complete = QuestState(7623, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3600, 0.4460, "Lord Banehollow",
                    "Travel to Lord Banehollow in Felwood."),
            },
        },
        {
            id = "accept-7626-bell-of-dethmoora",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Bell of Dethmoora from Mor'zul Bloodbringer in Burning Steppes.",
            complete = QuestState(7626, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "objective-7626-bell-of-dethmoora",
            kind = "objective",
            priority = 640,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Buy or craft Elixir of Shadow Power and bring it to Batrider Pele'keiki in Orgrimmar.",
            dependsOn = { "accept-7626-bell-of-dethmoora" },
            complete = QuestState(7626, "complete"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3320, 0.6940, "Batrider Pele'keiki",
                    "Travel to Batrider Pele'keiki in Orgrimmar."),
            },
        },
        {
            id = "turnin-7626-bell-of-dethmoora",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Bell of Dethmoora to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "objective-7626-bell-of-dethmoora" },
            complete = QuestState(7626, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-7627-wheel-of-the-black-march",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Wheel of the Black March from Mor'zul Bloodbringer in Burning Steppes.",
            complete = QuestState(7627, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "objective-7627-wheel-of-the-black-march",
            kind = "objective",
            priority = 670,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Collect Dark Iron Ore from Cyrus Therepentous in the Burning Steppes.",
            dependsOn = { "accept-7627-wheel-of-the-black-march" },
            complete = QuestState(7627, "complete"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.9480, 0.3160, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.6560, 0.2420, "Vahgruk",
                    "Travel to Vahgruk in Burning Steppes."),
            },
        },
        {
            id = "turnin-7627-wheel-of-the-black-march",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Wheel of the Black March to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "objective-7627-wheel-of-the-black-march" },
            complete = QuestState(7627, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-7628-doomsday-candle",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Doomsday Candle from Mor'zul Bloodbringer in Burning Steppes.",
            complete = QuestState(7628, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1260, 0.3160, "Mor'zul Bloodbringer",
                    "Travel to Mor'zul Bloodbringer in Burning Steppes."),
            },
        },
        {
            id = "objective-7628-doomsday-candle",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Kill black dragonkin in the Burning Steppes and collect Black Dragonscale.",
            dependsOn = { "accept-7628-doomsday-candle" },
            complete = QuestState(7628, "complete"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.9260, 0.5360, "Black Dragonspawn",
                    "Travel to Black Dragonspawn in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.9220, 0.5460, "Black Wyrmkin",
                    "Travel to Black Wyrmkin in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.3320, 0.5080, "Flamescale Dragonspawn",
                    "Travel to Flamescale Dragonspawn in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.2180, 0.4780, "Flamescale Wyrmkin",
                    "Travel to Flamescale Wyrmkin in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.8280, 0.6120, "Black Drake",
                    "Travel to Black Drake in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.2560, 0.6460, "Searscale Drake",
                    "Travel to Searscale Drake in Burning Steppes."),
                Point(MAP.BURNINGSTEPPES, 0.9420, 0.3180, "Frenzied Black Drake",
                    "Travel to Frenzied Black Drake in Burning Steppes."),
            },
        },
        {
            id = "turnin-7628-doomsday-candle",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Doomsday Candle to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "objective-7628-doomsday-candle" },
            complete = QuestState(7628, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-7630-arcanite",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Arcanite from Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "turnin-7626-bell-of-dethmoora", "turnin-7627-wheel-of-the-black-march", "turnin-7628-doomsday-candle" },
            complete = QuestState(7630, "activeOrCompleted"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "turnin-7630-arcanite",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Arcanite to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "accept-7630-arcanite" },
            complete = QuestState(7630, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-7624-ulathek-the-traitor",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Ulathek the Traitor from Lord Banehollow in Felwood.",
            dependsOn = { "turnin-7623-lord-banehollow" },
            complete = QuestState(7624, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3600, 0.4460, "Lord Banehollow",
                    "Travel to Lord Banehollow in Felwood."),
            },
        },
        {
            id = "objective-7624-ulathek-the-traitor",
            kind = "objective",
            priority = 750,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Kill Ulathek the Traitor and collect The Traitor's Heart.",
            dependsOn = { "accept-7624-ulathek-the-traitor" },
            complete = QuestState(7624, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4060, 0.4840, "Ulathek",
                    "Travel to Ulathek in Felwood."),
            },
        },
        {
            id = "turnin-7624-ulathek-the-traitor",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Ulathek the Traitor to Lord Banehollow in Felwood.",
            dependsOn = { "objective-7624-ulathek-the-traitor" },
            complete = QuestState(7624, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.3600, 0.4460, "Lord Banehollow",
                    "Travel to Lord Banehollow in Felwood."),
            },
        },
        {
            id = "accept-7625-xorothian-stardust",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Xorothian Stardust from Lord Banehollow in Felwood.",
            dependsOn = { "turnin-7624-ulathek-the-traitor", "turnin-7623-lord-banehollow" },
            complete = QuestState(7625, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3600, 0.4460, "Lord Banehollow",
                    "Travel to Lord Banehollow in Felwood."),
            },
        },
        {
            id = "turnin-7625-xorothian-stardust",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Xorothian Stardust to Gorzeeki Wildeyes in Burning Steppes.",
            dependsOn = { "accept-7625-xorothian-stardust" },
            complete = QuestState(7625, "completed"),
            route = {
                Point(MAP.BURNINGSTEPPES, 0.1240, 0.3160, "Gorzeeki Wildeyes",
                    "Travel to Gorzeeki Wildeyes in Burning Steppes."),
            },
        },
        {
            id = "accept-1485-vile-familiars",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5, 8 } },
                },
            },
            text = "Accept Vile Familiars from Ruzan in Durotar. This step is for Orcs, Undead, and Trolls.",
            complete = QuestState(1485, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4260, 0.6900, "Ruzan",
                    "Travel to Ruzan in Durotar."),
            },
        },
        {
            id = "objective-1485-vile-familiars",
            kind = "objective",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5, 8 } },
                },
            },
            text = "Kill Vile Familiar and collect 6 Vile Familiar Head in Valley of Trials. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "accept-1485-vile-familiars" },
            complete = QuestState(1485, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4520, 0.5500, "Vile Familiar",
                    "Travel to Vile Familiar in Durotar."),
            },
        },
        {
            id = "turnin-1485-vile-familiars",
            kind = "turnin",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5, 8 } },
                },
            },
            text = "Turn in Vile Familiars to Ruzan in Durotar. This step is for Orcs, Undead, and Trolls.",
            dependsOn = { "objective-1485-vile-familiars" },
            complete = QuestState(1485, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4260, 0.6900, "Ruzan",
                    "Travel to Ruzan in Durotar."),
            },
        },
        {
            id = "accept-1499-vile-familiars",
            kind = "accept",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                },
            },
            text = "Accept Vile Familiars from Ruzan in Durotar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1485-vile-familiars" },
            complete = QuestState(1499, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4260, 0.6900, "Ruzan",
                    "Travel to Ruzan in Durotar."),
            },
        },
        {
            id = "turnin-1499-vile-familiars",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                },
            },
            text = "Turn in Vile Familiars to Zureetha Fargaze in Durotar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1499-vile-familiars" },
            complete = QuestState(1499, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6900, "Zureetha Fargaze",
                    "Travel to Zureetha Fargaze in Durotar."),
            },
        },
        {
            id = "accept-1470-piercing-the-veil",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                },
            },
            text = "Accept Piercing the Veil from Venya Marthand in Tirisfal Glades. This step is for Orcs and Undead.",
            complete = QuestState(1470, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Venya Marthand",
                    "Travel to Venya Marthand in Tirisfal Glades."),
            },
        },
        {
            id = "objective-1470-piercing-the-veil",
            kind = "objective",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                },
            },
            text = "Kill Rattlecage Skeleton and collect Rattlecage Skull in Deathknell. This step is for Orcs and Undead.",
            dependsOn = { "accept-1470-piercing-the-veil" },
            complete = QuestState(1470, "complete"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3300, 0.6320, "Rattlecage Skeleton",
                    "Travel to Rattlecage Skeleton in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1470-piercing-the-veil",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                },
            },
            text = "Turn in Piercing the Veil to Venya Marthand in Tirisfal Glades. This step is for Orcs and Undead.",
            dependsOn = { "objective-1470-piercing-the-veil" },
            complete = QuestState(1470, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3100, 0.6620, "Venya Marthand",
                    "Travel to Venya Marthand in Tirisfal Glades."),
            },
        },
        {
            id = "accept-1478-halgars-summons",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Halgar's Summons from Ageron Kargal in Tirisfal Glades. This step is for Orcs and Undead.",
            complete = QuestState(1478, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6160, 0.5260, "Ageron Kargal",
                    "Travel to Ageron Kargal in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1478-halgars-summons",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Halgar's Summons to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1478-halgars-summons" },
            complete = QuestState(1478, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Creature of the Void from Carendin Halgar in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1478-halgars-summons" },
            complete = QuestState(1473, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Creature of the Void to Carendin Halgar in Undercity. This step is for Undead.",
            dependsOn = { "accept-1473-creature-of-the-void" },
            complete = QuestState(1473, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-1506-ganruls-summons",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Gan'rul's Summons from Ophek in Durotar. This step is for Orcs and Undead.",
            complete = QuestState(1506, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4120, "Ophek",
                    "Travel to Ophek in Durotar."),
            },
        },
        {
            id = "turnin-1506-ganruls-summons",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Gan'rul's Summons to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1506-ganruls-summons" },
            complete = QuestState(1506, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-1501-creature-of-the-void",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Creature of the Void from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
            dependsOn = { "turnin-1506-ganruls-summons" },
            complete = QuestState(1501, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-1501-creature-of-the-void",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Creature of the Void to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
            dependsOn = { "accept-1501-creature-of-the-void" },
            complete = QuestState(1501, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-1504-the-binding",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
            dependsOn = { "turnin-1501-creature-of-the-void", "turnin-1506-ganruls-summons" },
            complete = QuestState(1504, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-1504-the-binding",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
            dependsOn = { "accept-1504-the-binding" },
            complete = QuestState(1504, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-1507-devourer-of-souls",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devourer of Souls from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1504-the-binding" },
            complete = QuestState(1507, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-1507-devourer-of-souls",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devourer of Souls to Cazul in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1507-devourer-of-souls" },
            complete = QuestState(1507, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4720, 0.4660, "Cazul",
                    "Travel to Cazul in Orgrimmar."),
            },
        },
        {
            id = "accept-65601-love-hurts",
            kind = "accept",
            priority = 981,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Love Hurts from Cazul in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1507-devourer-of-souls" },
            complete = QuestState(65601, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4720, 0.4660, "Cazul",
                    "Travel to Cazul in Orgrimmar."),
            },
        },
        {
            id = "turnin-65601-love-hurts",
            kind = "turnin",
            priority = 982,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Love Hurts to Magar in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-65601-love-hurts" },
            complete = QuestState(65601, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6340, 0.5000, "Magar",
                    "Travel to Magar in Orgrimmar."),
            },
        },
        {
            id = "accept-65610-wish-you-were-here",
            kind = "accept",
            priority = 983,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Wish You Were Here from Magar in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-65601-love-hurts" },
            complete = QuestState(65610, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.6340, 0.5000, "Magar",
                    "Travel to Magar in Orgrimmar."),
            },
        },
        {
            id = "turnin-65610-wish-you-were-here",
            kind = "turnin",
            priority = 984,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Wish You Were Here to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-65610-wish-you-were-here" },
            complete = QuestState(65610, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-65604-the-binding",
            kind = "accept",
            priority = 985,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-65610-wish-you-were-here" },
            complete = QuestState(65604, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-65604-the-binding",
            kind = "turnin",
            priority = 986,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-65604-the-binding" },
            complete = QuestState(65604, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-1508-blind-cazul",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Blind Cazul from Cazul in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1507-devourer-of-souls" },
            complete = QuestState(1508, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4720, 0.4660, "Cazul",
                    "Travel to Cazul in Orgrimmar."),
            },
        },
        {
            id = "turnin-1508-blind-cazul",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Blind Cazul to Zankaja in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1508-blind-cazul" },
            complete = QuestState(1508, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3700, 0.5960, "Zankaja",
                    "Travel to Zankaja in Orgrimmar."),
            },
        },
        {
            id = "accept-1509-news-of-dogran",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept News of Dogran from Zankaja in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1508-blind-cazul" },
            complete = QuestState(1509, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3700, 0.5960, "Zankaja",
                    "Travel to Zankaja in Orgrimmar."),
            },
        },
        {
            id = "turnin-1509-news-of-dogran",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in News of Dogran to Gazrog in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-1509-news-of-dogran" },
            complete = QuestState(1509, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5180, 0.3020, "Gazrog",
                    "Travel to Gazrog in The Barrens."),
            },
        },
        {
            id = "accept-1510-news-of-dogran",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept News of Dogran from Gazrog in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1509-news-of-dogran" },
            complete = QuestState(1510, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5180, 0.3020, "Gazrog",
                    "Travel to Gazrog in The Barrens."),
            },
        },
        {
            id = "turnin-1510-news-of-dogran",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in News of Dogran to Ken'zigla in Stonetalon Mountains. This step is for Orcs and Undead.",
            dependsOn = { "accept-1510-news-of-dogran" },
            complete = QuestState(1510, "completed"),
            route = {
                Point(MAP.STONETALONMOUNTAINS, 0.7320, 0.9500, "Ken'zigla",
                    "Travel to Ken'zigla in Stonetalon Mountains."),
            },
        },
        {
            id = "accept-1511-kenziglas-draught",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Ken'zigla's Draught from Ken'zigla in Stonetalon Mountains. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1510-news-of-dogran" },
            complete = QuestState(1511, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALONMOUNTAINS, 0.7320, 0.9500, "Ken'zigla",
                    "Travel to Ken'zigla in Stonetalon Mountains."),
            },
        },
        {
            id = "turnin-1511-kenziglas-draught",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Ken'zigla's Draught to Grunt Logmar in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-1511-kenziglas-draught" },
            complete = QuestState(1511, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar in The Barrens."),
            },
        },
        {
            id = "accept-1515-dograns-captivity",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Dogran's Captivity from Grunt Logmar in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1511-kenziglas-draught" },
            complete = QuestState(1515, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5920, "Grunt Logmar",
                    "Travel to Grunt Logmar in The Barrens."),
            },
        },
        {
            id = "turnin-1515-dograns-captivity",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Dogran's Captivity to Grunt Dogran in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-1515-dograns-captivity" },
            complete = QuestState(1515, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4320, 0.4780, "Grunt Dogran",
                    "Travel to Grunt Dogran in The Barrens."),
            },
        },
        {
            id = "accept-1512-loves-gift",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Love's Gift from Grunt Dogran in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1515-dograns-captivity" },
            complete = QuestState(1512, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4320, 0.4780, "Grunt Dogran",
                    "Travel to Grunt Dogran in The Barrens."),
            },
        },
        {
            id = "turnin-1512-loves-gift",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Love's Gift to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1512-loves-gift" },
            complete = QuestState(1512, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-1513-the-binding",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1512-loves-gift" },
            complete = QuestState(1513, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-1513-the-binding",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "accept-1513-the-binding" },
            complete = QuestState(1513, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "accept-2996-seeking-strahad",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Seeking Strahad from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1513-the-binding" },
            complete = QuestState(2996, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4820, 0.4560, "Gan'rul Bloodeye",
                    "Travel to Gan'rul Bloodeye in Orgrimmar."),
            },
        },
        {
            id = "turnin-2996-seeking-strahad",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-2996-seeking-strahad" },
            complete = QuestState(2996, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-1801-tome-of-the-cabal",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "turnin-2996-seeking-strahad" },
            complete = QuestState(1801, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "turnin-1801-tome-of-the-cabal",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Jorah Annison in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1801-tome-of-the-cabal" },
            complete = QuestState(1801, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7600, 0.3760, "Jorah Annison",
                    "Travel to Jorah Annison in Undercity."),
            },
        },
        {
            id = "accept-1803-tome-of-the-cabal",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Jorah Annison in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(1803, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.7600, 0.3760, "Jorah Annison",
                    "Travel to Jorah Annison in Undercity."),
            },
        },
        {
            id = "turnin-1803-tome-of-the-cabal",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Jorah Annison in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1803-tome-of-the-cabal" },
            complete = QuestState(1803, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7600, 0.3760, "Jorah Annison",
                    "Travel to Jorah Annison in Undercity."),
            },
        },
        {
            id = "accept-1805-tome-of-the-cabal",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Tome of the Cabal from Jorah Annison in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1803-tome-of-the-cabal" },
            complete = QuestState(1805, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.7600, 0.3760, "Jorah Annison",
                    "Travel to Jorah Annison in Undercity."),
            },
        },
        {
            id = "turnin-1805-tome-of-the-cabal",
            kind = "turnin",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Tome of the Cabal to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-1805-tome-of-the-cabal" },
            complete = QuestState(1805, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-1471-the-binding",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Undead.",
            dependsOn = { "turnin-1473-creature-of-the-void", "turnin-1805-tome-of-the-cabal", "turnin-1478-halgars-summons" },
            complete = QuestState(1471, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-1471-the-binding",
            kind = "turnin",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Undead.",
            dependsOn = { "accept-1471-the-binding" },
            complete = QuestState(1471, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-3631-summon-felsteed",
            kind = "accept",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Summon Felsteed from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
            complete = QuestState(3631, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4840, 0.4560, "Zevrost",
                    "Travel to Zevrost in Orgrimmar."),
            },
        },
        {
            id = "turnin-3631-summon-felsteed",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-3631-summon-felsteed" },
            complete = QuestState(3631, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-3090-tainted-parchment",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                },
            },
            text = "Accept Tainted Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(3090, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3090-tainted-parchment",
            kind = "turnin",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 2 },
                },
            },
            text = "Turn in Tainted Parchment to Nartok in Durotar. This step is for Orcs.",
            dependsOn = { "accept-3090-tainted-parchment" },
            complete = QuestState(3090, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4060, 0.6840, "Nartok",
                    "Travel to Nartok in Durotar."),
            },
        },
        {
            id = "accept-3099-tainted-scroll",
            kind = "accept",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Accept Tainted Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(3099, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-3099-tainted-scroll",
            kind = "turnin",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = 5 },
                },
            },
            text = "Turn in Tainted Scroll to Maximillion in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-3099-tainted-scroll" },
            complete = QuestState(3099, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Maximillion",
                    "Travel to Maximillion in Tirisfal Glades."),
            },
        },
        {
            id = "accept-3105-tainted-letter",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = 1 },
                },
            },
            text = "Accept Tainted Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3105, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3105-tainted-letter",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = 1 },
                },
            },
            text = "Turn in Tainted Letter to Drusilla La Salle in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3105-tainted-letter" },
            complete = QuestState(3105, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4980, 0.4260, "Drusilla La Salle",
                    "Travel to Drusilla La Salle in Elwynn Forest."),
            },
        },
        {
            id = "accept-3115-tainted-memorandum",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = 7 },
                },
            },
            text = "Accept Tainted Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
            complete = QuestState(3115, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3115-tainted-memorandum",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = 7 },
                },
            },
            text = "Turn in Tainted Memorandum to Alamar Grimm in Dun Morogh. This step is for Gnomes.",
            dependsOn = { "accept-3115-tainted-memorandum" },
            complete = QuestState(3115, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6620, "Alamar Grimm",
                    "Travel to Alamar Grimm in Dun Morogh."),
            },
        },
        {
            id = "accept-1472-devourer-of-souls",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Devourer of Souls from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(1472, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-1472-devourer-of-souls",
            kind = "turnin",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Devourer of Souls to Godrick Farsan in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1472-devourer-of-souls" },
            complete = QuestState(1472, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1480, "Godrick Farsan",
                    "Travel to Godrick Farsan in Undercity."),
            },
        },
        {
            id = "accept-65593-hearts-of-the-lovers",
            kind = "accept",
            priority = 1341,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Hearts of the Lovers from Godrick Farsan in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1472-devourer-of-souls" },
            complete = QuestState(65593, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1480, "Godrick Farsan",
                    "Travel to Godrick Farsan in Undercity."),
            },
        },
        {
            id = "turnin-65593-hearts-of-the-lovers",
            kind = "turnin",
            priority = 1342,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Hearts of the Lovers to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-65593-hearts-of-the-lovers" },
            complete = QuestState(65593, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-65597-the-binding",
            kind = "accept",
            priority = 1343,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "turnin-65593-hearts-of-the-lovers" },
            complete = QuestState(65597, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-65597-the-binding",
            kind = "turnin",
            priority = 1344,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-65597-the-binding" },
            complete = QuestState(65597, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-1476-hearts-of-the-pure",
            kind = "accept",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Hearts of the Pure from Godrick Farsan in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(1476, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1480, "Godrick Farsan",
                    "Travel to Godrick Farsan in Undercity."),
            },
        },
        {
            id = "turnin-1476-hearts-of-the-pure",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Hearts of the Pure to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1476-hearts-of-the-pure" },
            complete = QuestState(1476, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-1474-the-binding",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "turnin-1476-hearts-of-the-pure" },
            complete = QuestState(1474, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-1474-the-binding",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            dependsOn = { "accept-1474-the-binding" },
            complete = QuestState(1474, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "accept-1795-the-binding",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 1, 2, 5, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Binding from Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
            dependsOn = { "turnin-1805-tome-of-the-cabal" },
            complete = QuestState(1795, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "turnin-1795-the-binding",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 1, 2, 5, 7 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Binding to Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
            dependsOn = { "accept-1795-the-binding" },
            complete = QuestState(1795, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-3001-seeking-strahad",
            kind = "accept",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Seeking Strahad from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(3001, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.2560, "Carendin Halgar",
                    "Travel to Carendin Halgar in Undercity."),
            },
        },
        {
            id = "turnin-3001-seeking-strahad",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-3001-seeking-strahad" },
            complete = QuestState(3001, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-4736-in-search-of-menara-voidrender",
            kind = "accept",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 31 } },
                },
            },
            text = "Accept In Search of Menara Voidrender from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
            complete = QuestState(4736, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5020, 0.0600, "Briarthorn",
                    "Travel to Briarthorn in Ironforge."),
            },
        },
        {
            id = "turnin-4736-in-search-of-menara-voidrender",
            kind = "turnin",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4736-in-search-of-menara-voidrender" },
            complete = QuestState(4736, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4737-in-search-of-menara-voidrender",
            kind = "accept",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 31 } },
                },
            },
            text = "Accept In Search of Menara Voidrender from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
            complete = QuestState(4737, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4840, 0.4560, "Zevrost",
                    "Travel to Zevrost in Orgrimmar."),
            },
        },
        {
            id = "turnin-4737-in-search-of-menara-voidrender",
            kind = "turnin",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-4737-in-search-of-menara-voidrender" },
            complete = QuestState(4737, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4738-in-search-of-menara-voidrender",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 31 } },
                },
            },
            text = "Accept In Search of Menara Voidrender from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
            complete = QuestState(4738, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7820, "Demisette Cloyce",
                    "Travel to Demisette Cloyce in Stormwind City."),
            },
        },
        {
            id = "turnin-4738-in-search-of-menara-voidrender",
            kind = "turnin",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4738-in-search-of-menara-voidrender" },
            complete = QuestState(4738, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4739-in-search-of-menara-voidrender",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 31 } },
                },
            },
            text = "Accept In Search of Menara Voidrender from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(4739, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8600, 0.1560, "Kaal Soulreaper",
                    "Travel to Kaal Soulreaper in Undercity."),
            },
        },
        {
            id = "turnin-4739-in-search-of-menara-voidrender",
            kind = "turnin",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-4739-in-search-of-menara-voidrender" },
            complete = QuestState(4739, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-1796-components-for-the-enchanted-gold-bloodrobe",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4739-in-search-of-menara-voidrender" },
            complete = QuestState(1796, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-1796-components-for-the-enchanted-gold-bloodrobe",
            kind = "turnin",
            priority = 1520,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-1796-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(1796, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4781-components-for-the-enchanted-gold-bloodrobe",
            kind = "accept",
            priority = 1530,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-1796-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4781, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "objective-4781-components-for-the-enchanted-gold-bloodrobe",
            kind = "objective",
            priority = 1540,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Loot a Gold Bar from solid chests on the route or buy one from the auction house.",
            dependsOn = { "accept-4781-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4781, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.8180, 0.5870, "Solid Chest",
                    "Travel to Solid Chest in Duskwood.", { map = { MAP.WETLANDS, MAP.SILVERPINEFOREST, MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DUSKWOOD, 0.3680, 0.8040, "Solid Chest",
                    "Travel to Solid Chest in Duskwood.", { map = { MAP.WETLANDS, MAP.SILVERPINEFOREST, MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.WETLANDS, 0.4790, 0.5890, "Solid Chest",
                    "Travel to Solid Chest in Wetlands.", { map = { MAP.SILVERPINEFOREST, MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.WETLANDS, 0.4750, 0.1500, "Solid Chest",
                    "Travel to Solid Chest in Wetlands.", { map = { MAP.SILVERPINEFOREST, MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.SILVERPINEFOREST, 0.6520, 0.2320, "Battered Chest",
                    "Travel to Battered Chest in Silverpine Forest.", { map = { MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.SILVERPINEFOREST, 0.5270, 0.2830, "Battered Chest",
                    "Travel to Battered Chest in Silverpine Forest.", { map = { MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.SILVERPINEFOREST, 0.5960, 0.7200, "Alliance Chest",
                    "Travel to Alliance Chest in Silverpine Forest.", { map = { MAP.DARKSHORE, MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DARKSHORE, 0.3630, 0.8650, "Battered Chest",
                    "Travel to Battered Chest in Darkshore.", { map = { MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DARKSHORE, 0.4710, 0.3700, "Battered Chest",
                    "Travel to Battered Chest in Darkshore.", { map = { MAP.DUSTWALLOWMARSH, MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DUSTWALLOWMARSH, 0.3070, 0.2240, "Solid Chest",
                    "Travel to Solid Chest in Dustwallow Marsh.", { map = { MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DUSTWALLOWMARSH, 0.4410, 0.6500, "Solid Chest",
                    "Travel to Solid Chest in Dustwallow Marsh.", { map = { MAP.AZSHARA, MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.AZSHARA, 0.3020, 0.7980, "Fel Interloper",
                    "Travel to Fel Interloper in Azshara.", { map = { MAP.BADLANDS, MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.BADLANDS, 0.4230, 0.2880, "Solid Chest",
                    "Travel to Solid Chest in Badlands.", { map = { MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.BADLANDS, 0.0960, 0.9330, "Solid Chest",
                    "Travel to Solid Chest in Badlands.", { map = { MAP.STRANGLETHORNVALE, MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STRANGLETHORNVALE, 0.4270, 0.1870, "Solid Chest",
                    "Travel to Solid Chest in Stranglethorn Vale.", { map = { MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STRANGLETHORNVALE, 0.4730, 0.4000, "Solid Chest",
                    "Travel to Solid Chest in Stranglethorn Vale.", { map = { MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STRANGLETHORNVALE, 0.2810, 0.6360, "Solid Chest",
                    "Travel to Solid Chest in Stranglethorn Vale.", { map = { MAP.ASHENVALE, MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ASHENVALE, 0.2240, 0.3620, "Battered Chest",
                    "Travel to Battered Chest in Ashenvale.", { map = { MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ASHENVALE, 0.5430, 0.6420, "Solid Chest",
                    "Travel to Solid Chest in Ashenvale.", { map = { MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ASHENVALE, 0.7940, 0.4960, "Solid Chest",
                    "Travel to Solid Chest in Ashenvale.", { map = { MAP.FERALAS, MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.FERALAS, 0.7420, 0.5060, "Fel Interloper",
                    "Travel to Fel Interloper in Feralas.", { map = { MAP.ALTERACMOUNTAINS, MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.5990, 0.4340, "Solid Chest",
                    "Travel to Solid Chest in Alterac Mountains.", { map = { MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.3950, 0.1520, "Solid Chest",
                    "Travel to Solid Chest in Alterac Mountains.", { map = { MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.1800, 0.7720, "Alliance Strongbox",
                    "Travel to Alliance Strongbox in Alterac Mountains.", { map = { MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ALTERACMOUNTAINS, 0.1490, 0.7530, "Alliance Chest",
                    "Travel to Alliance Chest in Alterac Mountains.", { map = { MAP.LOCHMODAN, MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.LOCHMODAN, 0.6800, 0.6590, "Battered Chest",
                    "Travel to Battered Chest in Loch Modan.", { map = { MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.LOCHMODAN, 0.3520, 0.2420, "Battered Chest",
                    "Travel to Battered Chest in Loch Modan.", { map = { MAP.BLASTEDLANDS, MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.BLASTEDLANDS, 0.6220, 0.3900, "Fel Interloper",
                    "Travel to Fel Interloper in Blasted Lands.", { map = { MAP.WESTFALL, MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.WESTFALL, 0.5300, 0.7890, "Battered Chest",
                    "Travel to Battered Chest in Westfall.", { map = { MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.WESTFALL, 0.4230, 0.6880, "Battered Chest",
                    "Travel to Battered Chest in Westfall.", { map = { MAP.THOUSANDNEEDLES, MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.THOUSANDNEEDLES, 0.1390, 0.3890, "Solid Chest",
                    "Travel to Solid Chest in Thousand Needles.", { map = { MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.THOUSANDNEEDLES, 0.6530, 0.8690, "Solid Chest",
                    "Travel to Solid Chest in Thousand Needles.", { map = { MAP.DESOLACE, MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DESOLACE, 0.5520, 0.3010, "Solid Chest",
                    "Travel to Solid Chest in Desolace.", { map = { MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DESOLACE, 0.7380, 0.7370, "Solid Chest",
                    "Travel to Solid Chest in Desolace.", { map = { MAP.STONETALONMOUNTAINS, MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STONETALONMOUNTAINS, 0.7360, 0.8560, "Battered Chest",
                    "Travel to Battered Chest in Stonetalon Mountains.", { map = { MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STONETALONMOUNTAINS, 0.3450, 0.6200, "Solid Chest",
                    "Travel to Solid Chest in Stonetalon Mountains.", { map = { MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.STONETALONMOUNTAINS, 0.2550, 0.1170, "Alliance Chest",
                    "Travel to Alliance Chest in Stonetalon Mountains.", { map = { MAP.REDRIDGEMOUNTAINS, MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.REDRIDGEMOUNTAINS, 0.2840, 0.1260, "Corporal Keeshan",
                    "Travel to Corporal Keeshan in Redridge Mountains.", { map = { MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.REDRIDGEMOUNTAINS, 0.2960, 0.8440, "Battered Chest",
                    "Travel to Battered Chest in Redridge Mountains.", { map = { MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.REDRIDGEMOUNTAINS, 0.4150, 0.1060, "Solid Chest",
                    "Travel to Solid Chest in Redridge Mountains.", { map = { MAP.TANARIS, MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.TANARIS, 0.6070, 0.3910, "Solid Chest",
                    "Travel to Solid Chest in Tanaris.", { map = { MAP.HINTERLANDS, MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.HINTERLANDS, 0.4750, 0.6920, "Solid Chest",
                    "Travel to Solid Chest in The Hinterlands.", { map = { MAP.SEARINGGORGE, MAP.SWAMPOFSORROWS } }),
                Point(MAP.SEARINGGORGE, 0.4420, 0.3390, "Solid Chest",
                    "Travel to Solid Chest in Searing Gorge.", { map = { MAP.SWAMPOFSORROWS } }),
                Point(MAP.SWAMPOFSORROWS, 0.0490, 0.3160, "Solid Chest",
                    "Travel to Solid Chest in Swamp of Sorrows."),
                Point(MAP.SWAMPOFSORROWS, 0.8900, 0.7850, "Solid Chest",
                    "Travel to Solid Chest in Swamp of Sorrows."),
            },
        },
        {
            id = "turnin-4781-components-for-the-enchanted-gold-bloodrobe",
            kind = "turnin",
            priority = 1550,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Components for the Enchanted Gold Bloodrobe to Xizk Goodstitch in Stranglethorn Vale.",
            dependsOn = { "objective-4781-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4781, "completed"),
            route = {
                Point(MAP.STRANGLETHORNVALE, 0.2860, 0.7680, "Xizk Goodstitch",
                    "Travel to Xizk Goodstitch in Stranglethorn Vale."),
            },
        },
        {
            id = "accept-4782-components-for-the-enchanted-gold-bloodrobe",
            kind = "accept",
            priority = 1560,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Components for the Enchanted Gold Bloodrobe from Xizk Goodstitch in Stranglethorn Vale.",
            dependsOn = { "turnin-4781-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4782, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORNVALE, 0.2860, 0.7680, "Xizk Goodstitch",
                    "Travel to Xizk Goodstitch in Stranglethorn Vale."),
            },
        },
        {
            id = "turnin-4782-components-for-the-enchanted-gold-bloodrobe",
            kind = "turnin",
            priority = 1570,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4782-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4782, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4783-components-for-the-enchanted-gold-bloodrobe",
            kind = "accept",
            priority = 1580,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4782-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4783, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-4783-components-for-the-enchanted-gold-bloodrobe",
            kind = "turnin",
            priority = 1590,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4783-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4783, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4784-components-for-the-enchanted-gold-bloodrobe",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4783-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4784, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-4784-components-for-the-enchanted-gold-bloodrobe",
            kind = "turnin",
            priority = 1610,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4784-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4784, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4785-fine-gold-thread",
            kind = "accept",
            priority = 1620,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept Fine Gold Thread from Xizk Goodstitch in Stranglethorn Vale.",
            complete = QuestState(4785, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORNVALE, 0.2860, 0.7680, "Xizk Goodstitch",
                    "Travel to Xizk Goodstitch in Stranglethorn Vale."),
            },
        },
        {
            id = "turnin-4785-fine-gold-thread",
            kind = "turnin",
            priority = 1630,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in Fine Gold Thread to Xizk Goodstitch in Stranglethorn Vale.",
            dependsOn = { "accept-4785-fine-gold-thread" },
            complete = QuestState(4785, "completed"),
            route = {
                Point(MAP.STRANGLETHORNVALE, 0.2860, 0.7680, "Xizk Goodstitch",
                    "Travel to Xizk Goodstitch in Stranglethorn Vale."),
            },
        },
        {
            id = "accept-4786-the-completed-robe",
            kind = "accept",
            priority = 1640,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Accept The Completed Robe from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4784-components-for-the-enchanted-gold-bloodrobe" },
            complete = QuestState(4786, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-4786-the-completed-robe",
            kind = "turnin",
            priority = 1650,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in The Completed Robe to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4786-the-completed-robe" },
            complete = QuestState(4786, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4962-shard-of-a-felhound",
            kind = "accept",
            priority = 1660,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Shard of a Felhound from Acolyte Wytula in The Barrens.",
            complete = QuestState(4962, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3520, "Acolyte Wytula",
                    "Travel to Acolyte Wytula in The Barrens."),
            },
        },
        {
            id = "turnin-4962-shard-of-a-felhound",
            kind = "turnin",
            priority = 1670,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Shard of a Felhound to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4962-shard-of-a-felhound" },
            complete = QuestState(4962, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4963-shard-of-an-infernal",
            kind = "accept",
            priority = 1680,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Shard of an Infernal from Acolyte Magaz in The Barrens.",
            complete = QuestState(4963, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3520, "Acolyte Magaz",
                    "Travel to Acolyte Magaz in The Barrens."),
            },
        },
        {
            id = "turnin-4963-shard-of-an-infernal",
            kind = "turnin",
            priority = 1690,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Shard of an Infernal to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4963-shard-of-an-infernal" },
            complete = QuestState(4963, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4965-knowledge-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Knowledge of the Orb of Orahil from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
            complete = QuestState(4965, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5020, 0.0600, "Briarthorn",
                    "Travel to Briarthorn in Ironforge."),
            },
        },
        {
            id = "turnin-4965-knowledge-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4965-knowledge-of-the-orb-of-orahil" },
            complete = QuestState(4965, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4967-knowledge-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Knowledge of the Orb of Orahil from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
            complete = QuestState(4967, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.4840, 0.4560, "Zevrost",
                    "Travel to Zevrost in Orgrimmar."),
            },
        },
        {
            id = "turnin-4967-knowledge-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-4967-knowledge-of-the-orb-of-orahil" },
            complete = QuestState(4967, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4968-knowledge-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Knowledge of the Orb of Orahil from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
            complete = QuestState(4968, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2540, 0.7820, "Demisette Cloyce",
                    "Travel to Demisette Cloyce in Stormwind City."),
            },
        },
        {
            id = "turnin-4968-knowledge-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 9 },
                    { race = { 1, 7 } },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
            dependsOn = { "accept-4968-knowledge-of-the-orb-of-orahil" },
            complete = QuestState(4968, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4969-knowledge-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Knowledge of the Orb of Orahil from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(4969, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8600, 0.1560, "Kaal Soulreaper",
                    "Travel to Kaal Soulreaper in Undercity."),
            },
        },
        {
            id = "turnin-4969-knowledge-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-4969-knowledge-of-the-orb-of-orahil" },
            complete = QuestState(4969, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-1799-fragments-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1800,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Fragments of the Orb of Orahil from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4969-knowledge-of-the-orb-of-orahil" },
            complete = QuestState(1799, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-1799-fragments-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1810,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Fragments of the Orb of Orahil to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1799-fragments-of-the-orb-of-orahil" },
            complete = QuestState(1799, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-4961-cleansing-of-the-orb-of-orahil",
            kind = "accept",
            priority = 1820,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Cleansing of the Orb of Orahil from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-1799-fragments-of-the-orb-of-orahil" },
            complete = QuestState(4961, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-4961-cleansing-of-the-orb-of-orahil",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Cleansing of the Orb of Orahil to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-4961-cleansing-of-the-orb-of-orahil" },
            complete = QuestState(4961, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-4976-returning-the-cleansed-orb",
            kind = "accept",
            priority = 1860,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Returning the Cleansed Orb from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-4961-cleansing-of-the-orb-of-orahil" },
            complete = QuestState(4976, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-4976-returning-the-cleansed-orb",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Returning the Cleansed Orb to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4976-returning-the-cleansed-orb" },
            complete = QuestState(4976, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4964-the-completed-orb-of-darorahil",
            kind = "accept",
            priority = 1872,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept The Completed Orb of Dar'Orahil from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4976-returning-the-cleansed-orb" },
            complete = QuestState(4964, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-4964-the-completed-orb-of-darorahil",
            kind = "turnin",
            priority = 1874,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in The Completed Orb of Dar'Orahil to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4964-the-completed-orb-of-darorahil" },
            complete = QuestState(4964, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4975-the-completed-orb-of-nohorahil",
            kind = "accept",
            priority = 1876,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept The Completed Orb of Noh'Orahil from Menara Voidrender in The Barrens.",
            dependsOn = { "turnin-4976-returning-the-cleansed-orb" },
            complete = QuestState(4975, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "turnin-4975-the-completed-orb-of-nohorahil",
            kind = "turnin",
            priority = 1878,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in The Completed Orb of Noh'Orahil to Menara Voidrender in The Barrens.",
            dependsOn = { "accept-4975-the-completed-orb-of-nohorahil" },
            complete = QuestState(4975, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6240, 0.3540, "Menara Voidrender",
                    "Travel to Menara Voidrender in The Barrens."),
            },
        },
        {
            id = "accept-4489-summon-felsteed",
            kind = "accept",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Summon Felsteed from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
            complete = QuestState(4489, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8600, 0.1560, "Kaal Soulreaper",
                    "Travel to Kaal Soulreaper in Undercity."),
            },
        },
        {
            id = "turnin-4489-summon-felsteed",
            kind = "turnin",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 9 },
                    { race = { 2, 5 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
            dependsOn = { "accept-4489-summon-felsteed" },
            complete = QuestState(4489, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-4490-summon-felsteed",
            kind = "accept",
            priority = 1900,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 1, 2, 5, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Accept Summon Felsteed from Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
            dependsOn = { "turnin-4489-summon-felsteed", "turnin-4487-summon-felsteed", "turnin-4488-summon-felsteed", "turnin-3631-summon-felsteed" },
            complete = QuestState(4490, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "turnin-4490-summon-felsteed",
            kind = "turnin",
            priority = 1910,
            conditions = {
                all = {
                    { class = 9 },
                    { race = { 1, 2, 5, 7 } },
                    { level = { min = 40 } },
                },
            },
            text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
            dependsOn = { "accept-4490-summon-felsteed" },
            complete = QuestState(4490, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6260, 0.3540, "Strahad Farsan",
                    "Travel to Strahad Farsan in The Barrens."),
            },
        },
        {
            id = "accept-8419-an-imps-request",
            kind = "accept",
            priority = 1920,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept An Imp's Request from Kaal Soulreaper in Undercity.",
            complete = QuestState(8419, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8600, 0.1560, "Kaal Soulreaper",
                    "Travel to Kaal Soulreaper in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR } }),
                Point(MAP.STORMWINDCITY, 0.2540, 0.7820, "Demisette Cloyce",
                    "Travel to Demisette Cloyce in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR } }),
                Point(MAP.IRONFORGE, 0.5020, 0.0600, "Briarthorn",
                    "Travel to Briarthorn in Ironforge.", { map = { MAP.ORGRIMMAR } }),
                Point(MAP.ORGRIMMAR, 0.4840, 0.4560, "Zevrost",
                    "Travel to Zevrost in Orgrimmar."),
            },
        },
        {
            id = "turnin-8419-an-imps-request",
            kind = "turnin",
            priority = 1930,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in An Imp's Request to Impsy in Felwood.",
            dependsOn = { "accept-8419-an-imps-request" },
            complete = QuestState(8419, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "accept-8420-hot-and-itchy",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Hot and Itchy from Impsy in Felwood.",
            dependsOn = { "turnin-8419-an-imps-request", "turnin-7601-what-niby-commands" },
            complete = QuestState(8420, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "objective-8420-hot-and-itchy",
            kind = "objective",
            priority = 1950,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Collect Felcloth from jadefire satyrs in Felwood.",
            dependsOn = { "accept-8420-hot-and-itchy" },
            complete = QuestState(8420, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3340, 0.6660, "Jadefire Rogue",
                    "Travel to Jadefire Rogue in Felwood."),
                Point(MAP.FELWOOD, 0.4100, 0.1900, "Jadefire Trickster",
                    "Travel to Jadefire Trickster in Felwood."),
                Point(MAP.FELWOOD, 0.3920, 0.2140, "Jadefire Betrayer",
                    "Travel to Jadefire Betrayer in Felwood."),
                Point(MAP.FELWOOD, 0.3540, 0.6680, "Jadefire Felsworn",
                    "Travel to Jadefire Felsworn in Felwood."),
                Point(MAP.FELWOOD, 0.3500, 0.6660, "Jadefire Shadowstalker",
                    "Travel to Jadefire Shadowstalker in Felwood."),
                Point(MAP.FELWOOD, 0.4220, 0.1700, "Jadefire Hellcaller",
                    "Travel to Jadefire Hellcaller in Felwood."),
                Point(MAP.FELWOOD, 0.3240, 0.6700, "Xavathras",
                    "Travel to Xavathras in Felwood."),
                Point(MAP.FELWOOD, 0.3600, 0.4460, "Lord Banehollow",
                    "Travel to Lord Banehollow in Felwood."),
                Point(MAP.FELWOOD, 0.3800, 0.5060, "Rakaiah",
                    "Travel to Rakaiah in Felwood."),
                Point(MAP.FELWOOD, 0.3880, 0.4680, "Salia",
                    "Travel to Salia in Felwood."),
                Point(MAP.FELWOOD, 0.3880, 0.4680, "Moora",
                    "Travel to Moora in Felwood."),
                Point(MAP.FELWOOD, 0.3740, 0.5320, "Jaedenar Legionnaire",
                    "Travel to Jaedenar Legionnaire in Felwood."),
                Point(MAP.FELWOOD, 0.3660, 0.5660, "Prince Xavalis",
                    "Travel to Prince Xavalis in Felwood."),
                Point(MAP.FELWOOD, 0.3900, 0.2220, "Xavaric",
                    "Travel to Xavaric in Felwood."),
                Point(MAP.FELWOOD, 0.4200, 0.8620, "Alshirr Banebreath",
                    "Travel to Alshirr Banebreath in Felwood."),
            },
        },
        {
            id = "turnin-8420-hot-and-itchy",
            kind = "turnin",
            priority = 1960,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Hot and Itchy to Impsy in Felwood.",
            dependsOn = { "objective-8420-hot-and-itchy" },
            complete = QuestState(8420, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "accept-8421-the-wrong-stuff",
            kind = "accept",
            priority = 1970,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept The Wrong Stuff from Impsy in Felwood.",
            dependsOn = { "turnin-8420-hot-and-itchy", "turnin-7601-what-niby-commands" },
            complete = QuestState(8421, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "objective-8421-the-wrong-stuff",
            kind = "objective",
            priority = 1980,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Collect Bloodvenom Essence and Rotting Wood in Felwood.",
            dependsOn = { "accept-8421-the-wrong-stuff" },
            complete = QuestState(8421, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4000, 0.5640, "Tainted Ooze",
                    "Travel to Tainted Ooze in Felwood."),
                Point(MAP.FELWOOD, 0.4940, 0.1460, "Irontree Wanderer",
                    "Travel to Irontree Wanderer in Felwood."),
                Point(MAP.FELWOOD, 0.4860, 0.2980, "Irontree Stomper",
                    "Travel to Irontree Stomper in Felwood."),
                Point(MAP.FELWOOD, 0.5060, 0.1820, "Withered Protector",
                    "Travel to Withered Protector in Felwood."),
            },
        },
        {
            id = "turnin-8421-the-wrong-stuff",
            kind = "turnin",
            priority = 1990,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in The Wrong Stuff to Impsy in Felwood.",
            dependsOn = { "objective-8421-the-wrong-stuff" },
            complete = QuestState(8421, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "accept-7603-kroshius-infernal-core",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Kroshius' Infernal Core from Impsy in Felwood.",
            dependsOn = { "turnin-7602-flawless-fel-essence", "turnin-8421-the-wrong-stuff" },
            complete = QuestState(7603, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Impsy",
                    "Travel to Impsy in Felwood."),
            },
        },
        {
            id = "objective-7603-kroshius-infernal-core",
            kind = "objective",
            priority = 2010,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Kroshius' Infernal Core: Kroshius' Infernal Core. This is an elite. Bring a group.",
            dependsOn = { "accept-7603-kroshius-infernal-core" },
            complete = QuestState(7603, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4540, 0.3540, "Kroshius",
                    "Travel to Kroshius in Felwood."),
            },
        },
        {
            id = "turnin-7603-kroshius-infernal-core",
            kind = "turnin",
            priority = 2020,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Kroshius' Infernal Core to Niby the Almighty in Felwood.",
            dependsOn = { "objective-7603-kroshius-infernal-core" },
            complete = QuestState(7603, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.4140, 0.4480, "Niby the Almighty",
                    "Travel to Niby the Almighty in Felwood."),
            },
        },
        {
            id = "accept-7582-the-prisons-casing",
            kind = "accept",
            priority = 2030,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept The Prison's Casing from Daio the Decrepit in Blasted Lands.",
            complete = QuestState(7582, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTEDLANDS, 0.3400, 0.5020, "Daio the Decrepit",
                    "Travel to Daio the Decrepit in Blasted Lands."),
            },
        },
        {
            id = "turnin-7582-the-prisons-casing",
            kind = "turnin",
            priority = 2040,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in The Prison's Casing to Daio the Decrepit in Blasted Lands.",
            dependsOn = { "accept-7582-the-prisons-casing" },
            complete = QuestState(7582, "completed"),
            route = {
                Point(MAP.BLASTEDLANDS, 0.3400, 0.5020, "Daio the Decrepit",
                    "Travel to Daio the Decrepit in Blasted Lands."),
            },
        },
        {
            id = "accept-7583-suppression",
            kind = "accept",
            priority = 2050,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Suppression from Daio the Decrepit in Blasted Lands.",
            complete = QuestState(7583, "activeOrCompleted"),
            route = {
                Point(MAP.BLASTEDLANDS, 0.3400, 0.5020, "Daio the Decrepit",
                    "Travel to Daio the Decrepit in Blasted Lands."),
            },
        },
        {
            id = "turnin-7583-suppression",
            kind = "turnin",
            priority = 2060,
            conditions = {
                all = {
                    { class = 9 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Suppression to Daio the Decrepit in Blasted Lands.",
            dependsOn = { "accept-7583-suppression" },
            complete = QuestState(7583, "completed"),
            route = {
                Point(MAP.BLASTEDLANDS, 0.3400, 0.5020, "Daio the Decrepit",
                    "Travel to Daio the Decrepit in Blasted Lands."),
            },
        }
    },
})
