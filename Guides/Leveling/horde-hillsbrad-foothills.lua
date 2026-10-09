local _, ns = ...

-- Forever Casual spine: Hillsbrad Foothills (22-24)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Dungeon quests (SFK) belong in Guides/Dungeons/ShadowfangKeep.lua.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
-- Coordinates not yet validated in Forever.

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

local MAP = {
    SILVERPINE_FOREST = 1421,
    HILLSBRAD_FOOTHILLS = 1424,
    MOONGLADE = 1450,
    THUNDER_BLUFF = 1456,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-horde-hillsbrad-foothills",
    title = "Hillsbrad Foothills",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 22 } },
        },
    },
    goals = {
        {
            id = "turnin-5644-devouring-plague",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 5 },
            } },
            text = "Turn in Devouring Plague.",
            complete = QuestState(5644, "completed"),
            route = {
                Point(1458, 0.4926, 0.1712, "Devouring Plague",
                    "Travel to Devouring Plague."),
            },
        },
        {
            id = "turnin-264-until-death-do-us-part",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Until Death Do Us Part.",
            complete = QuestState(264, "completed"),
            route = {
                Point(1456, 0.2981, 0.2982, "Until Death Do Us Part",
                    "Travel to Until Death Do Us Part."),
            },
        },
        {
            id = "turnin-3301-mura-runetotem",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mura Runetotem.",
            complete = QuestState(3301, "completed"),
            route = {
                Point(1421, 0.4291, 0.4199, "Mura Runetotem",
                    "Travel to Mura Runetotem."),
            },
        },
        {
            id = "accept-493-journey-to-hillsbrad-foothills",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Journey to Hillsbrad Foothills.",
            complete = QuestState(493, "activeOrCompleted"),
            route = {
                Point(1421, 0.4280, 0.4087, "Journey to Hillsbrad Foothills",
                    "Travel to Journey to Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-494-time-to-strike",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Time To Strike.",
            complete = QuestState(494, "activeOrCompleted"),
            route = {
                Point(1424, 0.2078, 0.4740, "Time To Strike",
                    "Travel to Time To Strike."),
            },
        },
        {
            id = "turnin-493-journey-to-hillsbrad-foothills",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Journey to Hillsbrad Foothills.",
            complete = QuestState(493, "completed"),
            dependsOn = { "accept-493-journey-to-hillsbrad-foothills" },
            route = {
                Point(1424, 0.6144, 0.1906, "Journey to Hillsbrad Foothills",
                    "Travel to Journey to Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-1065-journey-to-tarren-mill",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Journey to Tarren Mill.",
            complete = QuestState(1065, "completed"),
            route = {
                Point(1424, 0.6144, 0.1906, "Journey to Tarren Mill",
                    "Travel to Journey to Tarren Mill."),
            },
        },
        {
            id = "accept-1066-blood-of-innocents",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Blood of Innocents.",
            complete = QuestState(1066, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Blood of Innocents",
                    "Travel to Blood of Innocents."),
            },
        },
        {
            id = "accept-496-elixir-of-suffering",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Suffering.",
            complete = QuestState(496, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Suffering",
                    "Travel to Elixir of Suffering."),
            },
        },
        {
            id = "accept-501-elixir-of-pain",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Pain.",
            complete = QuestState(501, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Pain",
                    "Travel to Elixir of Pain."),
            },
        },
        {
            id = "turnin-2479-hinott-s-assistance",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Turn in Hinott's Assistance.",
            complete = QuestState(2479, "completed"),
            route = {
                Point(1424, 0.6163, 0.1919, "Hinott's Assistance",
                    "Travel to Hinott's Assistance."),
            },
        },
        {
            id = "accept-2480-hinott-s-assistance",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept Hinott's Assistance.",
            complete = QuestState(2480, "activeOrCompleted"),
            route = {
                Point(1424, 0.6163, 0.1919, "Hinott's Assistance",
                    "Travel to Hinott's Assistance."),
            },
        },
        {
            id = "turnin-2480-hinott-s-assistance",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Turn in Hinott's Assistance.",
            complete = QuestState(2480, "completed"),
            dependsOn = { "accept-2480-hinott-s-assistance" },
            route = {
                Point(1424, 0.6158, 0.1897, "Hinott's Assistance",
                    "Travel to Hinott's Assistance."),
            },
        },
        {
            id = "turnin-494-time-to-strike",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Time To Strike.",
            complete = QuestState(494, "completed"),
            dependsOn = { "accept-494-time-to-strike" },
            route = {
                Point(1424, 0.6233, 0.2046, "Time To Strike",
                    "Travel to Time To Strike."),
            },
        },
        {
            id = "accept-527-battle-of-hillsbrad",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Battle of Hillsbrad.",
            complete = QuestState(527, "activeOrCompleted"),
            route = {
                Point(1424, 0.6233, 0.2046, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-567-dangerous",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Dangerous!.",
            complete = QuestState(567, "activeOrCompleted"),
            route = {
                Point(1424, 0.6255, 0.1969, "Dangerous!",
                    "Travel to Dangerous!."),
            },
        },
        {
            id = "accept-549-wanted-syndicate-personnel",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept WANTED: Syndicate Personnel.",
            complete = QuestState(549, "activeOrCompleted"),
            route = {
                Point(1424, 0.6262, 0.2074, "WANTED: Syndicate Personnel",
                    "Travel to WANTED: Syndicate Personnel."),
            },
        },
        {
            id = "accept-498-the-rescue",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept The Rescue.",
            complete = QuestState(498, "activeOrCompleted"),
            route = {
                Point(1424, 0.6323, 0.2066, "The Rescue",
                    "Travel to The Rescue."),
            },
        },
        {
            id = "objective-1536-1-empty-red-waterskin",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Use Empty Red Waterskin.",
            complete = QuestObjective(1536, 1, "Empty Red Waterskin"),
            route = {
                Point(1424, 0.6215, 0.2075, "Empty Red Waterskin",
                    "Travel to Empty Red Waterskin."),
            },
        },
        {
            id = "objective-498-1-jailor-marlgen",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Kill Jailor Marlgen.",
            complete = QuestObjective(498, 1, "Jailor Marlgen"),
            dependsOn = { "accept-498-the-rescue" },
            route = {
                Point(1424, 0.7657, 0.4648, "Jailor Marlgen",
                    "Travel to Jailor Marlgen."),
            },
        },
        {
            id = "objective-498-2-locked-ball-and-chain",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Click Locked ball and chain.",
            complete = QuestObjective(498, 2, "Locked ball and chain"),
            dependsOn = { "accept-498-the-rescue" },
            route = {
                Point(1424, 0.7979, 0.3966, "Locked ball and chain",
                    "Travel to Locked ball and chain."),
            },
        },
        {
            id = "objective-498-1-jailor-eston",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Kill Jailor Eston.",
            complete = QuestObjective(498, 1, "Jailor Eston"),
            dependsOn = { "accept-498-the-rescue" },
            route = {
                Point(1424, 0.7960, 0.4183, "Jailor Eston",
                    "Travel to Jailor Eston."),
            },
        },
        {
            id = "objective-498-1-locked-ball-and-chain",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Click Locked ball and chain.",
            complete = QuestObjective(498, 1, "Locked ball and chain"),
            dependsOn = { "accept-498-the-rescue" },
            route = {
                Point(1424, 0.7533, 0.4150, "Locked ball and chain",
                    "Travel to Locked ball and chain."),
            },
        },
        {
            id = "turnin-1066-blood-of-innocents",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Blood of Innocents.",
            complete = QuestState(1066, "completed"),
            dependsOn = { "accept-1066-blood-of-innocents" },
            route = {
                Point(1424, 0.6144, 0.1906, "Blood of Innocents",
                    "Travel to Blood of Innocents."),
            },
        },
        {
            id = "turnin-496-elixir-of-suffering",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Suffering.",
            complete = QuestState(496, "completed"),
            dependsOn = { "accept-496-elixir-of-suffering" },
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Suffering",
                    "Travel to Elixir of Suffering."),
            },
        },
        {
            id = "accept-499-elixir-of-suffering",
            kind = "accept",
            priority = 260,
            dependsOn = { "turnin-496-elixir-of-suffering" },
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Suffering.",
            complete = QuestState(499, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Suffering",
                    "Travel to Elixir of Suffering."),
            },
        },
        {
            id = "accept-1067-return-to-thunder-bluff",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
            } },
            text = "Accept Return to Thunder Bluff.",
            complete = QuestState(1067, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Return to Thunder Bluff",
                    "Travel to Thunder Bluff."),
            },
        },
        {
            id = "turnin-499-elixir-of-suffering",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Suffering.",
            complete = QuestState(499, "completed"),
            dependsOn = { "accept-499-elixir-of-suffering" },
            route = {
                Point(1424, 0.6152, 0.1920, "Elixir of Suffering",
                    "Travel to Elixir of Suffering."),
            },
        },
        {
            id = "turnin-549-wanted-syndicate-personnel",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in WANTED: Syndicate Personnel.",
            complete = QuestState(549, "completed"),
            dependsOn = { "accept-549-wanted-syndicate-personnel" },
            route = {
                Point(1424, 0.6233, 0.2046, "WANTED: Syndicate Personnel",
                    "Travel to WANTED: Syndicate Personnel."),
            },
        },
        {
            id = "turnin-498-the-rescue",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Rescue.",
            complete = QuestState(498, "completed"),
            dependsOn = { "accept-498-the-rescue", "objective-498-1-jailor-marlgen", "objective-498-2-locked-ball-and-chain", "objective-498-1-jailor-eston", "objective-498-1-locked-ball-and-chain" },
            route = {
                Point(1424, 0.6323, 0.2060, "The Rescue",
                    "Travel to The Rescue."),
            },
        },
        {
            id = "objective-527-4-farmer-getz",
            kind = "objective",
            priority = 310,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Kill Farmer Getz.",
            complete = QuestObjective(527, 4, "Farmer Getz"),
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            route = {
                Point(1424, 0.3674, 0.3944, "Farmer Getz",
                    "Travel to Farmer Getz."),
            },
        },
        {
            id = "objective-527-3-farmer-ray",
            kind = "objective",
            priority = 320,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Kill Farmer Ray.",
            complete = QuestObjective(527, 3, "Farmer Ray"),
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            route = {
                Point(1424, 0.3368, 0.3542, "Farmer Ray",
                    "Travel to Farmer Ray."),
            },
        },
        {
            id = "turnin-501-elixir-of-pain",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Pain.",
            complete = QuestState(501, "completed"),
            dependsOn = { "accept-501-elixir-of-pain" },
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Pain",
                    "Travel to Elixir of Pain."),
            },
        },
        {
            id = "accept-502-elixir-of-pain",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Elixir of Pain.",
            complete = QuestState(502, "activeOrCompleted"),
            route = {
                Point(1424, 0.6144, 0.1906, "Elixir of Pain",
                    "Travel to Elixir of Pain."),
            },
        },
        {
            id = "turnin-527-battle-of-hillsbrad",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(527, "completed"),
            dependsOn = { "accept-527-battle-of-hillsbrad", "objective-527-4-farmer-getz", "objective-527-3-farmer-ray" },
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-528-battle-of-hillsbrad",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Accept Battle of Hillsbrad.",
            complete = QuestState(528, "activeOrCompleted"),
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-546-souvenirs-of-death",
            kind = "accept",
            priority = 370,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Souvenirs of Death.",
            complete = QuestState(546, "activeOrCompleted"),
            route = {
                Point(1424, 0.6213, 0.1968, "Souvenirs of Death",
                    "Travel to Souvenirs of Death."),
            },
        },
        {
            id = "turnin-502-elixir-of-pain",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Elixir of Pain.",
            complete = QuestState(502, "completed"),
            dependsOn = { "accept-502-elixir-of-pain" },
            route = {
                Point(1424, 0.3266, 0.3532, "Elixir of Pain",
                    "Travel to Elixir of Pain."),
            },
        },
        {
            id = "objective-567-4-farmer-kalaba",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Kill Farmer Kalaba.",
            complete = QuestObjective(567, 4, "Farmer Kalaba"),
            dependsOn = { "accept-567-dangerous" },
            route = {
                Point(1424, 0.3440, 0.4580, "Farmer Kalaba",
                    "Travel to Farmer Kalaba."),
            },
        },
        {
            id = "turnin-528-battle-of-hillsbrad",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
            } },
            text = "Turn in Battle of Hillsbrad.",
            complete = QuestState(528, "completed"),
            dependsOn = { "accept-528-battle-of-hillsbrad" },
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "accept-529-battle-of-hillsbrad",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
            } },
            text = "Accept Battle of Hillsbrad.",
            complete = QuestState(529, "activeOrCompleted"),
            route = {
                Point(1424, 0.6233, 0.2045, "Battle of Hillsbrad",
                    "Travel to Battle of Hillsbrad."),
            },
        },
        {
            id = "objective-30-1-half-pendant-of-aquatic-agility",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Use Half Pendant of Aquatic Agility.",
            complete = QuestObjective(30, 1, "Half Pendant of Aquatic Agility"),
            route = {
                Point(1450, 0.3592, 0.4142, "Half Pendant of Aquatic Agility",
                    "Travel to Half Pendant of Aquatic Agility."),
            },
        },
        {
            id = "turnin-30-trial-of-the-sea-lion",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 22 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Turn in Trial of the Sea Lion.",
            complete = QuestState(30, "completed"),
            dependsOn = { "objective-30-1-half-pendant-of-aquatic-agility" },
            route = {
                Point(1450, 0.5621, 0.3064, "Trial of the Sea Lion",
                    "Travel to Trial of the Sea Lion."),
            },
        },
        {
            id = "accept-31-aquatic-form",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 24 } },
                { faction = "Horde" },
                { class = 11 },
            } },
            text = "Accept Aquatic Form.",
            complete = QuestState(31, "activeOrCompleted"),
            route = {
                Point(1450, 0.5621, 0.3064, "Aquatic Form",
                    "Travel to Aquatic Form."),
            },
        },
        {
            id = "woven-accept-95111-an-underrated-talent",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Accept An Underrated Talent from Trevan Rol in The Sepulcher. He gives you a bundle of blacksmithing materials for Ott.",
            complete = QuestState(95111, "activeOrCompleted"),
            route = {
                Point(1421, 0.4340, 0.4100, "Trevan Rol",
                    "Travel to Trevan Rol."),
            },
        },
        {
            id = "woven-turnin-95111-an-underrated-talent",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Turn in An Underrated Talent to Ott in Tarren Mill.",
            complete = QuestState(95111, "completed"),
            route = {
                Point(1424, 0.6040, 0.2600, "Ott",
                    "Travel to Ott."),
            },
        },
        {
            id = "woven-accept-95125-ott-s-masterwork",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Accept Ott's Masterwork from Ott in Tarren Mill.",
            complete = QuestState(95125, "activeOrCompleted"),
            route = {
                Point(1424, 0.6040, 0.2600, "Ott",
                    "Travel to Ott."),
            },
        },
        {
            id = "woven-objective-95125-ott-s-masterwork",
            kind = "objective",
            priority = 560,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Watch Ott forge the blade in Tarren Mill.",
            complete = QuestState(95125, "complete"),
            route = {
                Point(1424, 0.6040, 0.2600, "Ott",
                    "Travel to Ott."),
            },
        },
        {
            id = "woven-turnin-95125-ott-s-masterwork",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { class = 2 },
                    { race = 5 },
                },
            },
            text = "Turn in Ott's Masterwork to Ott in Tarren Mill.",
            complete = QuestState(95125, "completed"),
            route = {
                Point(1424, 0.6040, 0.2600, "Ott",
                    "Travel to Ott."),
            },
        },
    },
})
