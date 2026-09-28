local _, ns = ...

-- Mage class quests.
-- Forever quests are woven in after the quest that unlocks them, or by the level the NPC offers them.
-- Dungeon, raid, and PvP quests stay in their own guides.
-- A quest with no start pin is named below and is not given a coordinate.
-- Revisit every quest left out below when the database records a giver, objectives, and a turn-in.
-- Coordinates have not been validated in the Forever client.
-- Forever quests woven into this route:
-- Research Access
-- Glyphic Parchment
-- A Student of the Arcane
-- Speak with Belann
-- Boughs in the Wind
-- Left out (dungeon quest): Rituals of Power, Power in Uldaman, Destroy Morphaz, Tabetha's Task, Tiara of the Deep, Arcane Refreshment
-- Left out (needs 1956, which is not on this route): Mana Surges
-- Left out (needs 1957, which is not on this route): Celestial Power

local MAP = {
    AZSHARA = 1447,
    BARRENS = 1413,
    DUNMOROGH = 1426,
    DUROTAR = 1411,
    DUSTWALLOWMARSH = 1445,
    ELWYNNFOREST = 1429,
    IRONFORGE = 1455,
    ORGRIMMAR = 1454,
    STORMWINDCITY = 1453,
    THOUSANDNEEDLES = 1441,
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
    id = "class-mage",
    title = "Mage",
    category = "Class Quests",
    revision = 1,
    conditions = {
        all = {
            { class = 8 },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-97286-research-access",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                },
            },
            text = "Accept Research Access from Garion Wendell in Stormwind City.",
            complete = QuestState(97286, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3780, 0.8020, "Garion Wendell",
                    "Travel to Garion Wendell in Stormwind City."),
            },
        },
        {
            id = "turnin-97286-research-access",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                },
            },
            text = "Turn in Research Access to Owen Thadd in Undercity.",
            dependsOn = { "accept-97286-research-access" },
            complete = QuestState(97286, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3780, 0.8020, "Garion Wendell",
                    "Travel to Garion Wendell in Stormwind City."),
            },
        },
        {
            id = "accept-98576-glyphic-parchment",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 2 },
                },
            },
            text = "Accept Glyphic Parchment from Gornek in Durotar. This step is for Orcs.",
            complete = QuestState(98576, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-98576-glyphic-parchment",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 2 },
                },
            },
            text = "Turn in Glyphic Parchment to Mai'ah in Durotar. This step is for Orcs.",
            dependsOn = { "accept-98576-glyphic-parchment" },
            complete = QuestState(98576, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Mai'ah",
                    "Travel to Mai'ah in Durotar."),
            },
        },
        {
            id = "accept-92481-a-student-of-the-arcane",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept A Student of the Arcane from Rorian the Dayseeker in Zephras Isle.",
            complete = QuestState(92481, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4200, 0.2340, "Rorian the Dayseeker",
                    "Travel to Rorian the Dayseeker in Zephras Isle."),
            },
        },
        {
            id = "turnin-92481-a-student-of-the-arcane",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in A Student of the Arcane to Dorii Brightwhisper in Zephras Isle.",
            dependsOn = { "accept-92481-a-student-of-the-arcane" },
            complete = QuestState(92481, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.4160, 0.2360, "Dorii Brightwhisper",
                    "Travel to Dorii Brightwhisper in Zephras Isle."),
            },
        },
        {
            id = "accept-1860-speak-with-jennea",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Jennea from Zaldimar Wefhellt in Elwynn Forest. This step is for Humans and Gnomes.",
            complete = QuestState(1860, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4320, 0.6620, "Zaldimar Wefhellt",
                    "Travel to Zaldimar Wefhellt in Elwynn Forest."),
            },
        },
        {
            id = "turnin-1860-speak-with-jennea",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Jennea to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1860-speak-with-jennea" },
            complete = QuestState(1860, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "accept-1861-mirror-lake",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Mirror Lake from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1860-speak-with-jennea" },
            complete = QuestState(1861, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "turnin-1861-mirror-lake",
            kind = "turnin",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Mirror Lake to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1861-mirror-lake" },
            complete = QuestState(1861, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "accept-93791-speak-with-belann",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Belann from Anathamaas Aetherwind in Zephras Isle.",
            complete = QuestState(93791, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6580, 0.8040, "Anathamaas Aetherwind",
                    "Travel to Anathamaas Aetherwind in Zephras Isle."),
                Point(MAP.ZEPHRASISLE, 0.6280, 0.7740, "Belann Windwood",
                    "Travel to Belann Windwood in Zephras Isle."),
            },
        },
        {
            id = "turnin-93791-speak-with-belann",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Belann to Belann Windwood in Zephras Isle.",
            dependsOn = { "accept-93791-speak-with-belann" },
            complete = QuestState(93791, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6280, 0.7740, "Belann Windwood",
                    "Travel to Belann Windwood in Zephras Isle."),
            },
        },
        {
            id = "accept-93797-boughs-in-the-wind",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Boughs in the Wind from Belann Windwood in Zephras Isle.",
            dependsOn = { "turnin-93791-speak-with-belann" },
            complete = QuestState(93797, "activeOrCompleted"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6280, 0.7740, "Belann Windwood",
                    "Travel to Belann Windwood in Zephras Isle."),
            },
        },
        {
            id = "turnin-93797-boughs-in-the-wind",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Boughs in the Wind to Belann Windwood in Zephras Isle.",
            dependsOn = { "accept-93797-boughs-in-the-wind" },
            complete = QuestState(93797, "completed"),
            route = {
                Point(MAP.ZEPHRASISLE, 0.6280, 0.7740, "Belann Windwood",
                    "Travel to Belann Windwood in Zephras Isle."),
            },
        },
        {
            id = "accept-1919-report-to-jennea",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Report to Jennea from Zaldimar Wefhellt in Elwynn Forest. This step is for Humans and Gnomes.",
            complete = QuestState(1919, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4320, 0.6620, "Zaldimar Wefhellt",
                    "Travel to Zaldimar Wefhellt in Elwynn Forest.", { map = { MAP.IRONFORGE } }),
                Point(MAP.IRONFORGE, 0.2680, 0.0840, "Dink",
                    "Travel to Dink in Ironforge."),
            },
        },
        {
            id = "turnin-1919-report-to-jennea",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Report to Jennea to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1919-report-to-jennea" },
            complete = QuestState(1919, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "accept-1920-investigate-the-blue-recluse",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Investigate the Blue Recluse from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1919-report-to-jennea" },
            complete = QuestState(1920, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "turnin-1920-investigate-the-blue-recluse",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Investigate the Blue Recluse to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1920-investigate-the-blue-recluse" },
            complete = QuestState(1920, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "accept-1921-gathering-materials",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Gathering Materials from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1920-investigate-the-blue-recluse", "turnin-1919-report-to-jennea" },
            complete = QuestState(1921, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City."),
            },
        },
        {
            id = "objective-1921-gathering-materials",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Gathering Materials: Linen Cloth. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1921-gathering-materials" },
            complete = QuestState(1921, "complete"),
            route = {
                Point(MAP.STORMWINDCITY, 0.2960, 0.6180, "Forlorn Spirit",
                    "Travel to Forlorn Spirit in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.7000, 0.4500, "Old Town Thug",
                    "Travel to Old Town Thug in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.6180, 0.2920, "Cut-throat Mugger",
                    "Travel to Cut-throat Mugger in Stormwind City."),
                Point(MAP.STORMWINDCITY, 0.5650, 0.6380, "Food Crate",
                    "Travel to Food Crate in Stormwind City."),
            },
        },
        {
            id = "turnin-1921-gathering-materials",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Gathering Materials to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "objective-1921-gathering-materials" },
            complete = QuestState(1921, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "accept-1941-manaweave-robe",
            kind = "accept",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Manaweave Robe from Wynne Larson in Stormwind City.",
            dependsOn = { "turnin-1921-gathering-materials" },
            complete = QuestState(1941, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "turnin-1941-manaweave-robe",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Manaweave Robe to Wynne Larson in Stormwind City.",
            dependsOn = { "accept-1941-manaweave-robe" },
            complete = QuestState(1941, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "accept-1939-high-sorcerer-andromath",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept High Sorcerer Andromath from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
            complete = QuestState(1939, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City.", { map = { MAP.IRONFORGE } }),
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge."),
            },
        },
        {
            id = "turnin-1939-high-sorcerer-andromath",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in High Sorcerer Andromath to High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1939-high-sorcerer-andromath" },
            complete = QuestState(1939, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3760, 0.8160, "High Sorcerer Andromath",
                    "Travel to High Sorcerer Andromath in Stormwind City."),
            },
        },
        {
            id = "accept-1938-urs-treatise-on-shadow-magic",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Ur's Treatise on Shadow Magic from High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1939-high-sorcerer-andromath" },
            complete = QuestState(1938, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3760, 0.8160, "High Sorcerer Andromath",
                    "Travel to High Sorcerer Andromath in Stormwind City."),
            },
        },
        {
            id = "turnin-1938-urs-treatise-on-shadow-magic",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1938-urs-treatise-on-shadow-magic" },
            complete = QuestState(1938, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3760, 0.8160, "High Sorcerer Andromath",
                    "Travel to High Sorcerer Andromath in Stormwind City."),
            },
        },
        {
            id = "accept-1940-pristine-spider-silk",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Pristine Spider Silk from High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1938-urs-treatise-on-shadow-magic", "turnin-1939-high-sorcerer-andromath" },
            complete = QuestState(1940, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.3760, 0.8160, "High Sorcerer Andromath",
                    "Travel to High Sorcerer Andromath in Stormwind City."),
            },
        },
        {
            id = "turnin-1940-pristine-spider-silk",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Pristine Spider Silk to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1940-pristine-spider-silk" },
            complete = QuestState(1940, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "accept-1942-astral-knot-garment",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Astral Knot Garment from Wynne Larson in Stormwind City.",
            dependsOn = { "turnin-1940-pristine-spider-silk" },
            complete = QuestState(1942, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "turnin-1942-astral-knot-garment",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Astral Knot Garment to Wynne Larson in Stormwind City.",
            dependsOn = { "accept-1942-astral-knot-garment" },
            complete = QuestState(1942, "completed"),
            route = {
                Point(MAP.STORMWINDCITY, 0.4160, 0.7660, "Wynne Larson",
                    "Travel to Wynne Larson in Stormwind City."),
            },
        },
        {
            id = "accept-1947-journey-to-the-marsh",
            kind = "accept",
            priority = 320,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Journey to the Marsh from Anastasia Hartwell in Undercity.",
            complete = QuestState(1947, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.2560, 0.1460, "Ursyn Ghull",
                    "Travel to Ursyn Ghull in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1947-journey-to-the-marsh",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Journey to the Marsh to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1947-journey-to-the-marsh" },
            complete = QuestState(1947, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1949-hidden-secrets",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Hidden Secrets from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-1947-journey-to-the-marsh" },
            complete = QuestState(1949, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-1949-hidden-secrets",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Hidden Secrets to Magus Tirth in Thousand Needles.",
            dependsOn = { "accept-1949-hidden-secrets" },
            complete = QuestState(1949, "completed"),
            route = {
                Point(MAP.THOUSANDNEEDLES, 0.7820, 0.7580, "Magus Tirth",
                    "Travel to Magus Tirth in Thousand Needles."),
            },
        },
        {
            id = "accept-1950-get-the-scoop",
            kind = "accept",
            priority = 360,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Get the Scoop from Magus Tirth in Thousand Needles.",
            dependsOn = { "turnin-1949-hidden-secrets" },
            complete = QuestState(1950, "activeOrCompleted"),
            route = {
                Point(MAP.THOUSANDNEEDLES, 0.7820, 0.7580, "Magus Tirth",
                    "Travel to Magus Tirth in Thousand Needles."),
            },
        },
        {
            id = "turnin-1950-get-the-scoop",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Get the Scoop to Magus Tirth in Thousand Needles.",
            dependsOn = { "accept-1950-get-the-scoop" },
            complete = QuestState(1950, "completed"),
            route = {
                Point(MAP.THOUSANDNEEDLES, 0.7820, 0.7580, "Magus Tirth",
                    "Travel to Magus Tirth in Thousand Needles."),
            },
        },
        {
            id = "accept-1948-items-of-power",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Items of Power from Tabetha in Dustwallow Marsh.",
            complete = QuestState(1948, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "objective-1948-items-of-power",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Items of Power: Jade.",
            dependsOn = { "accept-1948-items-of-power" },
            complete = QuestState(1948, "complete"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4840, 0.2160, "Drywallow Crocolisk",
                    "Travel to Drywallow Crocolisk in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4840, 0.2160, "Drywallow Vicejaw",
                    "Travel to Drywallow Vicejaw in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4120, 0.3780, "Drywallow Snapper",
                    "Travel to Drywallow Snapper in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5540, 0.7200, "Drywallow Daggermaw",
                    "Travel to Drywallow Daggermaw in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4960, 0.2300, "Bloodfen Raptor",
                    "Travel to Bloodfen Raptor in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4740, 0.2080, "Bloodfen Screecher",
                    "Travel to Bloodfen Screecher in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3180, 0.6560, "Bloodfen Lashtail",
                    "Travel to Bloodfen Lashtail in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5760, 0.2000, "Mirefin Puddlejumper",
                    "Travel to Mirefin Puddlejumper in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5740, 0.2020, "Mirefin Murloc",
                    "Travel to Mirefin Murloc in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5940, 0.0980, "Mirefin Warrior",
                    "Travel to Mirefin Warrior in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5740, 0.1680, "Mirefin Muckdweller",
                    "Travel to Mirefin Muckdweller in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5740, 0.1680, "Mirefin Coastrunner",
                    "Travel to Mirefin Coastrunner in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.5940, 0.0980, "Mirefin Oracle",
                    "Travel to Mirefin Oracle in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3420, 0.2260, "Darkmist Spider",
                    "Travel to Darkmist Spider in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3300, 0.2260, "Darkmist Lurker",
                    "Travel to Darkmist Lurker in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3480, 0.2280, "Darkmist Recluse",
                    "Travel to Darkmist Recluse in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3300, 0.2260, "Darkmist Silkspinner",
                    "Travel to Darkmist Silkspinner in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4580, 0.5720, "Swamp Ooze",
                    "Travel to Swamp Ooze in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.6460, 0.4000, "Mudrock Tortoise",
                    "Travel to Mudrock Tortoise in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.6460, 0.4000, "Mudrock Spikeshell",
                    "Travel to Mudrock Spikeshell in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4100, 0.4360, "Darkfang Lurker",
                    "Travel to Darkfang Lurker in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4580, 0.5720, "Darkfang Creeper",
                    "Travel to Darkfang Creeper in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4960, 0.2300, "Darkfang Spider",
                    "Travel to Darkfang Spider in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3820, 0.3680, "Darkfang Venomspitter",
                    "Travel to Darkfang Venomspitter in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3960, 0.2380, "Theramore Infiltrator",
                    "Travel to Theramore Infiltrator in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.4520, 0.2460, "Theramore Sentry",
                    "Travel to Theramore Sentry in Dustwallow Marsh."),
                Point(MAP.DUSTWALLOWMARSH, 0.3070, 0.2240, "Solid Chest",
                    "Travel to Solid Chest in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-1948-items-of-power",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Items of Power to Tabetha in Dustwallow Marsh.",
            dependsOn = { "objective-1948-items-of-power" },
            complete = QuestState(1948, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1952-mages-wand",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Mage's Wand from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-1948-items-of-power" },
            complete = QuestState(1952, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-1952-mages-wand",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Mage's Wand to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1952-mages-wand" },
            complete = QuestState(1952, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1953-return-to-the-marsh",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Return to the Marsh from Anastasia Hartwell in Undercity.",
            complete = QuestState(1953, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.STORMWINDCITY, 0.3860, 0.7940, "Jennea Cannon",
                    "Travel to Jennea Cannon in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.2560, 0.1460, "Ursyn Ghull",
                    "Travel to Ursyn Ghull in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1953-return-to-the-marsh",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Return to the Marsh to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1953-return-to-the-marsh" },
            complete = QuestState(1953, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1954-the-infernal-orb",
            kind = "accept",
            priority = 450,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept The Infernal Orb from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-1953-return-to-the-marsh" },
            complete = QuestState(1954, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-1954-the-infernal-orb",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in The Infernal Orb to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1954-the-infernal-orb" },
            complete = QuestState(1954, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1955-the-exorcism",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Accept The Exorcism from Tabetha in Dustwallow Marsh.",
            dependsOn = { "turnin-1954-the-infernal-orb", "turnin-1953-return-to-the-marsh" },
            complete = QuestState(1955, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "turnin-1955-the-exorcism",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in The Exorcism to Tabetha in Dustwallow Marsh.",
            dependsOn = { "accept-1955-the-exorcism" },
            complete = QuestState(1955, "completed"),
            route = {
                Point(MAP.DUSTWALLOWMARSH, 0.4600, 0.5700, "Tabetha",
                    "Travel to Tabetha in Dustwallow Marsh."),
            },
        },
        {
            id = "accept-1883-speak-with-unthuwa",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Un'thuwa from Uthel'nay in Orgrimmar. This step is for Undead and Trolls.",
            complete = QuestState(1883, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3900, 0.8600, "Uthel'nay",
                    "Travel to Uthel'nay in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.2500, 0.2060, "Thurston Xane",
                    "Travel to Thurston Xane in Thunder Bluff."),
            },
        },
        {
            id = "turnin-1883-speak-with-unthuwa",
            kind = "turnin",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Un'thuwa to Un'Thuwa in Durotar. This step is for Undead and Trolls.",
            dependsOn = { "accept-1883-speak-with-unthuwa" },
            complete = QuestState(1883, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7500, "Un'Thuwa",
                    "Travel to Un'Thuwa in Durotar."),
            },
        },
        {
            id = "accept-1884-ju-ju-heaps",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Ju-Ju Heaps from Un'Thuwa in Durotar. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1883-speak-with-unthuwa" },
            complete = QuestState(1884, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7500, "Un'Thuwa",
                    "Travel to Un'Thuwa in Durotar."),
            },
        },
        {
            id = "turnin-1884-ju-ju-heaps",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Ju-Ju Heaps to Un'Thuwa in Durotar. This step is for Undead and Trolls.",
            dependsOn = { "accept-1884-ju-ju-heaps" },
            complete = QuestState(1884, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.5620, 0.7500, "Un'Thuwa",
                    "Travel to Un'Thuwa in Durotar."),
            },
        },
        {
            id = "accept-1959-report-to-anastasia",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Report to Anastasia from Uthel'nay in Orgrimmar. This step is for Undead and Trolls.",
            complete = QuestState(1959, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3900, 0.8600, "Uthel'nay",
                    "Travel to Uthel'nay in Orgrimmar.", { map = { MAP.THUNDERBLUFF, MAP.TIRISFALGLADES } }),
                Point(MAP.THUNDERBLUFF, 0.2500, 0.2060, "Thurston Xane",
                    "Travel to Thurston Xane in Thunder Bluff.", { map = { MAP.TIRISFALGLADES } }),
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Cain Firesong",
                    "Travel to Cain Firesong in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1959-report-to-anastasia",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Report to Anastasia to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "accept-1959-report-to-anastasia" },
            complete = QuestState(1959, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "accept-1960-investigate-the-alchemist-shop",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Investigate the Alchemist Shop from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1959-report-to-anastasia" },
            complete = QuestState(1960, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "turnin-1960-investigate-the-alchemist-shop",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Investigate the Alchemist Shop to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "accept-1960-investigate-the-alchemist-shop" },
            complete = QuestState(1960, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "accept-1961-gathering-materials",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Gathering Materials from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1960-investigate-the-alchemist-shop", "turnin-1959-report-to-anastasia" },
            complete = QuestState(1961, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "objective-1961-gathering-materials",
            kind = "objective",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Gathering Materials: Linen Cloth. This step is for Undead and Trolls.",
            dependsOn = { "accept-1961-gathering-materials" },
            complete = QuestState(1961, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6520, 0.1040, "Lordaeron Citizen",
                    "Travel to Lordaeron Citizen in Undercity."),
                Point(MAP.UNDERCITY, 0.7000, 0.3820, "Food Crate",
                    "Travel to Food Crate in Undercity."),
            },
        },
        {
            id = "turnin-1961-gathering-materials",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Gathering Materials to Josef Gregorian in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "objective-1961-gathering-materials" },
            complete = QuestState(1961, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7060, 0.3040, "Josef Gregorian",
                    "Travel to Josef Gregorian in Undercity."),
            },
        },
        {
            id = "accept-1962-spellfire-robes",
            kind = "accept",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Spellfire Robes from Rhiannon Davis in Undercity.",
            dependsOn = { "turnin-1961-gathering-materials" },
            complete = QuestState(1962, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.7020, 0.3020, "Rhiannon Davis",
                    "Travel to Rhiannon Davis in Undercity."),
            },
        },
        {
            id = "turnin-1962-spellfire-robes",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Spellfire Robes to Josef Gregorian in Undercity.",
            dependsOn = { "accept-1962-spellfire-robes" },
            complete = QuestState(1962, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.7060, 0.3040, "Josef Gregorian",
                    "Travel to Josef Gregorian in Undercity."),
                Point(MAP.UNDERCITY, 0.7020, 0.2960, "Victor Ward",
                    "Travel to Victor Ward in Undercity."),
                Point(MAP.UNDERCITY, 0.7020, 0.3020, "Rhiannon Davis",
                    "Travel to Rhiannon Davis in Undercity."),
            },
        },
        {
            id = "accept-1943-speak-with-deino",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Speak with Deino from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            complete = QuestState(1943, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "turnin-1943-speak-with-deino",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Speak with Deino to Deino in Orgrimmar. This step is for Undead and Trolls.",
            dependsOn = { "accept-1943-speak-with-deino" },
            complete = QuestState(1943, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar."),
            },
        },
        {
            id = "accept-1944-waters-of-xavian",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Waters of Xavian from Deino in Orgrimmar. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1943-speak-with-deino" },
            complete = QuestState(1944, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar."),
            },
        },
        {
            id = "turnin-1944-waters-of-xavian",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Waters of Xavian to Deino in Orgrimmar. This step is for Undead and Trolls.",
            dependsOn = { "accept-1944-waters-of-xavian" },
            complete = QuestState(1944, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar."),
            },
        },
        {
            id = "accept-1945-laughing-sisters",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Laughing Sisters from Deino in Orgrimmar. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1944-waters-of-xavian", "turnin-1943-speak-with-deino" },
            complete = QuestState(1945, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.3840, 0.8580, "Deino",
                    "Travel to Deino in Orgrimmar."),
            },
        },
        {
            id = "turnin-1945-laughing-sisters",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Laughing Sisters to Kil'hala in The Barrens. This step is for Undead and Trolls.",
            dependsOn = { "accept-1945-laughing-sisters" },
            complete = QuestState(1945, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3160, "Kil'hala",
                    "Travel to Kil'hala in The Barrens."),
            },
        },
        {
            id = "accept-1946-nether-lace-garment",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { level = { min = 26 } },
                },
            },
            text = "Accept Nether-lace Garment from Kil'hala in The Barrens.",
            dependsOn = { "turnin-1945-laughing-sisters" },
            complete = QuestState(1946, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3160, "Kil'hala",
                    "Travel to Kil'hala in The Barrens."),
            },
        },
        {
            id = "turnin-1946-nether-lace-garment",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in Nether-lace Garment to Kil'hala in The Barrens.",
            dependsOn = { "accept-1946-nether-lace-garment" },
            complete = QuestState(1946, "completed"),
            route = {
                Point(MAP.BARRENS, 0.5220, 0.3160, "Kil'hala",
                    "Travel to Kil'hala in The Barrens."),
            },
        },
        {
            id = "accept-3086-glyphic-tablet",
            kind = "accept",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 8 },
                },
            },
            text = "Accept Glyphic Tablet from Gornek in Durotar. This step is for Trolls.",
            complete = QuestState(3086, "activeOrCompleted"),
            route = {
                Point(MAP.DUROTAR, 0.4200, 0.6840, "Gornek",
                    "Travel to Gornek in Durotar."),
            },
        },
        {
            id = "turnin-3086-glyphic-tablet",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 8 },
                },
            },
            text = "Turn in Glyphic Tablet to Mai'ah in Durotar. This step is for Trolls.",
            dependsOn = { "accept-3086-glyphic-tablet" },
            complete = QuestState(3086, "completed"),
            route = {
                Point(MAP.DUROTAR, 0.4240, 0.6900, "Mai'ah",
                    "Travel to Mai'ah in Durotar."),
            },
        },
        {
            id = "accept-3098-glyphic-scroll",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 5 },
                },
            },
            text = "Accept Glyphic Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
            complete = QuestState(3098, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6620, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-3098-glyphic-scroll",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = 5 },
                },
            },
            text = "Turn in Glyphic Scroll to Isabella in Tirisfal Glades. This step is for Undead.",
            dependsOn = { "accept-3098-glyphic-scroll" },
            complete = QuestState(3098, "completed"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.3080, 0.6600, "Isabella",
                    "Travel to Isabella in Tirisfal Glades."),
            },
        },
        {
            id = "accept-3104-glyphic-letter",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = 1 },
                },
            },
            text = "Accept Glyphic Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
            complete = QuestState(3104, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4880, 0.4160, "Marshal McBride",
                    "Travel to Marshal McBride in Elwynn Forest."),
            },
        },
        {
            id = "turnin-3104-glyphic-letter",
            kind = "turnin",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = 1 },
                },
            },
            text = "Turn in Glyphic Letter to Khelden Bremen in Elwynn Forest. This step is for Humans.",
            dependsOn = { "accept-3104-glyphic-letter" },
            complete = QuestState(3104, "completed"),
            route = {
                Point(MAP.ELWYNNFOREST, 0.4960, 0.3940, "Khelden Bremen",
                    "Travel to Khelden Bremen in Elwynn Forest."),
            },
        },
        {
            id = "accept-3114-glyphic-memorandum",
            kind = "accept",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = 7 },
                },
            },
            text = "Accept Glyphic Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
            complete = QuestState(3114, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.2980, 0.7120, "Sten Stoutarm",
                    "Travel to Sten Stoutarm in Dun Morogh."),
            },
        },
        {
            id = "turnin-3114-glyphic-memorandum",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = 7 },
                },
            },
            text = "Turn in Glyphic Memorandum to Marryk Nurribit in Dun Morogh. This step is for Gnomes.",
            dependsOn = { "accept-3114-glyphic-memorandum" },
            complete = QuestState(3114, "completed"),
            route = {
                Point(MAP.DUNMOROGH, 0.2860, 0.6640, "Marryk Nurribit",
                    "Travel to Marryk Nurribit in Dun Morogh."),
            },
        },
        {
            id = "accept-1879-speak-with-bink",
            kind = "accept",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Bink from Magis Sparkmantle in Dun Morogh. This step is for Humans and Gnomes.",
            complete = QuestState(1879, "activeOrCompleted"),
            route = {
                Point(MAP.DUNMOROGH, 0.4740, 0.5200, "Magis Sparkmantle",
                    "Travel to Magis Sparkmantle in Dun Morogh."),
            },
        },
        {
            id = "turnin-1879-speak-with-bink",
            kind = "turnin",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Bink to Bink in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1879-speak-with-bink" },
            complete = QuestState(1879, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge."),
            },
        },
        {
            id = "accept-1880-mage-tastic-gizmonitor",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Mage-tastic Gizmonitor from Bink in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "turnin-1879-speak-with-bink" },
            complete = QuestState(1880, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge."),
            },
        },
        {
            id = "turnin-1880-mage-tastic-gizmonitor",
            kind = "turnin",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 8 },
                    { race = { 1, 7 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Mage-tastic Gizmonitor to Bink in Ironforge. This step is for Humans and Gnomes.",
            dependsOn = { "accept-1880-mage-tastic-gizmonitor" },
            complete = QuestState(1880, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2700, 0.0820, "Bink",
                    "Travel to Bink in Ironforge."),
            },
        },
        {
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Speak with Anastasia from Cain Firesong in Tirisfal Glades. This step is for Undead and Trolls.",
            complete = QuestState(1881, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFALGLADES, 0.6180, 0.5240, "Cain Firesong",
                    "Travel to Cain Firesong in Tirisfal Glades."),
            },
        },
        {
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Speak with Anastasia to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "accept-1881-speak-with-anastasia" },
            complete = QuestState(1881, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Balnir Farmstead from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "turnin-1881-speak-with-anastasia" },
            complete = QuestState(1882, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { class = 8 },
                    { race = { 5, 8 } },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Balnir Farmstead to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
            dependsOn = { "accept-1882-the-balnir-farmstead" },
            complete = QuestState(1882, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8500, 0.1020, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell in Undercity."),
            },
        },
        {
            id = "accept-8250-magecraft",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Magecraft from Pierce Shackleton in Undercity.",
            complete = QuestState(8250, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8540, 0.1380, "Pierce Shackleton",
                    "Travel to Pierce Shackleton in Undercity.", { map = { MAP.STORMWINDCITY, MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.STORMWINDCITY, 0.3800, 0.8160, "Maginor Dumas",
                    "Travel to Maginor Dumas in Stormwind City.", { map = { MAP.IRONFORGE, MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.IRONFORGE, 0.2680, 0.0840, "Dink",
                    "Travel to Dink in Ironforge.", { map = { MAP.ORGRIMMAR, MAP.THUNDERBLUFF } }),
                Point(MAP.ORGRIMMAR, 0.3900, 0.8600, "Uthel'nay",
                    "Travel to Uthel'nay in Orgrimmar.", { map = { MAP.THUNDERBLUFF } }),
                Point(MAP.THUNDERBLUFF, 0.2260, 0.1480, "Archmage Shymm",
                    "Travel to Archmage Shymm in Thunder Bluff."),
            },
        },
        {
            id = "turnin-8250-magecraft",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Magecraft to Sanath Lim-yo in Azshara.",
            dependsOn = { "accept-8250-magecraft" },
            complete = QuestState(8250, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2800, 0.5000, "Sanath Lim-yo",
                    "Travel to Sanath Lim-yo in Azshara."),
            },
        },
        {
            id = "accept-8251-magic-dust",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept Magic Dust from Archmage Xylem in Azshara.",
            complete = QuestState(8251, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "objective-8251-magic-dust",
            kind = "objective",
            priority = 890,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Magic Dust: Glittering Dust.",
            dependsOn = { "accept-8251-magic-dust" },
            complete = QuestState(8251, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.5540, 0.2860, "Blood Elf Surveyor",
                    "Travel to Blood Elf Surveyor in Azshara."),
                Point(MAP.AZSHARA, 0.5640, 0.2880, "Blood Elf Reclaimer",
                    "Travel to Blood Elf Reclaimer in Azshara."),
                Point(MAP.AZSHARA, 0.5940, 0.3140, "Blood Elf Defender",
                    "Travel to Blood Elf Defender in Azshara."),
            },
        },
        {
            id = "turnin-8251-magic-dust",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in Magic Dust to Archmage Xylem in Azshara.",
            dependsOn = { "objective-8251-magic-dust" },
            complete = QuestState(8251, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "accept-8252-the-sirens-coral",
            kind = "accept",
            priority = 910,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Accept The Siren's Coral from Archmage Xylem in Azshara.",
            dependsOn = { "turnin-8251-magic-dust" },
            complete = QuestState(8252, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "objective-8252-the-sirens-coral",
            kind = "objective",
            priority = 920,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "The Siren's Coral: Enchanted Coral.",
            dependsOn = { "accept-8252-the-sirens-coral" },
            complete = QuestState(8252, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.4020, 0.5300, "Spitelash Siren",
                    "Travel to Spitelash Siren in Azshara."),
            },
        },
        {
            id = "turnin-8252-the-sirens-coral",
            kind = "turnin",
            priority = 930,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 50 } },
                },
            },
            text = "Turn in The Siren's Coral to Archmage Xylem in Azshara.",
            dependsOn = { "objective-8252-the-sirens-coral" },
            complete = QuestState(8252, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "accept-9362-warlord-krellian",
            kind = "accept",
            priority = 940,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Warlord Krellian from Archmage Xylem in Azshara.",
            complete = QuestState(9362, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "objective-9362-warlord-krellian",
            kind = "objective",
            priority = 950,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 60 } },
                },
            },
            text = "Warlord Krellian: Prismatic Shell.",
            dependsOn = { "accept-9362-warlord-krellian" },
            complete = QuestState(9362, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.4040, 0.5300, "Warlord Krellian",
                    "Travel to Warlord Krellian in Azshara."),
                Point(MAP.AZSHARA, 0.5440, 0.4840, "Scalebeard",
                    "Travel to Scalebeard in Azshara."),
            },
        },
        {
            id = "turnin-9362-warlord-krellian",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Warlord Krellian to Archmage Xylem in Azshara.",
            dependsOn = { "objective-9362-warlord-krellian" },
            complete = QuestState(9362, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "accept-9364-fragmented-magic",
            kind = "accept",
            priority = 970,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Fragmented Magic from Archmage Xylem in Azshara.",
            dependsOn = { "turnin-9362-warlord-krellian" },
            complete = QuestState(9364, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        },
        {
            id = "turnin-9364-fragmented-magic",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { class = 8 },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Fragmented Magic to Archmage Xylem in Azshara.",
            dependsOn = { "accept-9364-fragmented-magic" },
            complete = QuestState(9364, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2920, 0.4020, "Archmage Xylem",
                    "Travel to Archmage Xylem in Azshara."),
            },
        }
    },
})
