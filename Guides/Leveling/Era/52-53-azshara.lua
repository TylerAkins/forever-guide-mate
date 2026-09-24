local _, ns = ...

-- Alliance Era leveling route for Azshara, levels 52-53.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    AZSHARA = 1447,
    TELDRASSIL = 1438,
    DARNASSUS = 1457,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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
    id = "leveling-era-52-53-azshara",
    title = "52-53 Azshara (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 52 } },
        },
    },
    goals = {
        {
            id = "travel-978-rut-theran-village",
            kind = "travel",
            priority = 10,
            text = "Travel to Rut'theran Village in Teldrassil.",
            route = {
                Point(MAP.TELDRASSIL, 0.5549, 0.9205, "Rut'theran Village",
                    "Travel to Rut'theran Village."),
            },
        },
        {
            id = "accept-978-moontouched-wildkin",
            kind = "accept",
            priority = 20,
            text = "Accept Moontouched Wildkin from Erelas Ambersky in Rut'theran Village.",
            complete = QuestState(978, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.5549, 0.9205, "Erelas Ambersky",
                    "Travel to Erelas Ambersky."),
            },
        },
        {
            id = "travel-cenarion-enclave",
            kind = "travel",
            priority = 30,
            text = "Travel to Cenarion Enclave in Darnassus.",
            route = {
                Point(MAP.DARNASSUS, 0.3483, 0.0921, "Cenarion Enclave",
                    "Travel to Cenarion Enclave."),
            },
        },
        {
            id = "accept-3781-morrowgrain-research",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Accept Morrowgrain Research from Archdruid Fandral Staghelm in Cenarion Enclave.",
            complete = QuestState(3781, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3473, 0.0921, "Archdruid Fandral Staghelm",
                    "Travel to Archdruid Fandral Staghelm."),
            },
        },
        {
            id = "turnin-3781-morrowgrain-research",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Turn in Morrowgrain Research to Mathrengyl Bearwalker in Cenarion Enclave.",
            dependsOn = { "accept-3781-morrowgrain-research" },
            complete = QuestState(3781, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3533, 0.0839, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "accept-3785-morrowgrain-research",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Accept Morrowgrain Research from Mathrengyl Bearwalker in Cenarion Enclave.",
            complete = QuestState(3785, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3533, 0.0839, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "note-3449-craftsmen-s-terrace",
            kind = "note",
            priority = 70,
            text = "Set your hearth in Craftsmen's Terrace with Innkeeper Saelienne.",
            route = {
                Point(MAP.DARNASSUS, 0.6742, 0.1557, "Innkeeper Saelienne",
                    "Travel to Innkeeper Saelienne."),
            },
        },
        {
            id = "travel-3449-temple-of-zin-malor",
            kind = "travel",
            priority = 80,
            text = "Travel to Temple of Zin-Malor in Azshara.",
            route = {
                Point(MAP.AZSHARA, 0.3954, 0.5012, "Temple of Zin-Malor",
                    "Travel to Temple of Zin-Malor."),
            },
        },
        {
            id = "objective-3449-2-rubbing-rune-of-jin-yael",
            kind = "objective",
            priority = 90,
            text = "Collect Rubbing: Rune of Jin'yael from Rune of Jin'yael in Temple of Zin-Malor.",
            complete = QuestObjective(3449, 2),
            route = {
                Point(MAP.AZSHARA, 0.3954, 0.5012, "Temple of Zin-Malor",
                    "Travel to Temple of Zin-Malor."),
            },
        },
        {
            id = "objective-3449-1-rubbing-rune-of-beth-amara",
            kind = "objective",
            priority = 100,
            text = "Collect Rubbing: Rune of Beth'Amara from Rune of Beth'Amara in Temple of Zin-Malor.",
            complete = QuestObjective(3449, 1),
            route = {
                Point(MAP.AZSHARA, 0.3680, 0.5320, "Temple of Zin-Malor",
                    "Travel to Temple of Zin-Malor."),
            },
        },
        {
            id = "objective-3449-3-rubbing-rune-of-markri",
            kind = "objective",
            priority = 110,
            text = "Collect Rubbing: Rune of Markri from Rune of Markri in Temple of Zin-Malor.",
            complete = QuestObjective(3449, 3),
            route = {
                Point(MAP.AZSHARA, 0.3936, 0.5559, "Temple of Zin-Malor",
                    "Travel to Temple of Zin-Malor."),
            },
        },
        {
            id = "travel-3601-legash-encampment",
            kind = "travel",
            priority = 120,
            text = "Travel to Legash Encampment.",
            route = {
                Point(MAP.AZSHARA, 0.4622, 0.3947, "Continue toward Legash Encampment",
                    "Continue toward Legash Encampment."),
                Point(MAP.AZSHARA, 0.4489, 0.3656, "Continue toward Legash Encampment",
                    "Continue toward Legash Encampment."),
                Point(MAP.AZSHARA, 0.5328, 0.2015, "Legash Encampment",
                    "Travel to Legash Encampment."),
            },
        },
        {
            id = "accept-3601-kim-jael-indeed",
            kind = "accept",
            priority = 130,
            text = "Accept Kim'jael Indeed! from Kim'jael in Legash Encampment.",
            complete = QuestState(3601, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.5328, 0.2015, "Continue toward Kim'jael Indeed!",
                    "Continue toward Kim'jael Indeed!."),
                Point(MAP.AZSHARA, 0.5316, 0.2146, "Continue toward Kim'jael Indeed!",
                    "Continue toward Kim'jael Indeed!."),
                Point(MAP.AZSHARA, 0.5346, 0.2181, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "objective-3601-kim-jael-indeed",
            kind = "objective",
            priority = 140,
            text = "Collect all the required parts from the crates in Thalassian Base Camp.",
            dependsOn = { "accept-3601-kim-jael-indeed" },
            complete = QuestState(3601, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.5857, 0.2899, "Thalassian Base Camp",
                    "Travel to Thalassian Base Camp."),
            },
        },
        {
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            priority = 150,
            text = "Turn in Kim'jael Indeed! to Kim'jael in Legash Encampment.",
            dependsOn = { "objective-3601-kim-jael-indeed" },
            complete = QuestState(3601, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.5332, 0.2020, "Continue toward Kim'jael Indeed!",
                    "Continue toward Kim'jael Indeed!."),
                Point(MAP.AZSHARA, 0.5326, 0.2153, "Continue toward Kim'jael Indeed!",
                    "Continue toward Kim'jael Indeed!."),
                Point(MAP.AZSHARA, 0.5346, 0.2180, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            priority = 160,
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael in Legash Encampment.",
            complete = QuestState(5534, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.5346, 0.2180, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "travel-5534-the-shattered-strand",
            kind = "travel",
            priority = 170,
            text = "Travel to The Shattered Strand.",
            route = {
                Point(MAP.AZSHARA, 0.4542, 0.3715, "The Shattered Strand",
                    "Travel to The Shattered Strand."),
            },
        },
        {
            id = "objective-5534-kim-jael-s-missing-equipment",
            kind = "objective",
            priority = 180,
            text = "Kill Nagas in The Shattered Strand until you collect Some Rune.",
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
            complete = QuestState(5534, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.4868, 0.4270, "Spitelash Siren",
                    "Travel to Spitelash Siren."),
            },
        },
        {
            id = "travel-5534-legash-encampment",
            kind = "travel",
            priority = 190,
            text = "Travel to Legash Encampment.",
            route = {
                Point(MAP.AZSHARA, 0.4622, 0.3947, "Continue toward Legash Encampment",
                    "Continue toward Legash Encampment."),
                Point(MAP.AZSHARA, 0.4489, 0.3656, "Continue toward Legash Encampment",
                    "Continue toward Legash Encampment."),
                Point(MAP.AZSHARA, 0.5328, 0.2015, "Legash Encampment",
                    "Travel to Legash Encampment."),
            },
        },
        {
            id = "turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            priority = 200,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael in Legash Encampment.",
            dependsOn = { "objective-5534-kim-jael-s-missing-equipment" },
            complete = QuestState(5534, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.5328, 0.2015, "Continue toward Kim'jael's \"Missing\" Equipment",
                    "Continue toward Kim'jael's \"Missing\" Equipment."),
                Point(MAP.AZSHARA, 0.5316, 0.2146, "Continue toward Kim'jael's \"Missing\" Equipment",
                    "Continue toward Kim'jael's \"Missing\" Equipment."),
                Point(MAP.AZSHARA, 0.5346, 0.2182, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "travel-3449-ruins-of-eldarath",
            kind = "travel",
            priority = 210,
            text = "Travel to Ruins of Eldarath.",
            route = {
                Point(MAP.AZSHARA, 0.4235, 0.6412, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "objective-3449-4-rubbing-rune-of-sael-hai",
            kind = "objective",
            priority = 220,
            text = "Collect Rubbing: Rune of Sael'hai from Rune of Sael'hai in Ruins of Eldarath.",
            complete = QuestObjective(3449, 4),
            route = {
                Point(MAP.AZSHARA, 0.4235, 0.6412, "Ruins of Eldarath",
                    "Travel to Ruins of Eldarath."),
            },
        },
        {
            id = "travel-the-ruined-reaches",
            kind = "travel",
            priority = 230,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 3461, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to The Ruined Reaches.",
            route = {
                Point(MAP.AZSHARA, 0.4391, 0.6886, "Continue toward The Ruined Reaches",
                    "Continue toward The Ruined Reaches."),
                Point(MAP.AZSHARA, 0.6228, 0.8198, "Continue toward The Ruined Reaches",
                    "Continue toward The Ruined Reaches."),
                Point(MAP.AZSHARA, 0.6371, 0.8155, "Continue toward The Ruined Reaches",
                    "Continue toward The Ruined Reaches."),
                Point(MAP.AZSHARA, 0.6504, 0.8226, "Continue toward The Ruined Reaches",
                    "Continue toward The Ruined Reaches."),
                Point(MAP.AZSHARA, 0.6703, 0.8295, "Continue toward The Ruined Reaches",
                    "Continue toward The Ruined Reaches."),
                Point(MAP.AZSHARA, 0.7780, 0.9132, "The Ruined Reaches",
                    "Travel to The Ruined Reaches."),
            },
        },
        {
            id = "objective-standard-issue-flare-gun",
            kind = "objective",
            priority = 240,
            text = "Use Standard Issue Flare Gun to summon Pilot Xiggs Fuselighter in The Ruined Reaches.",
            route = {
                Point(MAP.AZSHARA, 0.7781, 0.9145, "Pilot Xiggs Fuselighter",
                    "Travel to Pilot Xiggs Fuselighter."),
            },
        },
        {
            id = "turnin-3449-arcane-runes",
            kind = "turnin",
            priority = 250,
            text = "Turn in Arcane Runes to Pilot Xiggs Fuselighter in The Ruined Reaches.",
            dependsOn = { "objective-3449-2-rubbing-rune-of-jin-yael", "objective-3449-1-rubbing-rune-of-beth-amara", "objective-3449-3-rubbing-rune-of-markri", "objective-3449-4-rubbing-rune-of-sael-hai" },
            complete = QuestState(3449, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.7781, 0.9145, "Pilot Xiggs Fuselighter",
                    "Travel to Pilot Xiggs Fuselighter."),
            },
        },
        {
            id = "accept-3461-return-to-tymor",
            kind = "accept",
            priority = 260,
            text = "Accept Return to Tymor from Pilot Xiggs Fuselighter in The Ruined Reaches.",
            complete = QuestState(3461, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.7781, 0.9145, "Pilot Xiggs Fuselighter",
                    "Travel to Pilot Xiggs Fuselighter."),
            },
        },
        {
            id = "travel-cenarion-enclave-2",
            kind = "travel",
            priority = 270,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Travel or Hearthstone to Cenarion Enclave.",
            route = {
                Point(MAP.DARNASSUS, 0.3535, 0.0829, "Cenarion Enclave",
                    "Travel to Cenarion Enclave."),
            },
        },
        {
            id = "objective-3785-morrowgrain-research",
            kind = "objective",
            priority = 280,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Use Evergreen Pouch every 10 mins to create Evergreen Herb Casing until you get 10 Morrowgrain.",
            dependsOn = { "accept-3785-morrowgrain-research" },
            complete = QuestState(3785, "complete"),
        },
        {
            id = "turnin-3785-morrowgrain-research",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { quest = { id = 3764, state = "completed" } },
                },
            },
            text = "Turn in Morrowgrain Research to Mathrengyl Bearwalker in Cenarion Enclave.",
            dependsOn = { "objective-3785-morrowgrain-research" },
            complete = QuestState(3785, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3535, 0.0829, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
    },
})
