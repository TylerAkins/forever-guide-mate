local _, ns = ...

-- Horde Era leveling route for the Burning Steppes, levels 53-54.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BURNING_STEPPES = 1428,
    THUNDER_BLUFF = 1456,
    BARRENS = 1413,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
    BADLANDS = 1418,
    AZSHARA = 1447,
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
    id = "leveling-era-53-54-burning-steppes",
    title = "53-54 Burning Steppes (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 53 } },
        },
    },
    goals = {
        {
            id = "travel-3761-elder-rise",
            kind = "travel",
            priority = 10,
            text = "Travel to Elder Rise.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7854, 0.2853, "Elder Rise",
                    "Travel to Elder Rise."),
            },
        },
        {
            id = "accept-3782-morrowgrain-research",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 3761, state = "completed" } },
                },
            },
            text = "Accept Morrowgrain Research from Archdruid Hamuul Runetotem in Elder Rise.",
            complete = QuestState(3782, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7930, 0.2845, "Archdruid Hamuul Runetotem",
                    "Travel to Archdruid Hamuul Runetotem."),
            },
        },
        {
            id = "turnin-3782-morrowgrain-research",
            kind = "turnin",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 3761, state = "completed" } },
                },
            },
            text = "Turn in Morrowgrain Research to Bashana Runetotem in Elder Rise.",
            dependsOn = { "accept-3782-morrowgrain-research" },
            complete = QuestState(3782, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7099, 0.3409, "Bashana Runetotem",
                    "Travel to Bashana Runetotem."),
            },
        },
        {
            id = "accept-3786-morrowgrain-research",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 3761, state = "completed" } },
                },
            },
            text = "Accept Morrowgrain Research from Bashana Runetotem in Elder Rise.",
            complete = QuestState(3786, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.7098, 0.3403, "Bashana Runetotem",
                    "Travel to Bashana Runetotem."),
            },
        },
        {
            id = "accept-4146-zapper-fuel",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 4147, state = "completed" } },
                },
            },
            text = "Accept Zapper Fuel from Liv Rizzlefix in Ratchet.",
            complete = QuestState(4146, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6245, 0.3872, "Liv Rizzlefix",
                    "Travel to Liv Rizzlefix."),
            },
        },
        {
            id = "accept-3504-betrayed",
            kind = "accept",
            priority = 60,
            text = "Accept Betrayed from Belgrom Rockmaul in Valley of Honor.",
            complete = QuestState(3504, "activeOrCompleted"),
            route = {
                Point(MAP.ORGRIMMAR, 0.7515, 0.3430, "Belgrom Rockmaul",
                    "Travel to Belgrom Rockmaul."),
            },
        },
        {
            id = "travel-the-apothecarium",
            kind = "travel",
            priority = 70,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4133, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to The Apothecarium in Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.5007, 0.6811, "The Apothecarium",
                    "Travel to The Apothecarium."),
            },
        },
        {
            id = "accept-4133-vivian-lagrave",
            kind = "accept",
            priority = 80,
            text = "Accept Vivian Lagrave from Apothecary Zinge in The Apothecarium.",
            complete = QuestState(4133, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5007, 0.6811, "Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "travel-kargath",
            kind = "travel",
            priority = 90,
            text = "Travel to Kargath.",
            route = {
                Point(MAP.BADLANDS, 0.0291, 0.4778, "Kargath",
                    "Travel to Kargath."),
            },
        },
        {
            id = "turnin-4133-vivian-lagrave",
            kind = "turnin",
            priority = 100,
            text = "Turn in Vivian Lagrave to Shadowmage Vivian Lagrave in Kargath.",
            dependsOn = { "accept-4133-vivian-lagrave" },
            complete = QuestState(4133, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0291, 0.4778, "Shadowmage Vivian Lagrave",
                    "Travel to Shadowmage Vivian Lagrave."),
            },
        },
        {
            id = "accept-4061-the-rise-of-the-machines",
            kind = "accept",
            priority = 110,
            text = "Accept The Rise of the Machines from Hierophant Theodora Mulvadania in Kargath.",
            complete = QuestState(4061, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0301, 0.4783, "Hierophant Theodora Mulvadania",
                    "Travel to Hierophant Theodora Mulvadania."),
            },
        },
        {
            id = "accept-3821-dreadmaul-rock",
            kind = "accept",
            priority = 120,
            text = "Accept Dreadmaul Rock from Thal'trak Proudtusk in Kargath.",
            complete = QuestState(3821, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0336, 0.4805, "Thal'trak Proudtusk",
                    "Travel to Thal'trak Proudtusk."),
            },
        },
        {
            id = "travel-4726-flame-crest",
            kind = "travel",
            priority = 130,
            text = "Travel to Flame Crest.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.6520, 0.2389, "Flame Crest",
                    "Travel to Flame Crest."),
            },
        },
        {
            id = "accept-4726-broodling-essence",
            kind = "accept",
            priority = 140,
            text = "Accept Broodling Essence from Tinkee Steamboil in Flame Crest.",
            complete = QuestState(4726, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6520, 0.2389, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            priority = 150,
            text = "Accept Tablet of the Seven from Maxwort Uberglint in Flame Crest.",
            complete = QuestState(4296, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6520, 0.2389, "Maxwort Uberglint",
                    "Travel to Maxwort Uberglint."),
            },
        },
        {
            id = "objective-4726-broodling-essence",
            kind = "objective",
            priority = 160,
            text = "Use Draco-Incarcinatrix 900 on 8 Black Broodling before you kill them in Dreadmaul Rock.",
            dependsOn = { "accept-4726-broodling-essence" },
            complete = QuestState(4726, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7849, 0.2751, "Black Broodling",
                    "Travel to Black Broodling."),
            },
        },
        {
            id = "travel-4022-slither-rock",
            kind = "travel",
            priority = 170,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4023, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Slither Rock.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.9366, 0.3210, "Slither Rock",
                    "Travel to Slither Rock."),
            },
        },
        {
            id = "accept-4022-a-taste-of-flame",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4023, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept A Taste of Flame from Cyrus Therepentous in Slither Rock.",
            complete = QuestState(4022, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9366, 0.3210, "Continue toward A Taste of Flame",
                    "Continue toward A Taste of Flame."),
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "objective-4022-a-taste-of-flame",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4023, state = "activeOrCompleted" } } },
                },
            },
            text = "Speak to Cyrus Therepentous with Black Dragonflight Molt in Slither Rock.",
            dependsOn = { "accept-4022-a-taste-of-flame" },
            complete = QuestState(4022, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "turnin-4022-a-taste-of-flame",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 4023, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in A Taste of Flame to Cyrus Therepentous in Slither Rock.",
            dependsOn = { "objective-4022-a-taste-of-flame" },
            complete = QuestState(4022, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.9505, 0.3157, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "travel-3822-dreadmaul-rock",
            kind = "travel",
            priority = 210,
            text = "Travel to Dreadmaul Rock.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.7685, 0.3288, "Dreadmaul Rock",
                    "Travel to Dreadmaul Rock."),
            },
        },
        {
            id = "turnin-3821-dreadmaul-rock",
            kind = "turnin",
            priority = 220,
            text = "Turn in Dreadmaul Rock to Cyrus Therepentous in Dreadmaul Rock.",
            dependsOn = { "accept-3821-dreadmaul-rock" },
            complete = QuestState(3821, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7685, 0.3288, "Continue toward Dreadmaul Rock",
                    "Continue toward Dreadmaul Rock."),
                Point(MAP.BURNING_STEPPES, 0.7587, 0.3804, "Continue toward Dreadmaul Rock",
                    "Continue toward Dreadmaul Rock."),
                Point(MAP.BURNING_STEPPES, 0.7788, 0.3834, "Continue toward Dreadmaul Rock",
                    "Continue toward Dreadmaul Rock."),
                Point(MAP.BURNING_STEPPES, 0.7986, 0.4550, "Cyrus Therepentous",
                    "Travel to Cyrus Therepentous."),
            },
        },
        {
            id = "accept-3822-krom-grul",
            kind = "accept",
            priority = 230,
            text = "Accept Krom'Grul from Sha'ni Proudtusk in Dreadmaul Rock.",
            complete = QuestState(3822, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7986, 0.4550, "Sha'ni Proudtusk",
                    "Travel to Sha'ni Proudtusk."),
            },
        },
        {
            id = "objective-3822-krom-grul",
            kind = "objective",
            priority = 240,
            text = "Kill Krom'Grul and collect Sha'ni's Nose-Ring in Dreadmaul Rock, he spawns in 1 of 3 cave in Dreadmaul Rock You can see the cave entrances on your world map.",
            dependsOn = { "accept-3822-krom-grul" },
            complete = QuestState(3822, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.7973, 0.4734, "Krom'Grul",
                    "Travel to Krom'Grul."),
            },
        },
        {
            id = "travel-4061-ruins-of-thaurissan",
            kind = "travel",
            priority = 250,
            text = "Travel to Ruins of Thaurissan.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.5831, 0.3703, "Ruins of Thaurissan",
                    "Travel to Ruins of Thaurissan."),
            },
        },
        {
            id = "objective-4061-the-rise-of-the-machines",
            kind = "objective",
            priority = 260,
            text = "Kill War Reaver and collect Fractured Elemental Shard in Ruins of Thaurissan.",
            dependsOn = { "accept-4061-the-rise-of-the-machines" },
            complete = QuestState(4061, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.5831, 0.3703, "War Reaver",
                    "Travel to War Reaver."),
            },
        },
        {
            id = "objective-4296-tablet-of-the-seven",
            kind = "objective",
            priority = 270,
            text = "Collect Tablet Transcript from the tablet in Ruins of Thaurissan.",
            dependsOn = { "accept-4296-tablet-of-the-seven" },
            complete = QuestState(4296, "complete"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.5403, 0.4069, "Ruins of Thaurissan",
                    "Travel to Ruins of Thaurissan."),
            },
        },
        {
            id = "travel-4808-flame-crest",
            kind = "travel",
            priority = 280,
            text = "Travel to Flame Crest.",
            route = {
                Point(MAP.BURNING_STEPPES, 0.6525, 0.2398, "Flame Crest",
                    "Travel to Flame Crest."),
            },
        },
        {
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            priority = 290,
            text = "Turn in Broodling Essence to Tinkee Steamboil in Flame Crest.",
            dependsOn = { "objective-4726-broodling-essence" },
            complete = QuestState(4726, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6525, 0.2398, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            priority = 300,
            text = "Accept Felnok Steelspring from Tinkee Steamboil in Flame Crest.",
            complete = QuestState(4808, "activeOrCompleted"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6524, 0.2388, "Tinkee Steamboil",
                    "Travel to Tinkee Steamboil."),
            },
        },
        {
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            priority = 310,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint in Flame Crest.",
            dependsOn = { "objective-4296-tablet-of-the-seven" },
            complete = QuestState(4296, "completed"),
            route = {
                Point(MAP.BURNING_STEPPES, 0.6519, 0.2390, "Maxwort Uberglint",
                    "Travel to Maxwort Uberglint."),
            },
        },
        {
            id = "turnin-3822-krom-grul",
            kind = "turnin",
            priority = 320,
            text = "Turn in Krom'Grul to Thal'trak Proudtusk in Kargath.",
            dependsOn = { "objective-3822-krom-grul" },
            complete = QuestState(3822, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0338, 0.4804, "Thal'trak Proudtusk",
                    "Travel to Thal'trak Proudtusk."),
            },
        },
        {
            id = "turnin-4061-the-rise-of-the-machines",
            kind = "turnin",
            priority = 330,
            text = "Turn in The Rise of the Machines to Hierophant Theodora Mulvadania in Kargath.",
            dependsOn = { "objective-4061-the-rise-of-the-machines" },
            complete = QuestState(4061, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0306, 0.4785, "Hierophant Theodora Mulvadania",
                    "Travel to Hierophant Theodora Mulvadania."),
            },
        },
        {
            id = "accept-4062-the-rise-of-the-machines",
            kind = "accept",
            priority = 340,
            text = "Accept The Rise of the Machines from Hierophant Theodora Mulvadania in Kargath.",
            complete = QuestState(4062, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0309, 0.4789, "Hierophant Theodora Mulvadania",
                    "Travel to Hierophant Theodora Mulvadania."),
            },
        },
        {
            id = "turnin-4062-the-rise-of-the-machines",
            kind = "turnin",
            priority = 350,
            text = "Turn in The Rise of the Machines to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "accept-4062-the-rise-of-the-machines" },
            complete = QuestState(4062, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2595, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "travel-3505-valormok",
            kind = "travel",
            priority = 360,
            text = "Travel to Valormok in (map:1447).",
            route = {
                Point(MAP.AZSHARA, 0.2228, 0.5150, "Valormok",
                    "Travel to Valormok."),
            },
        },
        {
            id = "turnin-3504-betrayed",
            kind = "turnin",
            priority = 370,
            text = "Turn in Betrayed to Ag'tor Bloodfist in Valormok.",
            dependsOn = { "accept-3504-betrayed" },
            complete = QuestState(3504, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2228, 0.5148, "Ag'tor Bloodfist",
                    "Travel to Ag'tor Bloodfist."),
            },
        },
        {
            id = "accept-3505-betrayed",
            kind = "accept",
            priority = 380,
            text = "Accept Betrayed from Ag'tor Bloodfist in Valormok.",
            complete = QuestState(3505, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2228, 0.5150, "Ag'tor Bloodfist",
                    "Travel to Ag'tor Bloodfist."),
            },
        },
        {
            id = "travel-3601-legash-encampment",
            kind = "travel",
            priority = 390,
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
            priority = 400,
            text = "Accept Kim'jael Indeed! from Kim'jael in Legash Encampment.",
            complete = QuestState(3601, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.5341, 0.2177, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "objective-3505-1-find-magus-rimtori-s-camp",
            kind = "objective",
            priority = 410,
            text = "Find Magus Rimtori's camp in Thalassian Base Camp.",
            dependsOn = { "accept-3505-betrayed" },
            complete = QuestObjective(3505, 1),
            route = {
                Point(MAP.AZSHARA, 0.5935, 0.3097, "Thalassian Base Camp",
                    "Travel to Thalassian Base Camp."),
            },
        },
        {
            id = "objective-3601-kim-jael-indeed",
            kind = "objective",
            priority = 420,
            text = "Collect all the required parts from the crates in Thalassian Base Camp.",
            dependsOn = { "accept-3601-kim-jael-indeed" },
            complete = QuestState(3601, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.5857, 0.2899, "Thalassian Base Camp",
                    "Travel to Thalassian Base Camp."),
            },
        },
        {
            id = "objective-3505-betrayed",
            kind = "objective",
            priority = 430,
            text = "Kill 10 Blood Elf Reclaimer and 10 Blood Elf Surveyor in Thalassian Base Camp.",
            dependsOn = { "accept-3505-betrayed" },
            complete = QuestState(3505, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.5831, 0.2845, "Blood Elf Reclaimer",
                    "Travel to Blood Elf Reclaimer."),
            },
        },
        {
            id = "turnin-3505-betrayed",
            kind = "turnin",
            priority = 440,
            text = "Turn in Betrayed in Thalassian Base Camp.",
            dependsOn = { "objective-3505-1-find-magus-rimtori-s-camp", "objective-3505-betrayed" },
            complete = QuestState(3505, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.5949, 0.3128, "Thalassian Base Camp",
                    "Travel to Thalassian Base Camp."),
            },
        },
        {
            id = "accept-3506-betrayed",
            kind = "accept",
            priority = 450,
            text = "Accept Betrayed in Thalassian Base Camp.",
            complete = QuestState(3506, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.5949, 0.3128, "Thalassian Base Camp",
                    "Travel to Thalassian Base Camp."),
            },
        },
        {
            id = "objective-3506-betrayed",
            kind = "objective",
            priority = 460,
            text = "Destroy the 3 Arcane Focusing Crystal to summon Magus Rimtori, kill her and collect Head of Magus Rimtori in Thalassian Base Camp.",
            dependsOn = { "accept-3506-betrayed" },
            complete = QuestState(3506, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.5951, 0.3141, "Magus Rimtori",
                    "Travel to Magus Rimtori."),
            },
        },
        {
            id = "travel-5534-legash-encampment",
            kind = "travel",
            priority = 470,
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
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            priority = 480,
            text = "Turn in Kim'jael Indeed! to Kim'jael in Legash Encampment.",
            dependsOn = { "objective-3601-kim-jael-indeed" },
            complete = QuestState(3601, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.5344, 0.2180, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            priority = 490,
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael in Legash Encampment.",
            complete = QuestState(5534, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.5344, 0.2180, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "travel-5534-the-shattered-strand",
            kind = "travel",
            priority = 500,
            text = "Travel to The Shattered Strand.",
            route = {
                Point(MAP.AZSHARA, 0.4542, 0.3715, "The Shattered Strand",
                    "Travel to The Shattered Strand."),
            },
        },
        {
            id = "objective-5534-kim-jael-s-missing-equipment",
            kind = "objective",
            priority = 510,
            text = "Kill Nagas in The Shattered Strand until you collect Some Rune.",
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
            complete = QuestState(5534, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.4868, 0.4270, "Spitelash Siren",
                    "Travel to Spitelash Siren."),
            },
        },
        {
            id = "travel-3507-valormok",
            kind = "travel",
            priority = 520,
            text = "Travel to Valormok.",
            route = {
                Point(MAP.AZSHARA, 0.4590, 0.3851, "Continue toward Valormok",
                    "Continue toward Valormok."),
                Point(MAP.AZSHARA, 0.2229, 0.5145, "Valormok",
                    "Travel to Valormok."),
            },
        },
        {
            id = "turnin-3506-betrayed",
            kind = "turnin",
            priority = 530,
            text = "Turn in Betrayed to Ag'tor Bloodfist in Valormok.",
            dependsOn = { "objective-3506-betrayed" },
            complete = QuestState(3506, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2229, 0.5145, "Ag'tor Bloodfist",
                    "Travel to Ag'tor Bloodfist."),
            },
        },
        {
            id = "accept-3507-betrayed",
            kind = "accept",
            priority = 540,
            text = "Accept Betrayed from Ag'tor Bloodfist in Valormok.",
            complete = QuestState(3507, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2229, 0.5145, "Ag'tor Bloodfist",
                    "Travel to Ag'tor Bloodfist."),
            },
        },
        {
            id = "travel-legash-encampment",
            kind = "travel",
            priority = 550,
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
            priority = 560,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael in Legash Encampment.",
            dependsOn = { "objective-5534-kim-jael-s-missing-equipment" },
            complete = QuestState(5534, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.5344, 0.2181, "Kim'jael",
                    "Travel to Kim'jael."),
            },
        },
        {
            id = "travel-valley-of-honor",
            kind = "travel",
            priority = 570,
            text = "Travel to Valley of Honor in Orgrimmar.",
            route = {
                Point(MAP.ORGRIMMAR, 0.7520, 0.3421, "Valley of Honor",
                    "Travel to Valley of Honor."),
            },
        },
        {
            id = "turnin-3507-betrayed",
            kind = "turnin",
            priority = 580,
            text = "Turn in Betrayed to Belgrom Rockmaul in Valley of Honor.",
            dependsOn = { "accept-3507-betrayed" },
            complete = QuestState(3507, "completed"),
            route = {
                Point(MAP.ORGRIMMAR, 0.7520, 0.3421, "Belgrom Rockmaul",
                    "Travel to Belgrom Rockmaul."),
            },
        },
    },
})
