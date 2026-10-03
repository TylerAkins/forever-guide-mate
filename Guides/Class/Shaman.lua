local _, ns = ...

-- Shaman class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- Archaic Rune
-- Embracing the Elements
-- Call of Earth
-- Call of Earth
-- Call of Earth
-- Earth Sapta
-- Call of Fire
-- Call of Fire
-- Call of Fire
-- Call of Fire
-- Call of Fire
-- Fire Sapta
-- Call of Fire
-- Call of Fire
-- Call of Fire
-- Call of Fire
-- Call of Water
-- Call of Water
-- Call of Water
-- Call of Water
-- Call of Water
-- Call of Water
-- Water Sapta
-- Call of Water
-- Left out (dungeon quest): The Darkreaver Menace, Da Voodoo
-- Left out (needs 94503, which is not on this route): Call of Water
-- Left out (no start pin): Clarifying Air, Answering Air's Call, Heavy Metal, A Particular Set of Skills, Efficiency Is Priority One, Commit to Quality, Purifying Fire, Purging Earth, Cleansing Water, Answering Fire's Call, Answering Earth's Call, Answering Water's Call (+8 more)

local MAP = {
    ALTERACMOUNTAINS = 1416,
    AZSHARA = 1447,
    BARRENS = 1413,
    BLASTEDLANDS = 1419,
    BURNINGSTEPPES = 1428,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    EASTERNPLAGUELANDS = 1423,
    HINTERLANDS = 1425,
    IRONFORGE = 1455,
    LOCHMODAN = 1432,
    MULGORE = 1412,
    ORGRIMMAR = 1454,
    SILVERPINEFOREST = 1421,
    TANARIS = 1446,
    THOUSANDNEEDLES = 1441,
    THUNDERBLUFF = 1456,
    WESTERNPLAGUELANDS = 1422,
    WETLANDS = 1437,
    WINTERSPRING = 1452,
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
    id = "class-shaman",
    title = "Shaman",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 7 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-98581-archaic-rune",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { race = 3 },
                },
            },
            text = "Accept Archaic Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
            complete = QuestState(98581, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-98581-archaic-rune",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { race = 3 },
                },
            },
            text = "Turn in Archaic Rune to Teo Hammerstorm in Dun Morogh. This step is for Dwarves.",
            dependsOn = { "accept-98581-archaic-rune" },
            complete = QuestState(98581, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "accept-92461-harmony-in-balance",
            kind = "accept",
            priority = 27,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
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
                    { faction = "Horde" },
                    { class = 7 },
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
                    { faction = "Horde" },
                    { class = 7 },
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
            id = "accept-92484-embracing-the-elements",
            kind = "accept",
            priority = 30,
            dependsOn = { "turnin-92461-harmony-in-balance" },
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Embracing the Elements from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92484, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92484-embracing-the-elements",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Embracing the Elements to Windshaper Boro in Zephras Isle.",
            dependsOn = { "accept-92484-embracing-the-elements" },
            complete = QuestState(92484, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4280, 0.2360, "Windshaper Boro",
                    "Travel to Windshaper Boro in Zephras Isle."),
            },
        },
        {
            id = "accept-1519-call-of-earth",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Seer Ravenfeather in Mulgore. This step is for Orcs and Tauren.",
            complete = QuestState(1519, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "objective-1519-call-of-earth",
            kind = "objective",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6 } },
                    { level = { min = 4 } },
                },
            },
            text = "Call of Earth: Ritual Salve. This step is for Orcs and Tauren.",
            dependsOn = { "accept-1519-call-of-earth" },
            complete = QuestState(1519, "complete"),
            route = {
                Point(MAP.MULGORE, 0.6460, 0.7780, "Bristleback Shaman",
                    "Travel to Bristleback Shaman in Mulgore."),
            },
        },
        {
            id = "turnin-1519-call-of-earth",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Seer Ravenfeather in Mulgore. This step is for Orcs and Tauren.",
            dependsOn = { "objective-1519-call-of-earth" },
            complete = QuestState(1519, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "accept-1520-call-of-earth",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Seer Ravenfeather in Mulgore. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1519-call-of-earth" },
            complete = QuestState(1520, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "turnin-1520-call-of-earth",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Minor Manifestation of Earth in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1520-call-of-earth" },
            complete = QuestState(1520, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "accept-1521-call-of-earth",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1520-call-of-earth" },
            complete = QuestState(1521, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "turnin-1521-call-of-earth",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Seer Ravenfeather in Mulgore. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1521-call-of-earth" },
            complete = QuestState(1521, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "accept-1516-call-of-earth",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Canaga Earthcaller in Durotar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1516, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "objective-1516-call-of-earth",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Call of Earth: Felstalker Hoof. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1516-call-of-earth" },
            complete = QuestState(1516, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.4520, 0.5500, "Felstalker",
                    "Travel to Felstalker in Durotar."),
            },
        },
        {
            id = "turnin-1516-call-of-earth",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Canaga Earthcaller in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "objective-1516-call-of-earth" },
            complete = QuestState(1516, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "accept-1517-call-of-earth",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Canaga Earthcaller in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1516-call-of-earth" },
            complete = QuestState(1517, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "turnin-1517-call-of-earth",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Minor Manifestation of Earth in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1517-call-of-earth" },
            complete = QuestState(1517, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "accept-1518-call-of-earth",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1517-call-of-earth" },
            complete = QuestState(1518, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "turnin-1518-call-of-earth",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Canaga Earthcaller in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1518-call-of-earth" },
            complete = QuestState(1518, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "accept-94373-call-of-earth",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Dun Morogh.",
            complete = QuestState(94373, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "objective-94373-call-of-earth",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Call of Earth: Iceclaw Bear Pendant.",
            dependsOn = { "accept-94373-call-of-earth" },
            complete = QuestState(94373, "complete"),
            route = {
                Point(MAP.DUNMOROGH, 0.2740, 0.8080, "Frostmane Troll Whelp",
                    "Travel to Frostmane Troll Whelp in Dun Morogh."),
                Point(MAP.DUNMOROGH, 0.3040, 0.7940, "Frostmane Novice",
                    "Travel to Frostmane Novice in Dun Morogh."),
            },
        },
        {
            id = "turnin-94373-call-of-earth",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Dun Morogh.",
            dependsOn = { "objective-94373-call-of-earth" },
            complete = QuestState(94373, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "accept-94374-call-of-earth",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Dun Morogh.",
            dependsOn = { "turnin-94373-call-of-earth" },
            complete = QuestState(94374, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "turnin-94374-call-of-earth",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Minor Manifestation of Earth in Durotar.",
            dependsOn = { "accept-94374-call-of-earth" },
            complete = QuestState(94374, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "accept-94375-call-of-earth",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth in Durotar.",
            dependsOn = { "turnin-94374-call-of-earth" },
            complete = QuestState(94375, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4400, 0.7600, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Durotar.", { map = { MAP.MULGORE } }),
                Point(MAP.MULGORE, 0.5380, 0.8040, "Minor Manifestation of Earth",
                    "Travel to Minor Manifestation of Earth in Mulgore."),
            },
        },
        {
            id = "turnin-94375-call-of-earth",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Dun Morogh.",
            dependsOn = { "accept-94375-call-of-earth" },
            complete = QuestState(94375, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "accept-94472-earth-sapta",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Earth Sapta from Teo Hammerstorm in Dun Morogh.",
            complete = QuestState(94472, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "turnin-94472-earth-sapta",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Earth Sapta to Teo Hammerstorm in Dun Morogh.",
            dependsOn = { "accept-94472-earth-sapta" },
            complete = QuestState(94472, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2880, 0.6620, "Teo Hammerstorm",
                    "Travel to Teo Hammerstorm in Dun Morogh."),
            },
        },
        {
            id = "accept-94449-call-of-fire",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Ingrid Dunwald in Dun Morogh.",
            complete = QuestState(94449, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4740, 0.5200, "Ingrid Dunwald",
                    "Travel to Ingrid Dunwald in Dun Morogh.", { map = { MAP.IRONFORGE } }),
                Point(MAP.IRONFORGE, 0.4740, 0.1360, "Eldrun Stormbreaker",
                    "Travel to Eldrun Stormbreaker in Ironforge."),
            },
        },
        {
            id = "turnin-94449-call-of-fire",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Bruegs Kindleborn in Dun Morogh.",
            dependsOn = { "accept-94449-call-of-fire" },
            complete = QuestState(94449, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.8760, 0.4360, "Bruegs Kindleborn",
                    "Travel to Bruegs Kindleborn in Dun Morogh."),
            },
        },
        {
            id = "accept-94465-call-of-fire",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Bruegs Kindleborn in Dun Morogh.",
            dependsOn = { "turnin-94449-call-of-fire" },
            complete = QuestState(94465, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.8760, 0.4360, "Bruegs Kindleborn",
                    "Travel to Bruegs Kindleborn in Dun Morogh."),
            },
        },
        {
            id = "turnin-94465-call-of-fire",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Braldir Ashmantle in Loch Modan.",
            dependsOn = { "accept-94465-call-of-fire" },
            complete = QuestState(94465, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "accept-94466-call-of-fire",
            kind = "accept",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Braldir Ashmantle in Loch Modan.",
            dependsOn = { "turnin-94465-call-of-fire" },
            complete = QuestState(94466, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "objective-94466-call-of-fire",
            kind = "objective",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Call of Fire: Reagent Pouch.",
            dependsOn = { "accept-94466-call-of-fire" },
            complete = QuestState(94466, "complete"),
            route = {
                Point(MAP.LOCHMODAN, 0.3480, 0.8440, "Stonesplinter Seer",
                    "Travel to Stonesplinter Seer in Loch Modan."),
                Point(MAP.LOCHMODAN, 0.3560, 0.2000, "Tunnel Rat Geomancer",
                    "Travel to Tunnel Rat Geomancer in Loch Modan."),
            },
        },
        {
            id = "turnin-94466-call-of-fire",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Braldir Ashmantle in Loch Modan.",
            dependsOn = { "objective-94466-call-of-fire" },
            complete = QuestState(94466, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "accept-94467-call-of-fire",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Braldir Ashmantle in Loch Modan.",
            dependsOn = { "turnin-94466-call-of-fire" },
            complete = QuestState(94467, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "turnin-94467-call-of-fire",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Brazier of the Dormant Flame in Durotar.",
            dependsOn = { "accept-94467-call-of-fire" },
            complete = QuestState(94467, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.3890, 0.5820, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Durotar.", { map = { MAP.LOCHMODAN } }),
                Point(MAP.LOCHMODAN, 0.3190, 0.6450, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Loch Modan."),
            },
        },
        {
            id = "accept-94468-call-of-fire",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Brazier of the Dormant Flame in Durotar.",
            dependsOn = { "turnin-94467-call-of-fire" },
            complete = QuestState(94468, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.3890, 0.5820, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Durotar.", { map = { MAP.LOCHMODAN } }),
                Point(MAP.LOCHMODAN, 0.3190, 0.6450, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Loch Modan."),
            },
        },
        {
            id = "turnin-94468-call-of-fire",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Bruegs Kindleborn in Dun Morogh.",
            dependsOn = { "accept-94468-call-of-fire" },
            complete = QuestState(94468, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.8760, 0.4360, "Bruegs Kindleborn",
                    "Travel to Bruegs Kindleborn in Dun Morogh."),
            },
        },
        {
            id = "accept-94473-fire-sapta",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Fire Sapta from Braldir Ashmantle in Loch Modan.",
            complete = QuestState(94473, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "turnin-94473-fire-sapta",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Fire Sapta to Braldir Ashmantle in Loch Modan.",
            dependsOn = { "accept-94473-fire-sapta" },
            complete = QuestState(94473, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.3200, 0.6600, "Braldir Ashmantle",
                    "Travel to Braldir Ashmantle in Loch Modan."),
            },
        },
        {
            id = "accept-97243-call-of-fire",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Sessaria Skystride in Zephras Isle. This step is for Horde Skyborne.",
            complete = QuestState(97243, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5820, 0.7840, "Sessaria Skystride",
                    "Travel to Sessaria Skystride in Zephras Isle."),
                Point(MAP.ZEPHRASISLE, 0.4340, 0.4480, "Aarnor Galestrike",
                    "Travel to Aarnor Galestrike in Zephras Isle."),
            },
        },
        {
            id = "turnin-97243-call-of-fire",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "accept-97243-call-of-fire" },
            complete = QuestState(97243, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "accept-97244-call-of-fire",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "turnin-97243-call-of-fire" },
            complete = QuestState(97244, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "objective-97244-call-of-fire",
            kind = "objective",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Call of Fire: Faladiel's Heart. This step is for Horde Skyborne.",
            dependsOn = { "accept-97244-call-of-fire" },
            complete = QuestState(97244, "complete"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6440, 0.6380, "Skypriest Faladiel",
                    "Travel to Skypriest Faladiel in Zephras Isle."),
            },
        },
        {
            id = "turnin-97244-call-of-fire",
            kind = "turnin",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "objective-97244-call-of-fire" },
            complete = QuestState(97244, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "accept-97245-call-of-fire",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "turnin-97244-call-of-fire" },
            complete = QuestState(97245, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "objective-97245-call-of-fire",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Call of Fire: Kuramaa's Mask. This step is for Horde Skyborne.",
            dependsOn = { "accept-97245-call-of-fire" },
            complete = QuestState(97245, "complete"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4240, 0.6900, "Kuramaa",
                    "Travel to Kuramaa in Zephras Isle."),
            },
        },
        {
            id = "turnin-97245-call-of-fire",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "objective-97245-call-of-fire" },
            complete = QuestState(97245, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "accept-97257-call-of-fire",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "turnin-97245-call-of-fire" },
            complete = QuestState(97257, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5120, 0.8600, "Olariaan Swiftburn",
                    "Travel to Olariaan Swiftburn in Zephras Isle."),
            },
        },
        {
            id = "turnin-97257-call-of-fire",
            kind = "turnin",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 96 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Sessaria Skystride in Zephras Isle. This step is for Horde Skyborne.",
            dependsOn = { "accept-97257-call-of-fire" },
            complete = QuestState(97257, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.5820, 0.7840, "Sessaria Skystride",
                    "Travel to Sessaria Skystride in Zephras Isle."),
            },
        },
        {
            id = "accept-1528-call-of-water",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1528, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3780, 0.3740, "Searn Firewarder",
                    "Travel to Searn Firewarder in Orgrimmar."),
            },
        },
        {
            id = "turnin-1528-call-of-water",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1528-call-of-water" },
            complete = QuestState(1528, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-94495-call-of-water",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Norric Lochthane in Loch Modan.",
            complete = QuestState(94495, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "turnin-94495-call-of-water",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
            dependsOn = { "accept-94495-call-of-water" },
            complete = QuestState(94495, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "accept-94497-call-of-water",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
            dependsOn = { "turnin-94495-call-of-water" },
            complete = QuestState(94497, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "turnin-94497-call-of-water",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
            dependsOn = { "accept-94497-call-of-water" },
            complete = QuestState(94497, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "accept-94499-call-of-water",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
            dependsOn = { "turnin-94497-call-of-water" },
            complete = QuestState(94499, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "turnin-94499-call-of-water",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
            dependsOn = { "accept-94499-call-of-water" },
            complete = QuestState(94499, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "accept-94500-call-of-water",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
            dependsOn = { "turnin-94499-call-of-water" },
            complete = QuestState(94500, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "turnin-94500-call-of-water",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
            dependsOn = { "accept-94500-call-of-water" },
            complete = QuestState(94500, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "accept-94501-call-of-water",
            kind = "accept",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
            dependsOn = { "turnin-94500-call-of-water" },
            complete = QuestState(94501, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.6560, 0.7640, "Hervdana Saegrund",
                    "Travel to Hervdana Saegrund in Wetlands."),
            },
        },
        {
            id = "turnin-94501-call-of-water",
            kind = "turnin",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
            dependsOn = { "accept-94501-call-of-water" },
            complete = QuestState(94501, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "accept-94502-call-of-water",
            kind = "accept",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Norric Lochthane in Loch Modan.",
            dependsOn = { "turnin-94501-call-of-water" },
            complete = QuestState(94502, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "turnin-94502-call-of-water",
            kind = "turnin",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
            dependsOn = { "accept-94502-call-of-water" },
            complete = QuestState(94502, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "accept-94616-water-sapta",
            kind = "accept",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Water Sapta from Norric Lochthane in Loch Modan.",
            complete = QuestState(94616, "activeOrCompleted"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "turnin-94616-water-sapta",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Water Sapta to Norric Lochthane in Loch Modan.",
            dependsOn = { "accept-94616-water-sapta" },
            complete = QuestState(94616, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "accept-1531-call-of-air",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Call of Air from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1531, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3780, 0.3740, "Searn Firewarder",
                    "Travel to Searn Firewarder in Orgrimmar."),
            },
        },
        {
            id = "turnin-1531-call-of-air",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Call of Air to Prate Cloudseer in Thousand Needles. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1531-call-of-air" },
            complete = QuestState(1531, "completed"),
            route = {
                Point(MAP.THOUSANDNEEDLES, 0.5360, 0.4280, "Prate Cloudseer",
                    "Travel to Prate Cloudseer in Thousand Needles."),
            },
        },
        {
            id = "accept-8410-elemental-mastery",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Elemental Mastery from Sagorne Creststrider in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(8410, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.2220, 0.1900, "Beram Skychaser",
                    "Travel to Beram Skychaser in Thunder Bluff."),
            },
        },
        {
            id = "turnin-8410-elemental-mastery",
            kind = "turnin",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Elemental Mastery to Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-8410-elemental-mastery" },
            complete = QuestState(8410, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-3084-rune-inscribed-tablet",
            kind = "accept",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 8 },
                },
            },
            text = "Accept Rune-Inscribed Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3084, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3084-rune-inscribed-tablet",
            kind = "turnin",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 8 },
                },
            },
            text = "Turn in Rune-Inscribed Tablet to Shikrik in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3084-rune-inscribed-tablet" },
            complete = QuestState(3084, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Shikrik",
                    "Travel to Shikrik in Durotar."),
            },
        },
        {
            id = "accept-3089-rune-inscribed-parchment",
            kind = "accept",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 2 },
                },
            },
            text = "Accept Rune-Inscribed Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(3089, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3089-rune-inscribed-parchment",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 2 },
                },
            },
            text = "Turn in Rune-Inscribed Parchment to Shikrik in Durotar. This step is for Orcs.",
            dependsOn = { "accept-3089-rune-inscribed-parchment" },
            complete = QuestState(3089, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Shikrik",
                    "Travel to Shikrik in Durotar."),
            },
        },
        {
            id = "accept-3093-rune-inscribed-note",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Accept Rune-Inscribed Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
            complete = QuestState(3093, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7720, "Grull Hawkwind",
                    "Travel to Grull Hawkwind in Mulgore."),
            },
        },
        {
            id = "turnin-3093-rune-inscribed-note",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = 6 },
                },
            },
            text = "Turn in Rune-Inscribed Note to Meela Dawnstrider in Mulgore. This step is for Tauren.",
            dependsOn = { "accept-3093-rune-inscribed-note" },
            complete = QuestState(3093, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4500, 0.7600, "Meela Dawnstrider",
                    "Travel to Meela Dawnstrider in Mulgore."),
            },
        },
        {
            id = "accept-1462-earth-sapta",
            kind = "accept",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Earth Sapta from Seer Ravenfeather in Mulgore.",
            complete = QuestState(1462, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "turnin-1462-earth-sapta",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Earth Sapta to Seer Ravenfeather in Mulgore.",
            dependsOn = { "accept-1462-earth-sapta" },
            complete = QuestState(1462, "completed"),
            route = {
                Point(MAP.MULGORE, 0.4480, 0.7620, "Seer Ravenfeather",
                    "Travel to Seer Ravenfeather in Mulgore."),
            },
        },
        {
            id = "accept-1463-earth-sapta",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Earth Sapta from Canaga Earthcaller in Durotar.",
            complete = QuestState(1463, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "turnin-1463-earth-sapta",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Earth Sapta to Canaga Earthcaller in Durotar.",
            dependsOn = { "accept-1463-earth-sapta" },
            complete = QuestState(1463, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Canaga Earthcaller",
                    "Travel to Canaga Earthcaller in Durotar."),
            },
        },
        {
            id = "accept-1464-fire-sapta",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Fire Sapta from Telf Joolam in Durotar.",
            complete = QuestState(1464, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "turnin-1464-fire-sapta",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Fire Sapta to Telf Joolam in Durotar.",
            dependsOn = { "accept-1464-fire-sapta" },
            complete = QuestState(1464, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "accept-1522-call-of-fire",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1522, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3780, 0.3740, "Searn Firewarder",
                    "Travel to Searn Firewarder in Orgrimmar."),
            },
        },
        {
            id = "turnin-1522-call-of-fire",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1522-call-of-fire" },
            complete = QuestState(1522, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "accept-1523-call-of-fire",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1522-call-of-fire" },
            complete = QuestState(1523, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2520, 0.2100, "Xanis Flameweaver",
                    "Travel to Xanis Flameweaver in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1523-call-of-fire",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1523-call-of-fire" },
            complete = QuestState(1523, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "accept-2983-call-of-fire",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Swart in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1523-call-of-fire" },
            complete = QuestState(2983, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5440, 0.4260, "Swart",
                    "Travel to Swart in Durotar."),
            },
        },
        {
            id = "turnin-2983-call-of-fire",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-2983-call-of-fire" },
            complete = QuestState(2983, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "accept-2984-call-of-fire",
            kind = "accept",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Narm Skychaser in Mulgore. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-2983-call-of-fire" },
            complete = QuestState(2984, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4840, 0.5920, "Narm Skychaser",
                    "Travel to Narm Skychaser in Mulgore."),
            },
        },
        {
            id = "turnin-2984-call-of-fire",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-2984-call-of-fire" },
            complete = QuestState(2984, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "accept-1524-call-of-fire",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-2984-call-of-fire", "turnin-2983-call-of-fire" },
            complete = QuestState(1524, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "turnin-1524-call-of-fire",
            kind = "turnin",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1524-call-of-fire" },
            complete = QuestState(1524, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "accept-1525-call-of-fire",
            kind = "accept",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1524-call-of-fire" },
            complete = QuestState(1525, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "objective-1525-call-of-fire",
            kind = "objective",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Call of Fire: Reagent Pouch. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1525-call-of-fire" },
            complete = QuestState(1525, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.5260, 0.2660, "Burning Blade Cultist",
                    "Travel to Burning Blade Cultist in Durotar."),
            },
        },
        {
            id = "turnin-1525-call-of-fire",
            kind = "turnin",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "objective-1525-call-of-fire" },
            complete = QuestState(1525, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "accept-1526-call-of-fire",
            kind = "accept",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1525-call-of-fire", "turnin-1524-call-of-fire" },
            complete = QuestState(1526, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5880, "Telf Joolam",
                    "Travel to Telf Joolam in Durotar."),
            },
        },
        {
            id = "objective-1526-call-of-fire",
            kind = "objective",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Call of Fire: Glowing Ember. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1526-call-of-fire" },
            complete = QuestState(1526, "complete"),
            route = {
                Point(MAP.DUROTAR, 0.3860, 0.5820, "Minor Manifestation of Fire",
                    "Travel to Minor Manifestation of Fire in Durotar."),
            },
        },
        {
            id = "turnin-1526-call-of-fire",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Brazier of the Dormant Flame in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "objective-1526-call-of-fire" },
            complete = QuestState(1526, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.3890, 0.5820, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Durotar.", { map = { MAP.LOCHMODAN } }),
                Point(MAP.LOCHMODAN, 0.3190, 0.6450, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Loch Modan."),
            },
        },
        {
            id = "accept-1527-call-of-fire",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Call of Fire from Brazier of the Dormant Flame in Durotar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1526-call-of-fire" },
            complete = QuestState(1527, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.3890, 0.5820, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Durotar.", { map = { MAP.LOCHMODAN } }),
                Point(MAP.LOCHMODAN, 0.3190, 0.6450, "Brazier of the Dormant Flame",
                    "Travel to Brazier of the Dormant Flame in Loch Modan."),
            },
        },
        {
            id = "turnin-1527-call-of-fire",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1527-call-of-fire" },
            complete = QuestState(1527, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5580, 0.2000, "Kranal Fiss",
                    "Travel to Kranal Fiss in The Barrens."),
            },
        },
        {
            id = "accept-972-water-sapta",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Water Sapta from Islen Waterseer in The Barrens.",
            complete = QuestState(972, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "turnin-972-water-sapta",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Water Sapta to Islen Waterseer in The Barrens.",
            dependsOn = { "accept-972-water-sapta" },
            complete = QuestState(972, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-1103-call-of-water",
            kind = "accept",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Tiev Mordune in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1103, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3740, 0.4400, "Tiev Mordune",
                    "Travel to Tiev Mordune in Silverpine Forest."),
            },
        },
        {
            id = "turnin-1103-call-of-water",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Tiev Mordune in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1103-call-of-water" },
            complete = QuestState(1103, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3740, 0.4400, "Tiev Mordune",
                    "Travel to Tiev Mordune in Silverpine Forest."),
            },
        },
        {
            id = "accept-1529-call-of-water",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1528-call-of-water" },
            complete = QuestState(1529, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2520, 0.2100, "Xanis Flameweaver",
                    "Travel to Xanis Flameweaver in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1529-call-of-water",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1529-call-of-water" },
            complete = QuestState(1529, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-2985-call-of-water",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Swart in Durotar.",
            dependsOn = { "turnin-1529-call-of-water" },
            complete = QuestState(2985, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5440, 0.4260, "Swart",
                    "Travel to Swart in Durotar."),
            },
        },
        {
            id = "turnin-2985-call-of-water",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens.",
            dependsOn = { "accept-2985-call-of-water" },
            complete = QuestState(2985, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-2986-call-of-water",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Narm Skychaser in Mulgore.",
            dependsOn = { "turnin-2985-call-of-water" },
            complete = QuestState(2986, "activeOrCompleted"),
            route = {
                Point(MAP.MULGORE, 0.4840, 0.5920, "Narm Skychaser",
                    "Travel to Narm Skychaser in Mulgore."),
            },
        },
        {
            id = "turnin-2986-call-of-water",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens.",
            dependsOn = { "accept-2986-call-of-water" },
            complete = QuestState(2986, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-94494-call-of-water",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Eldrun Stormbreaker in Ironforge.",
            dependsOn = { "turnin-2986-call-of-water" },
            complete = QuestState(94494, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.4740, 0.1360, "Eldrun Stormbreaker",
                    "Travel to Eldrun Stormbreaker in Ironforge."),
            },
        },
        {
            id = "turnin-94494-call-of-water",
            kind = "turnin",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 7 },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
            dependsOn = { "accept-94494-call-of-water" },
            complete = QuestState(94494, "completed"),
            route = {
                Point(MAP.LOCHMODAN, 0.4180, 0.1900, "Norric Lochthane",
                    "Travel to Norric Lochthane in Loch Modan."),
            },
        },
        {
            id = "accept-1530-call-of-water",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-94494-call-of-water", "turnin-1528-call-of-water" },
            complete = QuestState(1530, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "turnin-1530-call-of-water",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1530-call-of-water" },
            complete = QuestState(1530, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "accept-1535-call-of-water",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1530-call-of-water" },
            complete = QuestState(1535, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "turnin-1535-call-of-water",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1535-call-of-water" },
            complete = QuestState(1535, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "accept-1536-call-of-water",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1535-call-of-water", "turnin-1530-call-of-water" },
            complete = QuestState(1536, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "turnin-1536-call-of-water",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1536-call-of-water" },
            complete = QuestState(1536, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "accept-1534-call-of-water",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1536-call-of-water" },
            complete = QuestState(1534, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "turnin-1534-call-of-water",
            kind = "turnin",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1534-call-of-water" },
            complete = QuestState(1534, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "accept-220-call-of-water",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-1534-call-of-water", "turnin-1536-call-of-water" },
            complete = QuestState(220, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4340, 0.7740, "Brine",
                    "Travel to Brine in The Barrens."),
            },
        },
        {
            id = "turnin-220-call-of-water",
            kind = "turnin",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-220-call-of-water" },
            complete = QuestState(220, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-63-call-of-water",
            kind = "accept",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-220-call-of-water" },
            complete = QuestState(63, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "turnin-63-call-of-water",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Brazier of Everfount in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-63-call-of-water" },
            complete = QuestState(63, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3820, 0.4450, "Brazier of Everfount",
                    "Travel to Brazier of Everfount in Silverpine Forest."),
            },
        },
        {
            id = "accept-100-call-of-water",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Brazier of Everfount in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-63-call-of-water" },
            complete = QuestState(100, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3820, 0.4450, "Brazier of Everfount",
                    "Travel to Brazier of Everfount in Silverpine Forest."),
            },
        },
        {
            id = "turnin-100-call-of-water",
            kind = "turnin",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Minor Manifestation of Water in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-100-call-of-water" },
            complete = QuestState(100, "completed"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3860, 0.4460, "Minor Manifestation of Water",
                    "Travel to Minor Manifestation of Water in Silverpine Forest."),
            },
        },
        {
            id = "accept-96-call-of-water",
            kind = "accept",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Call of Water from Minor Manifestation of Water in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-100-call-of-water" },
            complete = QuestState(96, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINEFOREST, 0.3860, 0.4460, "Minor Manifestation of Water",
                    "Travel to Minor Manifestation of Water in Silverpine Forest."),
            },
        },
        {
            id = "turnin-96-call-of-water",
            kind = "turnin",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-96-call-of-water" },
            complete = QuestState(96, "completed"),
            route = {
                Point(MAP.BARRENS, 0.6580, 0.4380, "Islen Waterseer",
                    "Travel to Islen Waterseer in The Barrens."),
            },
        },
        {
            id = "accept-1532-call-of-air",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Call of Air from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(1532, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDERBLUFF, 0.2520, 0.2100, "Xanis Flameweaver",
                    "Travel to Xanis Flameweaver in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1532-call-of-air",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Call of Air to Prate Cloudseer in Thousand Needles. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-1532-call-of-air" },
            complete = QuestState(1532, "completed"),
            route = {
                Point(MAP.THOUSANDNEEDLES, 0.5360, 0.4280, "Prate Cloudseer",
                    "Travel to Prate Cloudseer in Thousand Needles."),
            },
        },
        {
            id = "accept-8411-mastering-the-elements",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Mastering the Elements from Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "turnin-8410-elemental-mastery" },
            complete = QuestState(8411, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "objective-8411-mastering-the-elements",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 50 } },
                },
            },
            text = "Mastering the Elements: Elemental Earth.",
            dependsOn = { "accept-8411-mastering-the-elements" },
            complete = QuestState(8411, "complete"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.7960, 0.4640, "Stone Fury",
                    "Travel to Stone Fury in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.8020, 0.6200, "Cyclonian",
                    "Travel to Cyclonian in Alterac Mountains."),
                Point(MAP.ALTERACMOUNTAINS, 0.6000, 0.4560, "Ancient Fire Elemental",
                    "Travel to Ancient Fire Elemental in Alterac Mountains."),
            },
        },
        {
            id = "turnin-8411-mastering-the-elements",
            kind = "turnin",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Mastering the Elements to Bath'rah the Windwatcher in Alterac Mountains.",
            dependsOn = { "objective-8411-mastering-the-elements" },
            complete = QuestState(8411, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-8412-spirit-totem",
            kind = "accept",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Spirit Totem from Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "turnin-8411-mastering-the-elements", "turnin-8410-elemental-mastery" },
            complete = QuestState(8412, "activeOrCompleted"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "turnin-8412-spirit-totem",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Spirit Totem to Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-8412-spirit-totem" },
            complete = QuestState(8412, "completed"),
            route = {
                Point(MAP.ALTERACMOUNTAINS, 0.8040, 0.6680, "Bath'rah the Windwatcher",
                    "Travel to Bath'rah the Windwatcher in Alterac Mountains."),
            },
        },
        {
            id = "accept-7667-material-assistance",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 58 } },
                },
            },
            text = "Accept Material Assistance from Sagorne Creststrider in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            complete = QuestState(7667, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        },
        {
            id = "objective-7667-material-assistance",
            kind = "objective",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 58 } },
                },
            },
            text = "Material Assistance: Azerothian Diamond. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "accept-7667-material-assistance" },
            complete = QuestState(7667, "complete"),
            route = {
                Point(MAP.EASTERNPLAGUELANDS, 0.3960, 0.7560, "Solid Chest",
                    "Travel to Solid Chest in Eastern Plaguelands.", { map = { MAP.AZSHARA, MAP.WESTERNPLAGUELANDS, MAP.BLASTEDLANDS, MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.EASTERNPLAGUELANDS, 0.8690, 0.3950, "Solid Chest",
                    "Travel to Solid Chest in Eastern Plaguelands.", { map = { MAP.AZSHARA, MAP.WESTERNPLAGUELANDS, MAP.BLASTEDLANDS, MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.AZSHARA, 0.3550, 0.3590, "Solid Chest",
                    "Travel to Solid Chest in Azshara.", { map = { MAP.WESTERNPLAGUELANDS, MAP.BLASTEDLANDS, MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.AZSHARA, 0.4150, 0.2030, "Solid Chest",
                    "Travel to Solid Chest in Azshara.", { map = { MAP.WESTERNPLAGUELANDS, MAP.BLASTEDLANDS, MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.WESTERNPLAGUELANDS, 0.3940, 0.6680, "Solid Chest",
                    "Travel to Solid Chest in Western Plaguelands.", { map = { MAP.BLASTEDLANDS, MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.BLASTEDLANDS, 0.4430, 0.1210, "Solid Chest",
                    "Travel to Solid Chest in Blasted Lands.", { map = { MAP.TANARIS, MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.TANARIS, 0.7380, 0.4820, "Solid Chest",
                    "Travel to Solid Chest in Tanaris.", { map = { MAP.BURNINGSTEPPES, MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.BURNINGSTEPPES, 0.2680, 0.4280, "Firesworn",
                    "Travel to Firesworn in Burning Steppes.", { map = { MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.BURNINGSTEPPES, 0.2180, 0.4760, "Solid Chest",
                    "Travel to Solid Chest in Burning Steppes.", { map = { MAP.HINTERLANDS, MAP.WINTERSPRING } }),
                Point(MAP.HINTERLANDS, 0.7110, 0.4870, "Solid Chest",
                    "Travel to Solid Chest in The Hinterlands.", { map = { MAP.WINTERSPRING } }),
                Point(MAP.WINTERSPRING, 0.6640, 0.3590, "Solid Chest",
                    "Travel to Solid Chest in Winterspring."),
            },
        },
        {
            id = "turnin-7667-material-assistance",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { race = { 2, 6, 8 } },
                    { level = { min = 58 } },
                },
            },
            text = "Turn in Material Assistance to Sagorne Creststrider in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
            dependsOn = { "objective-7667-material-assistance" },
            complete = QuestState(7667, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        },
        {
            id = "accept-7669-again-into-the-great-ossuary",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 58 } },
                },
            },
            text = "Accept Again Into the Great Ossuary from Sagorne Creststrider in Orgrimmar.",
            complete = QuestState(7669, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        },
        {
            id = "turnin-7669-again-into-the-great-ossuary",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 58 } },
                },
            },
            text = "Turn in Again Into the Great Ossuary to Sagorne Creststrider in Orgrimmar.",
            dependsOn = { "accept-7669-again-into-the-great-ossuary" },
            complete = QuestState(7669, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        },
        {
            id = "accept-8259-a-more-fitting-reward",
            kind = "accept",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 58 } },
                },
            },
            text = "Accept A More Fitting Reward from Sagorne Creststrider in Orgrimmar.",
            complete = QuestState(8259, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        },
        {
            id = "turnin-8259-a-more-fitting-reward",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 7 },
                    { level = { min = 58 } },
                },
            },
            text = "Turn in A More Fitting Reward to Sagorne Creststrider in Orgrimmar.",
            dependsOn = { "accept-8259-a-more-fitting-reward" },
            complete = QuestState(8259, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3860, 0.3620, "Sagorne Creststrider",
                    "Travel to Sagorne Creststrider in Orgrimmar."),
            },
        }
    },
})
