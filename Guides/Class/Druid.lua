local _, ns = ...

-- Druid class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- A Student of Nature
-- The Great Ursera Spirit
-- Strength and Mercy
-- Child of Nature
-- Moonglade
-- Child of Nature
-- Moonglade
-- The Great Cat Spirit
-- The Great Windborne Cat Spirit
-- The Great Cat Spirit
-- The Great Cat Spirit
-- The Great Cat Spirit
-- Blessings of the Great Cat Spirit
-- To Darnassus
-- The Great Windborne Cat Spirit
-- Blessings of the Great Windborne Cat Spirit
-- The Great Cat Spirit
-- The Great Cat Spirit
-- Blessings of the Great Cat Spirit
-- To Thunder Bluff
-- Left out (dungeon quest): A Better Ingredient
-- Left out (no start pin): Relics of the Kaldorei, Wisdom of the Guardians, The Lost Saplings, Trial of The Owls, The Frigid Barrow, A Better Ingredient, Relics of the Tauren, The Lost Ancient, The Heart of Chromaggus

local MAP = {
    ALTERACMOUNTAINS = 1416,
    BARRENS = 1413,
    DARKSHORE = 1439,
    DARNASSUS = 1457,
    MOONGLADE = 1450,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    STORMWINDCITY = 1453,
    TELDRASSIL = 1438,
    THUNDERBLUFF = 1456,
    UNGOROCRATER = 1449,
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
    id = "class-druid",
    title = "Druid",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 11 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-92461-harmony-in-balance",
            kind = "accept",
            priority = 7,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Harmony in Balance from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92461, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "objective-92461-harmony-in-balance",
            kind = "objective",
            priority = 8,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 2 } },
                },
            },
            text = "Slay 8 Vuldren Juveniles in Thendal Grove.",
            dependsOn = { "accept-92461-harmony-in-balance" },
            complete = QuestState(92461, "complete"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4320, 0.2560, "Juvenile Vuldren",
                    "Travel to Juvenile Vuldren in Zephras Isle."),
            },
        },
        {
            id = "turnin-92461-harmony-in-balance",
            kind = "turnin",
            priority = 9,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Harmony in Balance to Rorian the Dayseeker in Zephras Isle.",
            dependsOn = { "objective-92461-harmony-in-balance" },
            complete = QuestState(92461, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "accept-92485-a-student-of-nature",
            kind = "accept",
            priority = 10,
            dependsOn = { "turnin-92461-harmony-in-balance" },
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept A Student of Nature from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92485, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92485-a-student-of-nature",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in A Student of Nature to Xyton Silverwind in Zephras Isle.",
            dependsOn = { "accept-92485-a-student-of-nature" },
            complete = QuestState(92485, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4160, 0.2340, "Xyton Silverwind",
                    "Travel to Xyton Silverwind in Zephras Isle."),
            },
        },
        {
            id = "accept-5923-heeding-the-call",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Denatharion in Darnassus. This step is for Night Elves.",
            complete = QuestState(5923, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3480, 0.0780, "Denatharion",
                    "Travel to Denatharion in Darnassus."),
            },
        },
        {
            id = "turnin-5923-heeding-the-call",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5923-heeding-the-call" },
            complete = QuestState(5923, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-3094-verdant-note",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Accept Verdant Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
            complete = QuestState(3094, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7720, "Grull Hawkwind",
                    "Travel to Grull Hawkwind in Mulgore."),
            },
        },
        {
            id = "turnin-3094-verdant-note",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                },
            },
            text = "Turn in Verdant Note to Gart Mistrunner in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-3094-verdant-note" },
            complete = QuestState(3094, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4500, 0.7600, "Gart Mistrunner",
                    "Travel to Gart Mistrunner in Mulgore."),
            },
        },
        {
            id = "accept-3120-verdant-sigil",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                },
            },
            text = "Accept Verdant Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
            complete = QuestState(3120, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4420, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine in Teldrassil."),
            },
        },
        {
            id = "turnin-3120-verdant-sigil",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                },
            },
            text = "Turn in Verdant Sigil to Mardant Strongoak in Teldrassil. This step is for Night Elves.",
            dependsOn = { "accept-3120-verdant-sigil" },
            complete = QuestState(3120, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4040, "Mardant Strongoak",
                    "Travel to Mardant Strongoak in Teldrassil."),
            },
        },
        {
            id = "accept-5924-heeding-the-call",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Theridran in Stormwind City. This step is for Night Elves.",
            dependsOn = { "turnin-5923-heeding-the-call" },
            complete = QuestState(5924, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2140, 0.5140, "Theridran",
                    "Travel to Theridran in Stormwind City."),
            },
        },
        {
            id = "turnin-5924-heeding-the-call",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5924-heeding-the-call" },
            complete = QuestState(5924, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-5925-heeding-the-call",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Kal in Teldrassil. This step is for Night Elves.",
            dependsOn = { "turnin-5924-heeding-the-call" },
            complete = QuestState(5925, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5600, 0.6160, "Kal",
                    "Travel to Kal in Teldrassil."),
            },
        },
        {
            id = "turnin-5925-heeding-the-call",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5925-heeding-the-call" },
            complete = QuestState(5925, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-5921-moonglade",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Moonglade from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "turnin-5925-heeding-the-call", "turnin-5923-heeding-the-call" },
            complete = QuestState(5921, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "turnin-5921-moonglade",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Moonglade to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-5921-moonglade" },
            complete = QuestState(5921, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-5929-great-bear-spirit",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Great Bear Spirit from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-5921-moonglade" },
            complete = QuestState(5929, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-5929-great-bear-spirit",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Great Bear Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-5929-great-bear-spirit" },
            complete = QuestState(5929, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-5931-back-to-darnassus",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Back to Darnassus from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-5929-great-bear-spirit", "turnin-5921-moonglade" },
            complete = QuestState(5931, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-5931-back-to-darnassus",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Back to Darnassus to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5931-back-to-darnassus" },
            complete = QuestState(5931, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-6001-body-and-heart",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Body and Heart from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "turnin-5931-back-to-darnassus" },
            complete = QuestState(6001, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "turnin-6001-body-and-heart",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Body and Heart to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-6001-body-and-heart" },
            complete = QuestState(6001, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-94006-the-great-ursera-spirit",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Great Ursera Spirit from Lotheluum Starbreeze in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(94006, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6400, 0.7500, "Lotheluum Starbreeze",
                    "Travel to Lotheluum Starbreeze in Zephras Isle."),
            },
        },
        {
            id = "turnin-94006-the-great-ursera-spirit",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Great Ursera Spirit to Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94006-the-great-ursera-spirit" },
            complete = QuestState(94006, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6980, 0.6160, "Urs'endris",
                    "Travel to Urs'endris in Zephras Isle."),
            },
        },
        {
            id = "accept-94638-strength-and-mercy",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Strength and Mercy from Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "turnin-94006-the-great-ursera-spirit" },
            complete = QuestState(94638, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6980, 0.6160, "Urs'endris",
                    "Travel to Urs'endris in Zephras Isle."),
            },
        },
        {
            id = "turnin-94638-strength-and-mercy",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Strength and Mercy to Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94638-strength-and-mercy" },
            complete = QuestState(94638, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6980, 0.6160, "Urs'endris",
                    "Travel to Urs'endris in Zephras Isle."),
            },
        },
        {
            id = "accept-94911-child-of-nature",
            kind = "accept",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Child of Nature from Muln Earthfury in Mulgore. This step is for Horde Skyborne.",
            complete = QuestState(94911, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.3340, 0.2240, "Muln Earthfury",
                    "Travel to Muln Earthfury in Mulgore."),
            },
        },
        {
            id = "turnin-94911-child-of-nature",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Child of Nature to Turak Runetotem in Thunder Bluff. This step is for Horde Skyborne.",
            dependsOn = { "accept-94911-child-of-nature" },
            complete = QuestState(94911, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-94913-moonglade",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Moonglade from Turak Runetotem in Thunder Bluff. This step is for Horde Skyborne.",
            dependsOn = { "turnin-94911-child-of-nature" },
            complete = QuestState(94913, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-94913-moonglade",
            kind = "turnin",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Moonglade to Dendrite Starblaze in Moonglade. This step is for Horde Skyborne.",
            dependsOn = { "accept-94913-moonglade" },
            complete = QuestState(94913, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-94912-child-of-nature",
            kind = "accept",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 95 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Child of Nature from Archmage Ansirem Runeweaver in Alterac Mountains. This step is for Alliance Skyborne.",
            complete = QuestState(94912, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.1880, 0.7860, "Archmage Ansirem Runeweaver",
                    "Travel to Archmage Ansirem Runeweaver in Alterac Mountains."),
            },
        },
        {
            id = "turnin-94912-child-of-nature",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 95 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Child of Nature to Sheldras Moontree in Stormwind City. This step is for Alliance Skyborne.",
            dependsOn = { "accept-94912-child-of-nature" },
            complete = QuestState(94912, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2100, 0.5540, "Sheldras Moontree",
                    "Travel to Sheldras Moontree in Stormwind City."),
            },
        },
        {
            id = "accept-94914-moonglade",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 95 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Moonglade from Sheldras Moontree in Stormwind City. This step is for Alliance Skyborne.",
            complete = QuestState(94914, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2100, 0.5540, "Sheldras Moontree",
                    "Travel to Sheldras Moontree in Stormwind City."),
            },
        },
        {
            id = "turnin-94914-moonglade",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 95 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Moonglade to Dendrite Starblaze in Moonglade. This step is for Alliance Skyborne.",
            dependsOn = { "accept-94914-moonglade" },
            complete = QuestState(94914, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-6121-lessons-anew",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Lessons Anew from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "turnin-6001-body-and-heart" },
            complete = QuestState(6121, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "turnin-6121-lessons-anew",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Lessons Anew to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-6121-lessons-anew" },
            complete = QuestState(6121, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-6122-the-principal-source",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept The Principal Source from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-6121-lessons-anew" },
            complete = QuestState(6122, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-6122-the-principal-source",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in The Principal Source to Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
            dependsOn = { "accept-6122-the-principal-source" },
            complete = QuestState(6122, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3760, 0.4060, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong in Darkshore."),
            },
        },
        {
            id = "accept-6123-gathering-the-cure",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Gathering the Cure from Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
            dependsOn = { "turnin-6122-the-principal-source" },
            complete = QuestState(6123, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3760, 0.4060, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong in Darkshore."),
            },
        },
        {
            id = "objective-6123-gathering-the-cure",
            kind = "objective",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Gathering the Cure: Earthroot. This step is for Night Elves.",
            dependsOn = { "accept-6123-gathering-the-cure" },
            complete = QuestState(6123, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3630, 0.8650, "Battered Chest",
                    "Travel to Battered Chest in Darkshore."),
                Point(MAP.DARKSHORE, 0.4710, 0.3700, "Battered Chest",
                    "Travel to Battered Chest in Darkshore."),
            },
        },
        {
            id = "turnin-6123-gathering-the-cure",
            kind = "turnin",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Gathering the Cure to Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
            dependsOn = { "objective-6123-gathering-the-cure" },
            complete = QuestState(6123, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3760, 0.4060, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong in Darkshore."),
            },
        },
        {
            id = "accept-6124-curing-the-sick",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Curing the Sick from Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
            dependsOn = { "turnin-6123-gathering-the-cure", "turnin-6122-the-principal-source" },
            complete = QuestState(6124, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3760, 0.4060, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong in Darkshore."),
            },
        },
        {
            id = "turnin-6124-curing-the-sick",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Curing the Sick to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-6124-curing-the-sick" },
            complete = QuestState(6124, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-6125-power-over-poison",
            kind = "accept",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Power over Poison from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-6124-curing-the-sick" },
            complete = QuestState(6125, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-6125-power-over-poison",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Power over Poison to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-6125-power-over-poison" },
            complete = QuestState(6125, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-26-a-lesson-to-learn",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept A Lesson to Learn from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "turnin-6125-power-over-poison" },
            complete = QuestState(26, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "turnin-26-a-lesson-to-learn",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Lesson to Learn to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-26-a-lesson-to-learn" },
            complete = QuestState(26, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-29-trial-of-the-lake",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Trial of the Lake from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-26-a-lesson-to-learn" },
            complete = QuestState(29, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-29-trial-of-the-lake",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Trial of the Lake to Tajarri in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-29-trial-of-the-lake" },
            complete = QuestState(29, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.3640, 0.4020, "Tajarri",
                    "Travel to Tajarri in Moonglade."),
            },
        },
        {
            id = "accept-272-trial-of-the-sea-lion",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Trial of the Sea Lion from Tajarri in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-29-trial-of-the-lake" },
            complete = QuestState(272, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.3640, 0.4020, "Tajarri",
                    "Travel to Tajarri in Moonglade."),
            },
        },
        {
            id = "turnin-272-trial-of-the-sea-lion",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Trial of the Sea Lion to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-272-trial-of-the-sea-lion" },
            complete = QuestState(272, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-5061-aquatic-form",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Aquatic Form from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-272-trial-of-the-sea-lion" },
            complete = QuestState(5061, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-5061-aquatic-form",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Aquatic Form to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-5061-aquatic-form" },
            complete = QuestState(5061, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-5926-heeding-the-call",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Innkeeper Pala in Thunder Bluff. This step is for Tauren.",
            complete = QuestState(5926, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.4580, 0.6440, "Innkeeper Pala",
                    "Travel to Innkeeper Pala in Thunder Bluff."),
            },
        },
        {
            id = "turnin-5926-heeding-the-call",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-5926-heeding-the-call" },
            complete = QuestState(5926, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-5927-heeding-the-call",
            kind = "accept",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Innkeeper Gryshka in Orgrimmar. This step is for Tauren.",
            dependsOn = { "turnin-5926-heeding-the-call" },
            complete = QuestState(5927, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.5420, 0.6840, "Innkeeper Gryshka",
                    "Travel to Innkeeper Gryshka in Orgrimmar."),
            },
        },
        {
            id = "turnin-5927-heeding-the-call",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-5927-heeding-the-call" },
            complete = QuestState(5927, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-5928-heeding-the-call",
            kind = "accept",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heeding the Call from Gennia Runetotem in Mulgore. This step is for Tauren.",
            dependsOn = { "turnin-5927-heeding-the-call" },
            complete = QuestState(5928, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4840, 0.5960, "Gennia Runetotem",
                    "Travel to Gennia Runetotem in Mulgore."),
            },
        },
        {
            id = "turnin-5928-heeding-the-call",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-5928-heeding-the-call" },
            complete = QuestState(5928, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-5922-moonglade",
            kind = "accept",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Moonglade from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "turnin-5928-heeding-the-call" },
            complete = QuestState(5922, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-5922-moonglade",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Moonglade to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-5922-moonglade" },
            complete = QuestState(5922, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-5930-great-bear-spirit",
            kind = "accept",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Great Bear Spirit from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-5922-moonglade" },
            complete = QuestState(5930, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-5930-great-bear-spirit",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Great Bear Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-5930-great-bear-spirit" },
            complete = QuestState(5930, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-5932-back-to-thunder-bluff",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Back to Thunder Bluff from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-5930-great-bear-spirit", "turnin-5922-moonglade" },
            complete = QuestState(5932, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-5932-back-to-thunder-bluff",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Back to Thunder Bluff to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-5932-back-to-thunder-bluff" },
            complete = QuestState(5932, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-6002-body-and-heart",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Body and Heart from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "turnin-5932-back-to-thunder-bluff" },
            complete = QuestState(6002, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-6002-body-and-heart",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Body and Heart to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-6002-body-and-heart" },
            complete = QuestState(6002, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-6126-lessons-anew",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Lessons Anew from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "turnin-6002-body-and-heart" },
            complete = QuestState(6126, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-6126-lessons-anew",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Lessons Anew to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-6126-lessons-anew" },
            complete = QuestState(6126, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-6127-the-principal-source",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept The Principal Source from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-6126-lessons-anew" },
            complete = QuestState(6127, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-6127-the-principal-source",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in The Principal Source to Tonga Runetotem in The Barrens. This step is for Tauren.",
            dependsOn = { "accept-6127-the-principal-source" },
            complete = QuestState(6127, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3180, "Tonga Runetotem",
                    "Travel to Tonga Runetotem in The Barrens."),
            },
        },
        {
            id = "accept-6128-gathering-the-cure",
            kind = "accept",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Gathering the Cure from Tonga Runetotem in The Barrens. This step is for Tauren.",
            dependsOn = { "turnin-6127-the-principal-source" },
            complete = QuestState(6128, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3180, "Tonga Runetotem",
                    "Travel to Tonga Runetotem in The Barrens."),
            },
        },
        {
            id = "objective-6128-gathering-the-cure",
            kind = "objective",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Gathering the Cure: Earthroot. This step is for Tauren.",
            dependsOn = { "accept-6128-gathering-the-cure" },
            complete = QuestState(6128, "complete"),
            route = {
                Point(MAP.BARRENS, 0.6400, 0.0940, "Dreadmaw Crocolisk",
                    "Travel to Dreadmaw Crocolisk in The Barrens."),
                Point(MAP.BARRENS, 0.5600, 0.2480, "Fel Interloper",
                    "Travel to Fel Interloper in The Barrens."),
                Point(MAP.BARRENS, 0.4330, 0.4830, "Battered Chest",
                    "Travel to Battered Chest in The Barrens."),
                Point(MAP.BARRENS, 0.4200, 0.8170, "Solid Chest",
                    "Travel to Solid Chest in The Barrens."),
                Point(MAP.BARRENS, 0.4960, 0.8360, "Alliance Strongbox",
                    "Travel to Alliance Strongbox in The Barrens."),
                Point(MAP.BARRENS, 0.4940, 0.8370, "Alliance Chest",
                    "Travel to Alliance Chest in The Barrens."),
                Point(MAP.BARRENS, 0.6430, 0.4730, "Battered Chest",
                    "Travel to Battered Chest in The Barrens."),
                Point(MAP.BARRENS, 0.6120, 0.5570, "Alliance Chest",
                    "Travel to Alliance Chest in The Barrens."),
                Point(MAP.BARRENS, 0.5480, 0.4000, "Lost Barrens Kodo",
                    "Travel to Lost Barrens Kodo in The Barrens."),
                Point(MAP.BARRENS, 0.4600, 0.7420, "Barrens Kodo",
                    "Travel to Barrens Kodo in The Barrens."),
            },
        },
        {
            id = "turnin-6128-gathering-the-cure",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Gathering the Cure to Tonga Runetotem in The Barrens. This step is for Tauren.",
            dependsOn = { "objective-6128-gathering-the-cure" },
            complete = QuestState(6128, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3180, "Tonga Runetotem",
                    "Travel to Tonga Runetotem in The Barrens."),
            },
        },
        {
            id = "accept-6129-curing-the-sick",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Curing the Sick from Tonga Runetotem in The Barrens. This step is for Tauren.",
            dependsOn = { "turnin-6128-gathering-the-cure", "turnin-6127-the-principal-source" },
            complete = QuestState(6129, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3180, "Tonga Runetotem",
                    "Travel to Tonga Runetotem in The Barrens."),
            },
        },
        {
            id = "turnin-6129-curing-the-sick",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Curing the Sick to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-6129-curing-the-sick" },
            complete = QuestState(6129, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-6130-power-over-poison",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Power over Poison from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-6129-curing-the-sick" },
            complete = QuestState(6130, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-6130-power-over-poison",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Power over Poison to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-6130-power-over-poison" },
            complete = QuestState(6130, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-27-a-lesson-to-learn",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept A Lesson to Learn from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "turnin-6130-power-over-poison" },
            complete = QuestState(27, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-27-a-lesson-to-learn",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Lesson to Learn to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-27-a-lesson-to-learn" },
            complete = QuestState(27, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-28-trial-of-the-lake",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Trial of the Lake from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-27-a-lesson-to-learn" },
            complete = QuestState(28, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-28-trial-of-the-lake",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Trial of the Lake to Tajarri in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-28-trial-of-the-lake" },
            complete = QuestState(28, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.3640, 0.4020, "Tajarri",
                    "Travel to Tajarri in Moonglade."),
            },
        },
        {
            id = "accept-30-trial-of-the-sea-lion",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Trial of the Sea Lion from Tajarri in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-28-trial-of-the-lake" },
            complete = QuestState(30, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.3640, 0.4020, "Tajarri",
                    "Travel to Tajarri in Moonglade."),
            },
        },
        {
            id = "turnin-30-trial-of-the-sea-lion",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Trial of the Sea Lion to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-30-trial-of-the-sea-lion" },
            complete = QuestState(30, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-31-aquatic-form",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Aquatic Form from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-30-trial-of-the-sea-lion" },
            complete = QuestState(31, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-31-aquatic-form",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Aquatic Form to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
            dependsOn = { "accept-31-aquatic-form" },
            complete = QuestState(31, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-98340-the-great-cat-spirit",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = { 6, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Turak Runetotem in Thunder Bluff. This step is for Tauren and Horde Skyborne.",
            complete = QuestState(98340, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-98340-the-great-cat-spirit",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = { 6, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren and Horde Skyborne.",
            dependsOn = { "accept-98340-the-great-cat-spirit" },
            complete = QuestState(98340, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-98341-the-great-windborne-cat-spirit",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Windborne Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "turnin-98340-the-great-cat-spirit" },
            complete = QuestState(98341, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-98341-the-great-windborne-cat-spirit",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Windborne Cat Spirit to Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-98341-the-great-windborne-cat-spirit" },
            complete = QuestState(98341, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.4400, 0.7340, "Avatar of Saeyleenan",
                    "Travel to Avatar of Saeyleenan in Moonglade."),
            },
        },
        {
            id = "accept-98393-the-great-cat-spirit",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = { 4, 95 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves and Alliance Skyborne.",
            complete = QuestState(98393, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "turnin-98393-the-great-cat-spirit",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = { 4, 95 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves and Alliance Skyborne.",
            dependsOn = { "accept-98393-the-great-cat-spirit" },
            complete = QuestState(98393, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-98394-the-great-cat-spirit",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-98393-the-great-cat-spirit" },
            complete = QuestState(98394, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-98394-the-great-cat-spirit",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-98394-the-great-cat-spirit" },
            complete = QuestState(98394, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "accept-98396-the-great-cat-spirit",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-98394-the-great-cat-spirit" },
            complete = QuestState(98396, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "turnin-98396-the-great-cat-spirit",
            kind = "turnin",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-98396-the-great-cat-spirit" },
            complete = QuestState(98396, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "accept-98731-blessings-of-the-great-cat-spirit",
            kind = "accept",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Blessings of the Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Night Elves.",
            dependsOn = { "turnin-98396-the-great-cat-spirit" },
            complete = QuestState(98731, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "turnin-98731-blessings-of-the-great-cat-spirit",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Blessings of the Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
            dependsOn = { "accept-98731-blessings-of-the-great-cat-spirit" },
            complete = QuestState(98731, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-98397-to-darnassus",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = { 4, 95 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept To Darnassus from Dendrite Starblaze in Moonglade. This step is for Night Elves and Alliance Skyborne.",
            dependsOn = { "turnin-98731-blessings-of-the-great-cat-spirit" },
            complete = QuestState(98397, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-98397-to-darnassus",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 11 },
                    { race = { 4, 95 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in To Darnassus to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves and Alliance Skyborne.",
            dependsOn = { "accept-98397-to-darnassus" },
            complete = QuestState(98397, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus."),
            },
        },
        {
            id = "accept-98404-the-great-windborne-cat-spirit",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Windborne Cat Spirit from Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(98404, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.4400, 0.7340, "Avatar of Saeyleenan",
                    "Travel to Avatar of Saeyleenan in Moonglade."),
            },
        },
        {
            id = "turnin-98404-the-great-windborne-cat-spirit",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Windborne Cat Spirit to Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-98404-the-great-windborne-cat-spirit" },
            complete = QuestState(98404, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.4400, 0.7340, "Avatar of Saeyleenan",
                    "Travel to Avatar of Saeyleenan in Moonglade."),
            },
        },
        {
            id = "accept-98738-blessings-of-the-great-windborne-cat-spirit",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Blessings of the Great Windborne Cat Spirit from Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "turnin-98404-the-great-windborne-cat-spirit" },
            complete = QuestState(98738, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.4400, 0.7340, "Avatar of Saeyleenan",
                    "Travel to Avatar of Saeyleenan in Moonglade."),
            },
        },
        {
            id = "turnin-98738-blessings-of-the-great-windborne-cat-spirit",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { class = 11 },
                    { race = { 95, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Blessings of the Great Windborne Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-98738-blessings-of-the-great-windborne-cat-spirit" },
            complete = QuestState(98738, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-98405-the-great-cat-spirit",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Tauren.",
            complete = QuestState(98405, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-98405-the-great-cat-spirit",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-98405-the-great-cat-spirit" },
            complete = QuestState(98405, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "accept-98342-the-great-cat-spirit",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-98405-the-great-cat-spirit" },
            complete = QuestState(98342, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "turnin-98342-the-great-cat-spirit",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-98342-the-great-cat-spirit" },
            complete = QuestState(98342, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "accept-98739-blessings-of-the-great-cat-spirit",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Blessings of the Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Tauren.",
            dependsOn = { "turnin-98342-the-great-cat-spirit" },
            complete = QuestState(98739, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5460, 0.7500, "Great Cat Spirit",
                    "Travel to Great Cat Spirit in Moonglade."),
            },
        },
        {
            id = "turnin-98739-blessings-of-the-great-cat-spirit",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = 6 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Blessings of the Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren.",
            dependsOn = { "accept-98739-blessings-of-the-great-cat-spirit" },
            complete = QuestState(98739, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "accept-98362-to-thunder-bluff",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = { 6, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept To Thunder Bluff from Dendrite Starblaze in Moonglade. This step is for Tauren and Horde Skyborne.",
            dependsOn = { "turnin-98739-blessings-of-the-great-cat-spirit" },
            complete = QuestState(98362, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3040, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze in Moonglade."),
            },
        },
        {
            id = "turnin-98362-to-thunder-bluff",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 11 },
                    { race = { 6, 96 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in To Thunder Bluff to Turak Runetotem in Thunder Bluff. This step is for Tauren and Horde Skyborne.",
            dependsOn = { "accept-98362-to-thunder-bluff" },
            complete = QuestState(98362, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-9063-torwa-pathfinder",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Torwa Pathfinder from Theridran in Stormwind City.",
            dependsOn = { "turnin-5061-aquatic-form", "turnin-31-aquatic-form" },
            complete = QuestState(9063, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2140, 0.5140, "Theridran",
                    "Travel to Theridran in Stormwind City.", { map = { MAP.THUNDERBLUFF, MAP.DARNASSUS, MAP.MOONGLADE } }),
                Point(MAP.THUNDERBLUFF, 0.7640, 0.2760, "Turak Runetotem",
                    "Travel to Turak Runetotem in Thunder Bluff.", { map = { MAP.DARNASSUS, MAP.MOONGLADE } }),
                Point(MAP.DARNASSUS, 0.3520, 0.0800, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker in Darnassus.", { map = { MAP.MOONGLADE } }),
                Point(MAP.MOONGLADE, 0.5240, 0.4040, "Loganaar",
                    "Travel to Loganaar in Moonglade."),
            },
        },
        {
            id = "turnin-9063-torwa-pathfinder",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Torwa Pathfinder to Torwa Pathfinder in Un'Goro Crater.",
            dependsOn = { "accept-9063-torwa-pathfinder" },
            complete = QuestState(9063, "completed"),
            route = {
                Point(MAP.UNGOROCRATER, 0.7160, 0.7600, "Torwa Pathfinder",
                    "Travel to Torwa Pathfinder in Un'Goro Crater."),
            },
        },
        {
            id = "accept-9052-bloodpetal-poison",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Bloodpetal Poison from Torwa Pathfinder in Un'Goro Crater.",
            dependsOn = { "turnin-9063-torwa-pathfinder" },
            complete = QuestState(9052, "activeOrCompleted"),
            route = {
                Point(MAP.UNGOROCRATER, 0.7160, 0.7600, "Torwa Pathfinder",
                    "Travel to Torwa Pathfinder in Un'Goro Crater."),
            },
        },
        {
            id = "objective-9052-bloodpetal-poison",
            kind = "objective",
            priority = 1140,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Bloodpetal Poison: Gorishi Sting.",
            dependsOn = { "accept-9052-bloodpetal-poison" },
            complete = QuestState(9052, "complete"),
            route = {
                Point(MAP.UNGOROCRATER, 0.5040, 0.7880, "Gorishi Wasp",
                    "Travel to Gorishi Wasp in Un'Goro Crater."),
                Point(MAP.UNGOROCRATER, 0.5000, 0.8080, "Gorishi Stinger",
                    "Travel to Gorishi Stinger in Un'Goro Crater."),
                Point(MAP.UNGOROCRATER, 0.4360, 0.8140, "Gorishi Hive Queen",
                    "Travel to Gorishi Hive Queen in Un'Goro Crater."),
            },
        },
        {
            id = "turnin-9052-bloodpetal-poison",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Bloodpetal Poison to Torwa Pathfinder in Un'Goro Crater.",
            dependsOn = { "objective-9052-bloodpetal-poison" },
            complete = QuestState(9052, "completed"),
            route = {
                Point(MAP.UNGOROCRATER, 0.7160, 0.7600, "Torwa Pathfinder",
                    "Travel to Torwa Pathfinder in Un'Goro Crater."),
            },
        },
        {
            id = "accept-9051-toxic-test",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Toxic Test from Torwa Pathfinder in Un'Goro Crater.",
            dependsOn = { "turnin-9052-bloodpetal-poison", "turnin-9063-torwa-pathfinder" },
            complete = QuestState(9051, "activeOrCompleted"),
            route = {
                Point(MAP.UNGOROCRATER, 0.7160, 0.7600, "Torwa Pathfinder",
                    "Travel to Torwa Pathfinder in Un'Goro Crater."),
            },
        },
        {
            id = "turnin-9051-toxic-test",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { class = 11 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Toxic Test to Torwa Pathfinder in Un'Goro Crater.",
            dependsOn = { "accept-9051-toxic-test" },
            complete = QuestState(9051, "completed"),
            route = {
                Point(MAP.UNGOROCRATER, 0.7160, 0.7600, "Torwa Pathfinder",
                    "Travel to Torwa Pathfinder in Un'Goro Crater."),
            },
        }
    },
})
