local _, ns = ...

-- Warrior class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- A Scribbled Letter
-- The Warrior's Path
-- The Skybreaker Bulwark
-- Stalk With The Earthmother
-- Stalk With The Earthmother
-- Left out (dungeon quest): Voodoo Feathers
-- Left out (no start pin): Legacy of Valor, Beach Bot, Red Bag Blues, Voodoo Feathers, Poacher's Den, Bookin' it Back, Rift Away, Amidst the Shadowed Webs, Anyone Can Cook, A Trial of Fitness, The Old Champ, Defanged (+15 more)

local MAP = {
    ALTERACMOUNTAINS = 1416,
    ASHENVALE = 1440,
    AZSHARA = 1447,
    BARRENS = 1413,
    BLASTEDLANDS = 1419,
    DARNASSUS = 1457,
    DESOLACE = 1443,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    ELWYNNFOREST = 1429,
    FERALAS = 1444,
    IRONFORGE = 1455,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    REDRIDGEMOUNTAINS = 1433,
    STORMWINDCITY = 1453,
    SWAMPOFSORROWS = 1435,
    TELDRASSIL = 1438,
    THUNDERBLUFF = 1456,
    TIRISFALGLADES = 1420,
    UNDERCITY = 1458,
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
    id = "class-warrior",
    title = "Warrior",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 1 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-92479-a-scribbled-letter",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                },
            },
            text = "Accept A Scribbled Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(92479, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-92479-a-scribbled-letter",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                },
            },
            text = "Turn in A Scribbled Letter to Tordrin Sternblade in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-92479-a-scribbled-letter" },
            complete = QuestState(92479, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.5120, 0.4080, "Tordrin Sternblade",
                    "Travel to Tordrin Sternblade in Elwynn Forest."),
            },
        },
        {
            id = "accept-92461-harmony-in-balance",
            kind = "accept",
            priority = 27,
            conditions = {
                all = {
                    { class = 1 },
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
            priority = 28,
            conditions = {
                all = {
                    { class = 1 },
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
            priority = 29,
            conditions = {
                all = {
                    { class = 1 },
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
            id = "accept-92532-the-warriors-path",
            kind = "accept",
            priority = 30,
            dependsOn = { "turnin-92461-harmony-in-balance" },
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept The Warrior's Path from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92532, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92532-the-warriors-path",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in The Warrior's Path to Blademaster Ren in Zephras Isle.",
            dependsOn = { "accept-92532-the-warriors-path" },
            complete = QuestState(92532, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4360, 0.2420, "Blademaster Ren",
                    "Travel to Blademaster Ren in Zephras Isle."),
            },
        },
        {
            id = "accept-76156-stalk-with-the-earthmother",
            kind = "accept",
            priority = 41,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
            complete = QuestState(76156, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3960, 0.6560, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem in Thunder Bluff."),
            },
        },
        {
            id = "objective-76156-stalk-with-the-earthmother-1",
            kind = "objective",
            priority = 42,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            useClientPin = true,
            text = "Stalk With The Earthmother: Seaforium Mining Charge. The blasting carts are in the mine southeast of Thunder Bluff. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-76156-stalk-with-the-earthmother" },
            complete = QuestObjective(76156, 1, "Seaforium Mining Charge"),
            route = {
                Point(MAP.MULGORE, 0.6440, 0.4360, "Venture Co. Mine",
                    "Travel to the Venture Co. Mine in Mulgore."),
            },
        },
        {
            id = "turnin-76156-stalk-with-the-earthmother",
            kind = "turnin",
            priority = 43,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
            dependsOn = { "objective-76156-stalk-with-the-earthmother-1" },
            complete = QuestState(76156, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3960, 0.6560, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-76160-stalk-with-the-earthmother",
            kind = "accept",
            priority = 44,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
            complete = QuestState(76160, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3960, 0.6560, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem in Thunder Bluff."),
            },
        },
        {
            id = "objective-76160-stalk-with-the-earthmother-1",
            kind = "objective",
            priority = 45,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            useClientPin = true,
            text = "Stalk With The Earthmother: Pine Salve. Gather Windfury Cones in the harpy area and use the Mortar and Pestle. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "accept-76160-stalk-with-the-earthmother" },
            complete = QuestObjective(76160, 1, "Pine Salve"),
            route = {
                Point(MAP.MULGORE, 0.3240, 0.2760, "Windfury Matriarch",
                    "Travel to the Windfury harpies in Mulgore."),
            },
        },
        {
            id = "turnin-76160-stalk-with-the-earthmother",
            kind = "turnin",
            priority = 46,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = { 1, 7, 11 } },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
            dependsOn = { "objective-76160-stalk-with-the-earthmother-1" },
            complete = QuestState(76160, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3960, 0.6560, "Boarton Shadetotem",
                    "Travel to Boarton Shadetotem in Thunder Bluff."),
            },
        },
        {
            id = "accept-1638-a-warriors-training",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept A Warrior's Training from Lyria Du Lac in Elwynn Forest. This step is for Humans.",
            complete = QuestState(1638, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4100, 0.6580, "Lyria Du Lac",
                    "Travel to Lyria Du Lac in Elwynn Forest.", { map = { MAP.STORMWINDCITY } }),
                Point(MAP.STORMWINDCITY, 0.7860, 0.4560, "Ilsa Corbin",
                    "Travel to Ilsa Corbin in Stormwind City."),
            },
        },
        {
            id = "turnin-1638-a-warriors-training",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in A Warrior's Training to Harry Burlguard in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1638-a-warriors-training" },
            complete = QuestState(1638, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7400, 0.3720, "Harry Burlguard",
                    "Travel to Harry Burlguard in Stormwind City."),
            },
        },
        {
            id = "accept-1639-bartleby-the-drunk",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Bartleby the Drunk from Harry Burlguard in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1638-a-warriors-training" },
            complete = QuestState(1639, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7400, 0.3720, "Harry Burlguard",
                    "Travel to Harry Burlguard in Stormwind City."),
            },
        },
        {
            id = "turnin-1639-bartleby-the-drunk",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Bartleby the Drunk to Bartleby in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            complete = QuestState(1639, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7380, 0.3660, "Bartleby",
                    "Travel to Bartleby in Stormwind City."),
            },
        },
        {
            id = "accept-1640-beat-bartleby",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Beat Bartleby from Bartleby in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1639-bartleby-the-drunk" },
            complete = QuestState(1640, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7380, 0.3660, "Bartleby",
                    "Travel to Bartleby in Stormwind City."),
            },
        },
        {
            id = "turnin-1640-beat-bartleby",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Beat Bartleby to Bartleby in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1640-beat-bartleby" },
            complete = QuestState(1640, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7380, 0.3660, "Bartleby",
                    "Travel to Bartleby in Stormwind City."),
            },
        },
        {
            id = "accept-1665-bartlebys-mug",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Bartleby's Mug from Bartleby in Stormwind City. This step is for Humans.",
            dependsOn = { "turnin-1640-beat-bartleby", "turnin-1639-bartleby-the-drunk" },
            complete = QuestState(1665, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7380, 0.3660, "Bartleby",
                    "Travel to Bartleby in Stormwind City."),
            },
        },
        {
            id = "turnin-1665-bartlebys-mug",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Bartleby's Mug to Harry Burlguard in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1665-bartlebys-mug" },
            complete = QuestState(1665, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7400, 0.3720, "Harry Burlguard",
                    "Travel to Harry Burlguard in Stormwind City."),
            },
        },
        {
            id = "accept-1679-muren-stormpike",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Muren Stormpike from Granis Swiftaxe in Dun Morogh. This step is for Dwarves and Gnomes.",
            complete = QuestState(1679, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4720, 0.5260, "Granis Swiftaxe",
                    "Travel to Granis Swiftaxe in Dun Morogh."),
            },
        },
        {
            id = "turnin-1679-muren-stormpike",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Muren Stormpike to Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
            dependsOn = { "accept-1679-muren-stormpike" },
            complete = QuestState(1679, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7060, 0.9040, "Muren Stormpike",
                    "Travel to Muren Stormpike in Ironforge."),
            },
        },
        {
            id = "accept-1678-vejrek",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Vejrek from Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
            dependsOn = { "turnin-1679-muren-stormpike" },
            complete = QuestState(1678, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7060, 0.9040, "Muren Stormpike",
                    "Travel to Muren Stormpike in Ironforge."),
            },
        },
        {
            id = "turnin-1678-vejrek",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Vejrek to Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
            dependsOn = { "accept-1678-vejrek" },
            complete = QuestState(1678, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.7060, 0.9040, "Muren Stormpike",
                    "Travel to Muren Stormpike in Ironforge."),
            },
        },
        {
            id = "accept-1684-elanaria",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Elanaria from Moon Priestess Amara in Teldrassil. This step is for Night Elves.",
            complete = QuestState(1684, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5560, 0.5840, "Moon Priestess Amara",
                    "Travel to Moon Priestess Amara in Teldrassil."),
                Point(MAP.TELDRASSIL, 0.5620, 0.5920, "Kyra Windblade",
                    "Travel to Kyra Windblade in Teldrassil."),
            },
        },
        {
            id = "turnin-1684-elanaria",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Elanaria to Elanaria in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-1684-elanaria" },
            complete = QuestState(1684, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "accept-1683-vorlus-vilehoof",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Vorlus Vilehoof from Elanaria in Darnassus. This step is for Night Elves.",
            dependsOn = { "turnin-1684-elanaria" },
            complete = QuestState(1683, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "turnin-1683-vorlus-vilehoof",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Vorlus Vilehoof to Elanaria in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-1683-vorlus-vilehoof" },
            complete = QuestState(1683, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "accept-94003-the-skybreaker-bulwark",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { class = 1 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Skybreaker Bulwark from Seena Skybreaker in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            complete = QuestState(94003, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5980, 0.7280, "Seena Skybreaker",
                    "Travel to Seena Skybreaker in Zephras Isle."),
            },
        },
        {
            id = "objective-94003-the-skybreaker-bulwark",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { class = 1 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "The Skybreaker Bulwark: Skybreaker Bulwark. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "accept-94003-the-skybreaker-bulwark" },
            complete = QuestState(94003, "complete"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5660, 0.5040, "Zaal Stormshield",
                    "Travel to Zaal Stormshield in Zephras Isle."),
            },
        },
        {
            id = "turnin-94003-the-skybreaker-bulwark",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { class = 1 },
                    { race = { 95, 96 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Skybreaker Bulwark to Seena Skybreaker in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
            dependsOn = { "objective-94003-the-skybreaker-bulwark" },
            complete = QuestState(94003, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5980, 0.7280, "Seena Skybreaker",
                    "Travel to Seena Skybreaker in Zephras Isle."),
            },
        },
        {
            id = "accept-1718-the-islander",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Islander from Baltus Fowler in Undercity.",
            complete = QuestState(1718, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4720, 0.1700, "Baltus Fowler",
                    "Travel to Baltus Fowler in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.STORMWINDCITY, 0.7880, 0.4560, "Wu Shen",
                    "Travel to Wu Shen in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.IRONFORGE, 0.7000, 0.9060, "Kelv Sternhammer",
                    "Travel to Kelv Sternhammer in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Sorek",
                    "Travel to Sorek in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.5760, 0.8720, "Torm Ragetotem",
                    "Travel to Torm Ragetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1718-the-islander",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Islander to Klannoc Macleod in The Barrens.",
            dependsOn = { "accept-1718-the-islander" },
            complete = QuestState(1718, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4900, "Klannoc Macleod",
                    "Travel to Klannoc Macleod in The Barrens."),
            },
        },
        {
            id = "accept-1719-the-affray",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Affray from Klannoc Macleod in The Barrens.",
            dependsOn = { "turnin-1718-the-islander" },
            complete = QuestState(1719, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4900, "Klannoc Macleod",
                    "Travel to Klannoc Macleod in The Barrens."),
            },
        },
        {
            id = "turnin-1719-the-affray",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Affray to Klannoc Macleod in The Barrens.",
            dependsOn = { "accept-1719-the-affray" },
            complete = QuestState(1719, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4900, "Klannoc Macleod",
                    "Travel to Klannoc Macleod in The Barrens."),
            },
        },
        {
            id = "accept-1791-the-windwatcher",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Windwatcher from Klannoc Macleod in The Barrens.",
            dependsOn = { "turnin-1719-the-affray" },
            complete = QuestState(1791, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6860, 0.4900, "Klannoc Macleod",
                    "Travel to Klannoc Macleod in The Barrens."),
            },
        },
        {
            id = "turnin-1791-the-windwatcher",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Windwatcher to Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "accept-1791-the-windwatcher" },
            complete = QuestState(1791, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-1712-cyclonian",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Cyclonian from Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "turnin-1791-the-windwatcher" },
            complete = QuestState(1712, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "objective-1712-cyclonian",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Cyclonian: Liferoot.",
            dependsOn = { "accept-1712-cyclonian" },
            complete = QuestState(1712, "complete"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.3940, 0.8160, "Thanthaldis Snowgleam",
                    "Travel to Thanthaldis Snowgleam in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.5990, 0.4340, "Solid Chest",
                    "Travel to Solid Chest in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.3950, 0.1520, "Solid Chest",
                    "Travel to Solid Chest in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.1800, 0.7720, "Alliance Strongbox",
                    "Travel to Alliance Strongbox in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.1490, 0.7530, "Alliance Chest",
                    "Travel to Alliance Chest in Alterac Mountains."),
            },
        },
        {
            id = "turnin-1712-cyclonian",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Cyclonian to Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "objective-1712-cyclonian" },
            complete = QuestState(1712, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-1714-essence-of-the-exile",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Essence of the Exile from Bath'rah's Cauldron in Alterac Mountains.",
            complete = QuestState(1714, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.7930, 0.6670, "Bath'rah's Cauldron",
                    "Travel to Bath'rah's Cauldron in Alterac Mountains."),
            },
        },
        {
            id = "objective-1714-essence-of-the-exile",
            kind = "objective",
            priority = 340,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Essence of the Exile: Burning Charm.",
            dependsOn = { "accept-1714-essence-of-the-exile" },
            complete = QuestState(1714, "complete"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.6000, 0.4560, "Ancient Fire Elemental",
                    "Travel to Ancient Fire Elemental in Alterac Mountains."),
            },
        },
        {
            id = "turnin-1714-essence-of-the-exile",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Essence of the Exile to Bath'rah's Cauldron in Alterac Mountains.",
            dependsOn = { "objective-1714-essence-of-the-exile" },
            complete = QuestState(1714, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.7930, 0.6670, "Bath'rah's Cauldron",
                    "Travel to Bath'rah's Cauldron in Alterac Mountains."),
            },
        },
        {
            id = "accept-1713-the-summoning",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Summoning from Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "turnin-1712-cyclonian" },
            complete = QuestState(1713, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "objective-1713-the-summoning",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "The Summoning: Whirlwind Heart. This is an elite. Bring a group.",
            dependsOn = { "accept-1713-the-summoning" },
            complete = QuestState(1713, "complete"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8020, 0.6200, "Cyclonian",
                    "Travel to Cyclonian in Alterac Mountains."),
            },
        },
        {
            id = "turnin-1713-the-summoning",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Summoning to Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "objective-1713-the-summoning" },
            complete = QuestState(1713, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-1792-whirlwind-weapon",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Whirlwind Weapon from Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "turnin-1713-the-summoning", "turnin-1712-cyclonian" },
            complete = QuestState(1792, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "turnin-1792-whirlwind-weapon",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Whirlwind Weapon to Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "accept-1792-whirlwind-weapon" },
            complete = QuestState(1792, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-8417-a-troubled-spirit",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept A Troubled Spirit from Christoph Walker in Undercity.",
            complete = QuestState(8417, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4720, 0.1500, "Christoph Walker",
                    "Travel to Christoph Walker in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.STORMWINDCITY, 0.7880, 0.4560, "Wu Shen",
                    "Travel to Wu Shen in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.IRONFORGE, 0.7000, 0.9060, "Kelv Sternhammer",
                    "Travel to Kelv Sternhammer in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.DARNASSUS } }),
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Sorek",
                    "Travel to Sorek in Orgrimmar.", { map = { MAP.DARNASSUS } }),
                Point(MAP.DARNASSUS, 0.5860, 0.3540, "Darnath Bladesinger",
                    "Travel to Darnath Bladesinger in Darnassus."),
            },
        },
        {
            id = "turnin-8417-a-troubled-spirit",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in A Troubled Spirit to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "accept-8417-a-troubled-spirit" },
            complete = QuestState(8417, "completed"),
            route = {
                Point(MAP.SWAMPOFSORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde in Swamp of Sorrows."),
            },
        },
        {
            id = "accept-8423-warrior-kinship",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Warrior Kinship from Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "turnin-8417-a-troubled-spirit" },
            complete = QuestState(8423, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMPOFSORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde in Swamp of Sorrows."),
            },
        },
        {
            id = "turnin-8423-warrior-kinship",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Warrior Kinship to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "accept-8423-warrior-kinship" },
            complete = QuestState(8423, "completed"),
            route = {
                Point(MAP.SWAMPOFSORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde in Swamp of Sorrows."),
            },
        },
        {
            id = "accept-8424-war-on-the-shadowsworn",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept War on the Shadowsworn from Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "turnin-8423-warrior-kinship", "turnin-8417-a-troubled-spirit" },
            complete = QuestState(8424, "activeOrCompleted"),
            route = {
                Point(MAP.SWAMPOFSORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde in Swamp of Sorrows."),
            },
        },
        {
            id = "turnin-8424-war-on-the-shadowsworn",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { class = 1 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in War on the Shadowsworn to Fallen Hero of the Horde in Swamp of Sorrows.",
            dependsOn = { "accept-8424-war-on-the-shadowsworn" },
            complete = QuestState(8424, "completed"),
            route = {
                Point(MAP.SWAMPOFSORROWS, 0.3420, 0.6600, "Fallen Hero of the Horde",
                    "Travel to Fallen Hero of the Horde in Swamp of Sorrows."),
            },
        },
        {
            id = "accept-1505-veteran-uzzek",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Veteran Uzzek from Tarshaw Jaggedscar in Durotar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1505, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5420, 0.4240, "Tarshaw Jaggedscar",
                    "Travel to Tarshaw Jaggedscar in Durotar.", { map = { MAP.ORGRIMMAR, MAP.MULGORE } }),
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Sorek",
                    "Travel to Sorek in Orgrimmar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.4940, 0.6040, "Krang Stonehoof",
                    "Travel to Krang Stonehoof in Mulgore."),
            },
        },
        {
            id = "turnin-1505-veteran-uzzek",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Veteran Uzzek to Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1505-veteran-uzzek" },
            complete = QuestState(1505, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6140, 0.2100, "Uzzek",
                    "Travel to Uzzek in The Barrens."),
            },
        },
        {
            id = "accept-1498-path-of-defense",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Path of Defense from Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1505-veteran-uzzek" },
            complete = QuestState(1498, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6140, 0.2100, "Uzzek",
                    "Travel to Uzzek in The Barrens."),
            },
        },
        {
            id = "turnin-1498-path-of-defense",
            kind = "turnin",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Path of Defense to Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1498-path-of-defense" },
            complete = QuestState(1498, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6140, 0.2100, "Uzzek",
                    "Travel to Uzzek in The Barrens."),
            },
        },
        {
            id = "accept-1502-thungrim-firegaze",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Thun'grim Firegaze from Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1498-path-of-defense", "turnin-1505-veteran-uzzek" },
            complete = QuestState(1502, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6140, 0.2100, "Uzzek",
                    "Travel to Uzzek in The Barrens."),
            },
        },
        {
            id = "turnin-1502-thungrim-firegaze",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Thun'grim Firegaze to Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1502-thungrim-firegaze" },
            complete = QuestState(1502, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "accept-1503-forged-steel",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Forged Steel from Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1502-thungrim-firegaze" },
            complete = QuestState(1503, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "turnin-1503-forged-steel",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Forged Steel to Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1503-forged-steel" },
            complete = QuestState(1503, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Dillinger from Austil de Mon in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(1818, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Austil de Mon",
                    "Travel to Austil de Mon in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Dillinger to Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-1818-speak-with-dillinger" },
            complete = QuestState(1818, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger in Tirisfal Glades."),
            },
        },
        {
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ulag the Cleaver from Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-1818-speak-with-dillinger" },
            complete = QuestState(1819, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ulag the Cleaver to Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            complete = QuestState(1819, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger in Tirisfal Glades."),
            },
        },
        {
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Coleman from Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-1819-ulag-the-cleaver", "turnin-1818-speak-with-dillinger" },
            complete = QuestState(1820, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Coleman to Coleman Farthing in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-1820-speak-with-coleman" },
            complete = QuestState(1820, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Coleman Farthing",
                    "Travel to Coleman Farthing in Tirisfal Glades."),
            },
        },
        {
            id = "accept-1821-agamand-heirlooms",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Agamand Heirlooms from Coleman Farthing in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "turnin-1820-speak-with-coleman" },
            complete = QuestState(1821, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Coleman Farthing",
                    "Travel to Coleman Farthing in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1821-agamand-heirlooms",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 5 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Agamand Heirlooms to Coleman Farthing in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-1821-agamand-heirlooms" },
            complete = QuestState(1821, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Coleman Farthing",
                    "Travel to Coleman Farthing in Tirisfal Glades."),
            },
        },
        {
            id = "accept-2383-simple-parchment",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 2 },
                },
            },
            text = "Accept Simple Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(2383, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-2383-simple-parchment",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 2 },
                },
            },
            text = "Turn in Simple Parchment to Frang in Durotar. This step is for Orcs.",
            dependsOn = { "accept-2383-simple-parchment" },
            complete = QuestState(2383, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6940, "Frang",
                    "Travel to Frang in Durotar."),
            },
        },
        {
            id = "accept-3065-simple-tablet",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 8 },
                },
            },
            text = "Accept Simple Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3065, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3065-simple-tablet",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 8 },
                },
            },
            text = "Turn in Simple Tablet to Frang in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3065-simple-tablet" },
            complete = QuestState(3065, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4280, 0.6940, "Frang",
                    "Travel to Frang in Durotar."),
            },
        },
        {
            id = "accept-3091-simple-note",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 6 },
                },
            },
            text = "Accept Simple Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
            complete = QuestState(3091, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7720, "Grull Hawkwind",
                    "Travel to Grull Hawkwind in Mulgore."),
            },
        },
        {
            id = "turnin-3091-simple-note",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = 6 },
                },
            },
            text = "Turn in Simple Note to Harutt Thunderhorn in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-3091-simple-note" },
            complete = QuestState(3091, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4400, 0.7600, "Harutt Thunderhorn",
                    "Travel to Harutt Thunderhorn in Mulgore."),
            },
        },
        {
            id = "accept-3095-simple-scroll",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 5 } },
                },
            },
            text = "Accept Simple Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Orcs and Undead.",
            complete = QuestState(3095, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-3095-simple-scroll",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { race = { 2, 5 } },
                },
            },
            text = "Turn in Simple Scroll to Dannal Stern in Tirisfal Glades. This step is for Orcs and Undead.",
            dependsOn = { "accept-3095-simple-scroll" },
            complete = QuestState(3095, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3260, 0.6560, "Dannal Stern",
                    "Travel to Dannal Stern in Tirisfal Glades."),
            },
        },
        {
            id = "accept-3100-simple-letter",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                },
            },
            text = "Accept Simple Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3100, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3100-simple-letter",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                },
            },
            text = "Turn in Simple Letter to Llane Beshere in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3100-simple-letter" },
            complete = QuestState(3100, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.5020, 0.4220, "Llane Beshere",
                    "Travel to Llane Beshere in Elwynn Forest."),
            },
        },
        {
            id = "accept-3106-simple-rune",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                },
            },
            text = "Accept Simple Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves and Gnomes.",
            complete = QuestState(3106, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3106-simple-rune",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                },
            },
            text = "Turn in Simple Rune to Thran Khorman in Dun Morogh. This step is for Dwarves and Gnomes.",
            dependsOn = { "accept-3106-simple-rune" },
            complete = QuestState(3106, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6720, "Thran Khorman",
                    "Travel to Thran Khorman in Dun Morogh."),
            },
        },
        {
            id = "accept-3112-simple-memorandum",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 1, 7 } },
                },
            },
            text = "Accept Simple Memorandum from Sten Stoutarm in Dun Morogh. This step is for Humans and Gnomes.",
            complete = QuestState(3112, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3112-simple-memorandum",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 1, 7 } },
                },
            },
            text = "Turn in Simple Memorandum to Thran Khorman in Dun Morogh. This step is for Humans and Gnomes.",
            dependsOn = { "accept-3112-simple-memorandum" },
            complete = QuestState(3112, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6720, "Thran Khorman",
                    "Travel to Thran Khorman in Dun Morogh."),
            },
        },
        {
            id = "accept-3116-simple-sigil",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 1, 4 } },
                },
            },
            text = "Accept Simple Sigil from Conservator Ilthalaine in Teldrassil. This step is for Humans and Night Elves.",
            complete = QuestState(3116, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5860, 0.4420, "Conservator Ilthalaine",
                    "Travel to Conservator Ilthalaine in Teldrassil."),
            },
        },
        {
            id = "turnin-3116-simple-sigil",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 1, 4 } },
                },
            },
            text = "Turn in Simple Sigil to Alyissia in Teldrassil. This step is for Humans and Night Elves.",
            dependsOn = { "accept-3116-simple-sigil" },
            complete = QuestState(3116, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5960, 0.3840, "Alyissia",
                    "Travel to Alyissia in Teldrassil."),
            },
        },
        {
            id = "accept-1666-marshal-haggard",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Marshal Haggard from Harry Burlguard in Stormwind City.",
            complete = QuestState(1666, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7400, 0.3720, "Harry Burlguard",
                    "Travel to Harry Burlguard in Stormwind City."),
            },
        },
        {
            id = "turnin-1666-marshal-haggard",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Marshal Haggard to Marshal Haggard in Elwynn Forest.",
            dependsOn = { "accept-1666-marshal-haggard" },
            complete = QuestState(1666, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.8460, 0.6940, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "accept-1667-dead-tooth-jack",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Dead-tooth Jack from Marshal Haggard in Elwynn Forest.",
            dependsOn = { "turnin-1666-marshal-haggard" },
            complete = QuestState(1667, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.8460, 0.6940, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "objective-1667-dead-tooth-jack",
            kind = "objective",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Dead-tooth Jack: Dead-tooth's Key.",
            dependsOn = { "accept-1667-dead-tooth-jack" },
            complete = QuestState(1667, "complete"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.8920, 0.7900, "Dead-Tooth Jack",
                    "Travel to Dead-Tooth Jack in Elwynn Forest."),
            },
        },
        {
            id = "turnin-1667-dead-tooth-jack",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Dead-tooth Jack to Marshal Haggard in Elwynn Forest.",
            dependsOn = { "objective-1667-dead-tooth-jack" },
            complete = QuestState(1667, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.8460, 0.6940, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "accept-1680-tormus-deepforge",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Tormus Deepforge from Muren Stormpike in Ironforge.",
            dependsOn = { "turnin-1678-vejrek" },
            complete = QuestState(1680, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.7060, 0.9040, "Muren Stormpike",
                    "Travel to Muren Stormpike in Ironforge."),
            },
        },
        {
            id = "turnin-1680-tormus-deepforge",
            kind = "turnin",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Tormus Deepforge to Tormus Deepforge in Ironforge.",
            dependsOn = { "accept-1680-tormus-deepforge" },
            complete = QuestState(1680, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4860, 0.4300, "Tormus Deepforge",
                    "Travel to Tormus Deepforge in Ironforge."),
            },
        },
        {
            id = "accept-1681-ironbands-compound",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ironband's Compound from Tormus Deepforge in Ironforge.",
            dependsOn = { "turnin-1680-tormus-deepforge" },
            complete = QuestState(1681, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4860, 0.4300, "Tormus Deepforge",
                    "Travel to Tormus Deepforge in Ironforge."),
            },
        },
        {
            id = "turnin-1681-ironbands-compound",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ironband's Compound to Tormus Deepforge in Ironforge.",
            dependsOn = { "accept-1681-ironbands-compound" },
            complete = QuestState(1681, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4860, 0.4300, "Tormus Deepforge",
                    "Travel to Tormus Deepforge in Ironforge."),
            },
        },
        {
            id = "accept-1682-grey-iron-weapons",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Grey Iron Weapons from Tormus Deepforge in Ironforge.",
            complete = QuestState(1682, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4860, 0.4300, "Tormus Deepforge",
                    "Travel to Tormus Deepforge in Ironforge."),
            },
        },
        {
            id = "turnin-1682-grey-iron-weapons",
            kind = "turnin",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Grey Iron Weapons to Tormus Deepforge in Ironforge.",
            dependsOn = { "accept-1682-grey-iron-weapons" },
            complete = QuestState(1682, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.4860, 0.4300, "Tormus Deepforge",
                    "Travel to Tormus Deepforge in Ironforge."),
            },
        },
        {
            id = "accept-1686-the-shade-of-elura",
            kind = "accept",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Shade of Elura from Elanaria in Darnassus.",
            complete = QuestState(1686, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "turnin-1686-the-shade-of-elura",
            kind = "turnin",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Shade of Elura to Elanaria in Darnassus.",
            dependsOn = { "accept-1686-the-shade-of-elura" },
            complete = QuestState(1686, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "accept-1692-smith-mathiel",
            kind = "accept",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Smith Mathiel from Elanaria in Darnassus.",
            dependsOn = { "turnin-1686-the-shade-of-elura" },
            complete = QuestState(1692, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5740, 0.3480, "Elanaria",
                    "Travel to Elanaria in Darnassus."),
            },
        },
        {
            id = "turnin-1692-smith-mathiel",
            kind = "turnin",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Smith Mathiel to Mathiel in Darnassus.",
            dependsOn = { "accept-1692-smith-mathiel" },
            complete = QuestState(1692, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "accept-1693-weapons-of-elunite",
            kind = "accept",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Weapons of Elunite from Mathiel in Darnassus.",
            complete = QuestState(1693, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "turnin-1693-weapons-of-elunite",
            kind = "turnin",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Weapons of Elunite to Mathiel in Darnassus.",
            dependsOn = { "accept-1693-weapons-of-elunite" },
            complete = QuestState(1693, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "accept-1822-heirloom-weapon",
            kind = "accept",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Heirloom Weapon from Coleman Farthing in Tirisfal Glades.",
            complete = QuestState(1822, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Coleman Farthing",
                    "Travel to Coleman Farthing in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1822-heirloom-weapon",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Heirloom Weapon to Coleman Farthing in Tirisfal Glades.",
            dependsOn = { "accept-1822-heirloom-weapon" },
            complete = QuestState(1822, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Coleman Farthing",
                    "Travel to Coleman Farthing in Tirisfal Glades."),
            },
        },
        {
            id = "accept-1698-yorus-barleybrew",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Yorus Barleybrew from Wu Shen in Stormwind City.",
            complete = QuestState(1698, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.7880, 0.4560, "Wu Shen",
                    "Travel to Wu Shen in Stormwind City.", { map = { MAP.IRONFORGE, MAP.DARNASSUS } }),
                Point(MAP.IRONFORGE, 0.7000, 0.9060, "Kelv Sternhammer",
                    "Travel to Kelv Sternhammer in Ironforge.", { map = { MAP.DARNASSUS } }),
                Point(MAP.DARNASSUS, 0.5860, 0.3540, "Darnath Bladesinger",
                    "Travel to Darnath Bladesinger in Darnassus."),
            },
        },
        {
            id = "turnin-1698-yorus-barleybrew",
            kind = "turnin",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Yorus Barleybrew to Yorus Barleybrew in Redridge Mountains.",
            dependsOn = { "accept-1698-yorus-barleybrew" },
            complete = QuestState(1698, "completed"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2660, 0.4480, "Yorus Barleybrew",
                    "Travel to Yorus Barleybrew in Redridge Mountains."),
            },
        },
        {
            id = "accept-1699-the-rethban-gauntlet",
            kind = "accept",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Rethban Gauntlet from Yorus Barleybrew in Redridge Mountains.",
            dependsOn = { "turnin-1698-yorus-barleybrew" },
            complete = QuestState(1699, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2660, 0.4480, "Yorus Barleybrew",
                    "Travel to Yorus Barleybrew in Redridge Mountains."),
            },
        },
        {
            id = "turnin-1699-the-rethban-gauntlet",
            kind = "turnin",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Rethban Gauntlet to Yorus Barleybrew in Redridge Mountains.",
            dependsOn = { "accept-1699-the-rethban-gauntlet" },
            complete = QuestState(1699, "completed"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2660, 0.4480, "Yorus Barleybrew",
                    "Travel to Yorus Barleybrew in Redridge Mountains."),
            },
        },
        {
            id = "accept-1700-grimand-elmore",
            kind = "accept",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Grimand Elmore from Furen Longbeard in Stormwind City. This step is for Humans.",
            complete = QuestState(1700, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "turnin-1700-grimand-elmore",
            kind = "turnin",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Grimand Elmore to Grimand Elmore in Stormwind City. This step is for Humans.",
            dependsOn = { "accept-1700-grimand-elmore" },
            complete = QuestState(1700, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "accept-1702-the-shieldsmith",
            kind = "accept",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Shieldsmith from Yorus Barleybrew in Redridge Mountains.",
            complete = QuestState(1702, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGEMOUNTAINS, 0.2660, 0.4480, "Yorus Barleybrew",
                    "Travel to Yorus Barleybrew in Redridge Mountains."),
            },
        },
        {
            id = "turnin-1702-the-shieldsmith",
            kind = "turnin",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Shieldsmith to Furen Longbeard in Stormwind City.",
            dependsOn = { "accept-1702-the-shieldsmith" },
            complete = QuestState(1702, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "accept-1701-fire-hardened-mail",
            kind = "accept",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Fire Hardened Mail from Furen Longbeard in Stormwind City.",
            dependsOn = { "turnin-1702-the-shieldsmith" },
            complete = QuestState(1701, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "turnin-1701-fire-hardened-mail",
            kind = "turnin",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Fire Hardened Mail to Furen Longbeard in Stormwind City.",
            dependsOn = { "accept-1701-fire-hardened-mail" },
            complete = QuestState(1701, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "accept-1703-mathiel",
            kind = "accept",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Mathiel from Furen Longbeard in Stormwind City. This step is for Night Elves.",
            complete = QuestState(1703, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "turnin-1703-mathiel",
            kind = "turnin",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = 4 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Mathiel to Mathiel in Darnassus. This step is for Night Elves.",
            dependsOn = { "accept-1703-mathiel" },
            complete = QuestState(1703, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "accept-1704-klockmort-spannerspan",
            kind = "accept",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Klockmort Spannerspan from Furen Longbeard in Stormwind City. This step is for Dwarves and Gnomes.",
            complete = QuestState(1704, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5800, 0.1680, "Furen Longbeard",
                    "Travel to Furen Longbeard in Stormwind City."),
            },
        },
        {
            id = "turnin-1704-klockmort-spannerspan",
            kind = "turnin",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { race = { 3, 7 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Klockmort Spannerspan to Klockmort Spannerspan in Ironforge. This step is for Dwarves and Gnomes.",
            dependsOn = { "accept-1704-klockmort-spannerspan" },
            complete = QuestState(1704, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.6820, 0.4620, "Klockmort Spannerspan",
                    "Travel to Klockmort Spannerspan in Ironforge."),
            },
        },
        {
            id = "accept-1705-burning-blood",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Burning Blood from Grimand Elmore in Stormwind City.",
            dependsOn = { "turnin-1700-grimand-elmore" },
            complete = QuestState(1705, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "turnin-1705-burning-blood",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Burning Blood to Grimand Elmore in Stormwind City.",
            dependsOn = { "accept-1705-burning-blood" },
            complete = QuestState(1705, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "accept-1706-grimands-armor",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Grimand's Armor from Grimand Elmore in Stormwind City.",
            complete = QuestState(1706, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "turnin-1706-grimands-armor",
            kind = "turnin",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Grimand's Armor to Grimand Elmore in Stormwind City.",
            dependsOn = { "accept-1706-grimands-armor" },
            complete = QuestState(1706, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.5160, 0.1220, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "accept-1708-iron-coral",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Iron Coral from Klockmort Spannerspan in Ironforge.",
            dependsOn = { "turnin-1704-klockmort-spannerspan" },
            complete = QuestState(1708, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.6820, 0.4620, "Klockmort Spannerspan",
                    "Travel to Klockmort Spannerspan in Ironforge."),
            },
        },
        {
            id = "turnin-1708-iron-coral",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Iron Coral to Klockmort Spannerspan in Ironforge.",
            dependsOn = { "accept-1708-iron-coral" },
            complete = QuestState(1708, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.6820, 0.4620, "Klockmort Spannerspan",
                    "Travel to Klockmort Spannerspan in Ironforge."),
            },
        },
        {
            id = "accept-1709-klockmorts-creation",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Klockmort's Creation from Klockmort Spannerspan in Ironforge.",
            complete = QuestState(1709, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.6820, 0.4620, "Klockmort Spannerspan",
                    "Travel to Klockmort Spannerspan in Ironforge."),
            },
        },
        {
            id = "turnin-1709-klockmorts-creation",
            kind = "turnin",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Klockmort's Creation to Klockmort Spannerspan in Ironforge.",
            dependsOn = { "accept-1709-klockmorts-creation" },
            complete = QuestState(1709, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.6820, 0.4620, "Klockmort Spannerspan",
                    "Travel to Klockmort Spannerspan in Ironforge."),
            },
        },
        {
            id = "accept-1710-sunscorched-shells",
            kind = "accept",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Sunscorched Shells from Mathiel in Darnassus.",
            dependsOn = { "turnin-1703-mathiel" },
            complete = QuestState(1710, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "turnin-1710-sunscorched-shells",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Sunscorched Shells to Mathiel in Darnassus.",
            dependsOn = { "accept-1710-sunscorched-shells" },
            complete = QuestState(1710, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "accept-1711-mathiels-armor",
            kind = "accept",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Mathiel's Armor from Mathiel in Darnassus.",
            complete = QuestState(1711, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "turnin-1711-mathiels-armor",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Mathiel's Armor to Mathiel in Darnassus.",
            dependsOn = { "accept-1711-mathiels-armor" },
            complete = QuestState(1711, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.5920, 0.4540, "Mathiel",
                    "Travel to Mathiel in Darnassus."),
            },
        },
        {
            id = "accept-1823-speak-with-ruga",
            kind = "accept",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Speak with Ruga from Baltus Fowler in Undercity.",
            complete = QuestState(1823, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.4720, 0.1700, "Baltus Fowler",
                    "Travel to Baltus Fowler in Undercity.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.ORGRIMMAR, 0.8020, 0.3240, "Sorek",
                    "Travel to Sorek in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.5760, 0.8720, "Torm Ragetotem",
                    "Travel to Torm Ragetotem in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1823-speak-with-ruga",
            kind = "turnin",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Speak with Ruga to Ruga Ragetotem in The Barrens.",
            dependsOn = { "accept-1823-speak-with-ruga" },
            complete = QuestState(1823, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5940, "Ruga Ragetotem",
                    "Travel to Ruga Ragetotem in The Barrens."),
            },
        },
        {
            id = "accept-1824-trial-at-the-field-of-giants",
            kind = "accept",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Trial at the Field of Giants from Ruga Ragetotem in The Barrens.",
            dependsOn = { "turnin-1823-speak-with-ruga" },
            complete = QuestState(1824, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5940, "Ruga Ragetotem",
                    "Travel to Ruga Ragetotem in The Barrens."),
            },
        },
        {
            id = "objective-1824-trial-at-the-field-of-giants",
            kind = "objective",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Trial at the Field of Giants: Twitching Antenna.",
            dependsOn = { "accept-1824-trial-at-the-field-of-giants" },
            complete = QuestState(1824, "complete"),
            route = {
                Point(MAP.BARRENS, 0.4540, 0.6940, "Silithid Creeper",
                    "Travel to Silithid Creeper in The Barrens."),
                Point(MAP.BARRENS, 0.4520, 0.6940, "Silithid Grub",
                    "Travel to Silithid Grub in The Barrens."),
                Point(MAP.BARRENS, 0.4520, 0.6880, "Silithid Swarmer",
                    "Travel to Silithid Swarmer in The Barrens."),
                Point(MAP.BARRENS, 0.4780, 0.7020, "Silithid Harvester",
                    "Travel to Silithid Harvester in The Barrens."),
                Point(MAP.BARRENS, 0.4340, 0.7040, "Silithid Protector",
                    "Travel to Silithid Protector in The Barrens."),
            },
        },
        {
            id = "turnin-1824-trial-at-the-field-of-giants",
            kind = "turnin",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Trial at the Field of Giants to Ruga Ragetotem in The Barrens.",
            dependsOn = { "objective-1824-trial-at-the-field-of-giants" },
            complete = QuestState(1824, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5940, "Ruga Ragetotem",
                    "Travel to Ruga Ragetotem in The Barrens."),
            },
        },
        {
            id = "accept-1825-speak-with-thungrim",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Speak with Thun'grim from Ruga Ragetotem in The Barrens.",
            dependsOn = { "turnin-1824-trial-at-the-field-of-giants" },
            complete = QuestState(1825, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4460, 0.5940, "Ruga Ragetotem",
                    "Travel to Ruga Ragetotem in The Barrens."),
            },
        },
        {
            id = "turnin-1825-speak-with-thungrim",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Speak with Thun'grim to Thun'grim Firegaze in The Barrens.",
            dependsOn = { "accept-1825-speak-with-thungrim" },
            complete = QuestState(1825, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "accept-1838-brutal-armor",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Brutal Armor from Thun'grim Firegaze in The Barrens.",
            dependsOn = { "turnin-1825-speak-with-thungrim" },
            complete = QuestState(1838, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "objective-1838-brutal-armor",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Brutal Armor: Iron Bar.",
            dependsOn = { "accept-1838-brutal-armor" },
            complete = QuestState(1838, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.3020, 0.7980, "Fel Interloper",
                    "Travel to Fel Interloper in Azshara.", { map = { MAP.BARRENS, MAP.ASHENVALE, MAP.FERALAS, MAP.BLASTEDLANDS, MAP.DESOLACE, MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.BARRENS, 0.5020, 0.8060, "Fel Interloper",
                    "Travel to Fel Interloper in The Barrens.", { map = { MAP.ASHENVALE, MAP.FERALAS, MAP.BLASTEDLANDS, MAP.DESOLACE, MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.ASHENVALE, 0.7720, 0.7320, "Fel Interloper",
                    "Travel to Fel Interloper in Ashenvale.", { map = { MAP.FERALAS, MAP.BLASTEDLANDS, MAP.DESOLACE, MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.FERALAS, 0.7420, 0.5060, "Fel Interloper",
                    "Travel to Fel Interloper in Feralas.", { map = { MAP.BLASTEDLANDS, MAP.DESOLACE, MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.BLASTEDLANDS, 0.6220, 0.3900, "Fel Interloper",
                    "Travel to Fel Interloper in Blasted Lands.", { map = { MAP.DESOLACE, MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.DESOLACE, 0.4880, 0.8200, "Fel Interloper",
                    "Travel to Fel Interloper in Desolace.", { map = { MAP.REDRIDGEMOUNTAINS, MAP.SWAMPOFSORROWS } }),
                Point(MAP.REDRIDGEMOUNTAINS, 0.2980, 0.3000, "Fel Interloper",
                    "Travel to Fel Interloper in Redridge Mountains.", { map = { MAP.SWAMPOFSORROWS } }),
                Point(MAP.SWAMPOFSORROWS, 0.3620, 0.5000, "Fel Interloper",
                    "Travel to Fel Interloper in Swamp of Sorrows."),
            },
        },
        {
            id = "turnin-1838-brutal-armor",
            kind = "turnin",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Brutal Armor to Thun'grim Firegaze in The Barrens.",
            dependsOn = { "objective-1838-brutal-armor" },
            complete = QuestState(1838, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "accept-1839-ulaelek-and-the-brutal-gauntlets",
            kind = "accept",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Ula'elek and the Brutal Gauntlets from Thun'grim Firegaze in The Barrens.",
            complete = QuestState(1839, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "turnin-1839-ulaelek-and-the-brutal-gauntlets",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Ula'elek and the Brutal Gauntlets to Ula'elek in Durotar.",
            dependsOn = { "accept-1839-ulaelek-and-the-brutal-gauntlets" },
            complete = QuestState(1839, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7440, "Ula'elek",
                    "Travel to Ula'elek in Durotar."),
            },
        },
        {
            id = "accept-1840-orm-stonehoof-and-the-brutal-helm",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Orm Stonehoof and the Brutal Helm from Thun'grim Firegaze in The Barrens.",
            complete = QuestState(1840, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "turnin-1840-orm-stonehoof-and-the-brutal-helm",
            kind = "turnin",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Orm Stonehoof and the Brutal Helm to Orm Stonehoof in Thunder Bluff.",
            dependsOn = { "accept-1840-orm-stonehoof-and-the-brutal-helm" },
            complete = QuestState(1840, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3900, 0.5580, "Orm Stonehoof",
                    "Travel to Orm Stonehoof in Thunder Bluff."),
            },
        },
        {
            id = "accept-1841-velora-nitely-and-the-brutal-legguards",
            kind = "accept",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Velora Nitely and the Brutal Legguards from Thun'grim Firegaze in The Barrens.",
            complete = QuestState(1841, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "turnin-1841-velora-nitely-and-the-brutal-legguards",
            kind = "turnin",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Velora Nitely and the Brutal Legguards to Velora Nitely in Undercity.",
            dependsOn = { "accept-1841-velora-nitely-and-the-brutal-legguards" },
            complete = QuestState(1841, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6240, 0.3920, "Velora Nitely",
                    "Travel to Velora Nitely in Undercity."),
            },
        },
        {
            id = "accept-1842-satyr-hooves",
            kind = "accept",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Satyr Hooves from Ula'elek in Durotar.",
            dependsOn = { "turnin-1839-ulaelek-and-the-brutal-gauntlets" },
            complete = QuestState(1842, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7440, "Ula'elek",
                    "Travel to Ula'elek in Durotar."),
            },
        },
        {
            id = "turnin-1842-satyr-hooves",
            kind = "turnin",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Satyr Hooves to Ula'elek in Durotar.",
            dependsOn = { "accept-1842-satyr-hooves" },
            complete = QuestState(1842, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7440, "Ula'elek",
                    "Travel to Ula'elek in Durotar."),
            },
        },
        {
            id = "accept-1843-brutal-gauntlets",
            kind = "accept",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Brutal Gauntlets from Ula'elek in Durotar.",
            complete = QuestState(1843, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7440, "Ula'elek",
                    "Travel to Ula'elek in Durotar."),
            },
        },
        {
            id = "turnin-1843-brutal-gauntlets",
            kind = "turnin",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Brutal Gauntlets to Ula'elek in Durotar.",
            dependsOn = { "accept-1843-brutal-gauntlets" },
            complete = QuestState(1843, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7440, "Ula'elek",
                    "Travel to Ula'elek in Durotar."),
            },
        },
        {
            id = "accept-1844-chimaeric-horn",
            kind = "accept",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Chimaeric Horn from Orm Stonehoof in Thunder Bluff.",
            dependsOn = { "turnin-1840-orm-stonehoof-and-the-brutal-helm" },
            complete = QuestState(1844, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3900, 0.5580, "Orm Stonehoof",
                    "Travel to Orm Stonehoof in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1844-chimaeric-horn",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Chimaeric Horn to Orm Stonehoof in Thunder Bluff.",
            dependsOn = { "accept-1844-chimaeric-horn" },
            complete = QuestState(1844, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3900, 0.5580, "Orm Stonehoof",
                    "Travel to Orm Stonehoof in Thunder Bluff."),
            },
        },
        {
            id = "accept-1845-brutal-helm",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Brutal Helm from Orm Stonehoof in Thunder Bluff.",
            complete = QuestState(1845, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3900, 0.5580, "Orm Stonehoof",
                    "Travel to Orm Stonehoof in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1845-brutal-helm",
            kind = "turnin",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Brutal Helm to Orm Stonehoof in Thunder Bluff.",
            dependsOn = { "accept-1845-brutal-helm" },
            complete = QuestState(1845, "completed"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.3900, 0.5580, "Orm Stonehoof",
                    "Travel to Orm Stonehoof in Thunder Bluff."),
            },
        },
        {
            id = "accept-1846-dragonmaw-shinbones",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Dragonmaw Shinbones from Velora Nitely in Undercity.",
            dependsOn = { "turnin-1841-velora-nitely-and-the-brutal-legguards" },
            complete = QuestState(1846, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6240, 0.3920, "Velora Nitely",
                    "Travel to Velora Nitely in Undercity."),
            },
        },
        {
            id = "turnin-1846-dragonmaw-shinbones",
            kind = "turnin",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Dragonmaw Shinbones to Velora Nitely in Undercity.",
            dependsOn = { "accept-1846-dragonmaw-shinbones" },
            complete = QuestState(1846, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6240, 0.3920, "Velora Nitely",
                    "Travel to Velora Nitely in Undercity."),
            },
        },
        {
            id = "accept-1847-brutal-legguards",
            kind = "accept",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Brutal Legguards from Velora Nitely in Undercity.",
            complete = QuestState(1847, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.6240, 0.3920, "Velora Nitely",
                    "Travel to Velora Nitely in Undercity."),
            },
        },
        {
            id = "turnin-1847-brutal-legguards",
            kind = "turnin",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Brutal Legguards to Velora Nitely in Undercity.",
            dependsOn = { "accept-1847-brutal-legguards" },
            complete = QuestState(1847, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6240, 0.3920, "Velora Nitely",
                    "Travel to Velora Nitely in Undercity."),
            },
        },
        {
            id = "accept-1848-brutal-hauberk",
            kind = "accept",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Brutal Hauberk from Thun'grim Firegaze in The Barrens.",
            complete = QuestState(1848, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        },
        {
            id = "turnin-1848-brutal-hauberk",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 1 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Brutal Hauberk to Thun'grim Firegaze in The Barrens.",
            dependsOn = { "accept-1848-brutal-hauberk" },
            complete = QuestState(1848, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5720, 0.3020, "Thun'grim Firegaze",
                    "Travel to Thun'grim Firegaze in The Barrens."),
            },
        }
    },
})
