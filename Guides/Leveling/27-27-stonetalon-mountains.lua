local _, ns = ...

-- Horde leveling route for Stonetalon Mountains, levels 27-27.
-- Mirkweed Pods for Pigments for Paints are collected at Mirkfallon Lake with the Gaea Seeds, and turned in to Tah Winterhoof on the Thunder Bluff visit.
-- Scramble, Wet Job, and Rekindle are the Pocket Litter chain. No chapter stops at Pocket Litter, and Wet Job is level 32. Stonetalon Supply Run has no start pin. Bloodfury Trinkets is on the 23-25 pass. The Horn of Xelthos starts at a Dead Drop in Silverpine.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STONETALON = 1442,
    BARRENS = 1413,
    THUNDER_BLUFF = 1456,
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
    id = "leveling-era-27-27-stonetalon-mountains",
    title = "27-27 Stonetalon Mountains",
    category = "Leveling Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 27 } },
        },
    },
    goals = {
        {
            id = "accept-1087-cenarius-legacy",
            kind = "accept",
            priority = 20,
            conditions = { level = { min = 20 } },
            text = "Accept Cenarius' Legacy from Braelyn Firehand in Sun Rock Retreat.",
            complete = QuestState(1087, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "accept-6282-harpies-threaten",
            kind = "accept",
            priority = 30,
            conditions = { level = { min = 18 } },
            text = "Accept Harpies Threaten from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(6282, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-6393-elemental-war",
            kind = "accept",
            priority = 40,
            conditions = { level = { min = 19 } },
            text = "Accept Elemental War from Tsunaman in Sun Rock Retreat.",
            complete = QuestState(6393, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6427, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "note-6301-sun-rock-retreat",
            kind = "note",
            priority = 50,
            text = "Set your hearth in Sun Rock Retreat with Innkeeper Jayka.",
            route = {
                Point(MAP.STONETALON, 0.4750, 0.6210, "Innkeeper Jayka",
                    "Travel to Innkeeper Jayka."),
            },
        },
        {
            id = "turnin-6401-kaya-s-alive",
            kind = "turnin",
            priority = 60,
            conditions = { level = { min = 12 } },
            text = "Turn in Kaya's Alive to Tammra Windfield in Sun Rock Retreat.",
            complete = QuestState(6401, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "accept-6301-cycle-of-rebirth",
            kind = "accept",
            priority = 70,
            conditions = { level = { min = 17 } },
            text = "Accept Cycle of Rebirth from Tammra Windfield in Sun Rock Retreat.",
            complete = QuestState(6301, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "objective-6301-cycle-of-rebirth",
            kind = "objective",
            priority = 80,
            conditions = { level = { min = 17 } },
            text = "Pick up the Gaea Seed around Mirkfallon Lake.",
            dependsOn = { "accept-6301-cycle-of-rebirth" },
            complete = QuestState(6301, "complete"),
            route = {
                Point(MAP.STONETALON, 0.4800, 0.4100, "Cycle of Rebirth",
                    "Travel to Cycle of Rebirth."),
            },
        },
        {
            id = "objective-97538-pigments-for-paints",
            kind = "objective",
            priority = 85,
            conditions = {
                all = {
                    { level = { min = 26 } },
                    { quest = { id = 97538, state = "active" } },
                },
            },
            useClientPin = true,
            text = "Collect 30 Mirkweed Pods in Mirkfallon Lake. No saved spot for the pods, so the guide follows the pin in your quest log.",
            complete = QuestState(97538, "complete"),
            route = {
                Point(MAP.STONETALON, 0.4800, 0.4100, "Mirkfallon Lake",
                    "Travel to Mirkfallon Lake."),
            },
        },
        {
            id = "objective-1058-jin-zil-s-forest-magic",
            kind = "objective",
            priority = 90,
            conditions = { level = { min = 20 } },
            text = "These mobs can be found in Stonetalon Peak. Kill Sap Beast for the 5 Stonetalon Sap, Twilight Runner for the 5 Twilight Whisker, Antlered Courser for the 30 Courser Eye and Fey Dragon for the Fey Dragon Scale.",
            complete = QuestState(1058, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.1000, "Sap Beast",
                    "Travel to Sap Beast."),
            },
        },
        {
            id = "objective-1087-cenarius-legacy",
            kind = "objective",
            priority = 100,
            conditions = { level = { min = 20 } },
            text = "Kill 4 Son of Cenarius, 4 Daughter of Cenarius and 4 Cenarion Botanist in the center of Stonetalon Peak.",
            dependsOn = { "accept-1087-cenarius-legacy" },
            complete = QuestState(1087, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3700, 0.1500, "Son of Cenarius",
                    "Travel to Son of Cenarius."),
            },
        },
        {
            id = "turnin-6301-cycle-of-rebirth",
            kind = "turnin",
            priority = 110,
            conditions = { level = { min = 17 } },
            text = "Turn in Cycle of Rebirth to Tammra Windfield in Sun Rock Retreat.",
            dependsOn = { "objective-6301-cycle-of-rebirth" },
            complete = QuestState(6301, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "accept-6381-new-life",
            kind = "accept",
            priority = 120,
            conditions = { level = { min = 17 } },
            text = "Accept New Life from Tammra Windfield in Sun Rock Retreat.",
            complete = QuestState(6381, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "turnin-1087-cenarius-legacy",
            kind = "turnin",
            priority = 130,
            conditions = { level = { min = 20 } },
            text = "Turn in Cenarius' Legacy to Braelyn Firehand in Sun Rock Retreat.",
            dependsOn = { "objective-1087-cenarius-legacy" },
            complete = QuestState(1087, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "turnin-1095-further-instructions",
            kind = "turnin",
            priority = 140,
            conditions = { level = { min = 16 } },
            text = "Turn in Further Instructions to Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1095, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "accept-1096-gerenzo-wrenchwhistle",
            kind = "accept",
            priority = 150,
            conditions = { level = { min = 16 } },
            text = "Accept Gerenzo Wrenchwhistle from Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1096, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "objective-1096-gerenzo-wrenchwhistle",
            kind = "objective",
            priority = 170,
            conditions = { level = { min = 16 } },
            text = "Kill Gerenzo Wrenchwhistle at the Cragpool Lake in the Water Wheel and take Gerenzo's Mechanical Arm.",
            dependsOn = { "accept-1096-gerenzo-wrenchwhistle" },
            complete = QuestState(1096, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6900, 0.4010, "Continue toward Gerenzo Wrenchwhistle",
                    "Continue toward Gerenzo Wrenchwhistle."),
                Point(MAP.STONETALON, 0.6790, 0.3770, "Continue toward Gerenzo Wrenchwhistle",
                    "Continue toward Gerenzo Wrenchwhistle."),
                Point(MAP.STONETALON, 0.6400, 0.3900, "Gerenzo Wrenchwhistle",
                    "Travel to Gerenzo Wrenchwhistle."),
            },
        },
        {
            id = "objective-1068-1-xt-4",
            kind = "objective",
            priority = 190,
            conditions = { level = { min = 13 } },
            text = "Kill XT:4 found roaming on the upper side of Windshear Crag.",
            complete = QuestObjective(1068, 1),
            route = {
                Point(MAP.STONETALON, 0.6540, 0.5720, "XT:4",
                    "Travel to XT:4."),
            },
        },
        {
            id = "objective-1068-2-xt-4",
            kind = "objective",
            priority = 200,
            conditions = { level = { min = 13 } },
            text = "Kill XT:9 found roaming on the upper side of Windshear Crag.",
            complete = QuestObjective(1068, 2),
            route = {
                Point(MAP.STONETALON, 0.6360, 0.5610, "XT:9",
                    "Travel to XT:9."),
            },
        },
        {
            id = "turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            priority = 210,
            conditions = { level = { min = 16 } },
            text = "Turn in Gerenzo Wrenchwhistle to Ziz Fizziks in Windshear Crag.",
            dependsOn = { "objective-1096-gerenzo-wrenchwhistle" },
            complete = QuestState(1096, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6252, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "turnin-1058-jin-zil-s-forest-magic",
            kind = "turnin",
            priority = 220,
            conditions = { level = { min = 20 } },
            text = "Turn in Jin'Zil's Forest Magic to Witch Doctor Jin'Zil in Malaka'jin.",
            dependsOn = { "objective-1058-jin-zil-s-forest-magic" },
            complete = QuestState(1058, "completed"),
            route = {
                Point(MAP.STONETALON, 0.7455, 0.9784, "Witch Doctor Jin'Zil",
                    "Travel to Witch Doctor Jin'Zil."),
            },
        },
        {
            id = "turnin-1068-shredding-machines",
            kind = "turnin",
            priority = 230,
            conditions = { level = { min = 13 } },
            text = "Turn in Shredding Machines to Seereth Stonebreak in The Barrens.",
            dependsOn = { "objective-1068-1-xt-4", "objective-1068-2-xt-4" },
            complete = QuestState(1068, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "objective-6381-new-life",
            kind = "objective",
            priority = 250,
            conditions = { level = { min = 17 } },
            text = "Plant 10 Enchanted Gaea Seeds in Gaea Dirt Mounds west in The Charred Vale.",
            dependsOn = { "accept-6381-new-life" },
            complete = QuestState(6381, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.6700, "The Charred Vale",
                    "Travel to The Charred Vale."),
            },
        },
        {
            id = "objective-6393-elemental-war",
            kind = "objective",
            priority = 260,
            conditions = { level = { min = 19 } },
            text = "Kill Rogue Flame Spirit, Burning Ravager or Burning Destroyer in The Charred Vale for 10 Incendrites.",
            dependsOn = { "accept-6393-elemental-war" },
            complete = QuestState(6393, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.6700, "Rogue Flame Spirit",
                    "Travel to Rogue Flame Spirit."),
            },
        },
        {
            id = "objective-6282-harpies-threaten",
            kind = "objective",
            priority = 270,
            conditions = { level = { min = 18 } },
            text = "Kill the required Bloodfury Harpies in The Charred Vale.",
            dependsOn = { "accept-6282-harpies-threaten" },
            complete = QuestState(6282, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.7600, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "turnin-6381-new-life",
            kind = "turnin",
            priority = 290,
            conditions = { level = { min = 17 } },
            text = "Turn in New Life to Tammra Windfield in Sun Rock Retreat.",
            dependsOn = { "objective-6381-new-life" },
            complete = QuestState(6381, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4745, 0.5846, "Tammra Windfield",
                    "Travel to Tammra Windfield."),
            },
        },
        {
            id = "turnin-6393-elemental-war",
            kind = "turnin",
            priority = 300,
            conditions = { level = { min = 19 } },
            text = "Turn in Elemental War to Tsunaman in Sun Rock Retreat.",
            dependsOn = { "objective-6393-elemental-war" },
            complete = QuestState(6393, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6427, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "turnin-6282-harpies-threaten",
            kind = "turnin",
            priority = 310,
            conditions = { level = { min = 18 } },
            text = "Turn in Harpies Threaten to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6282-harpies-threaten" },
            complete = QuestState(6282, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-5881-calling-in-the-reserves",
            kind = "accept",
            priority = 320,
            conditions = { level = { min = 23 } },
            text = "Accept Calling in the Reserves from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(5881, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "note-6283-sun-rock-retreat",
            kind = "note",
            priority = 330,
            text = "Set your hearth in Sun Rock Retreat with Innkeeper Jayka.",
            route = {
                Point(MAP.STONETALON, 0.4749, 0.6206, "Innkeeper Jayka",
                    "Travel to Innkeeper Jayka."),
            },
        },
        {
            id = "accept-6283-bloodfury-bloodline",
            kind = "accept",
            priority = 340,
            conditions = { level = { min = 18 } },
            text = "Accept Bloodfury Bloodline from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(6283, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4718, 0.6108, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "objective-6283-bloodfury-bloodline",
            kind = "objective",
            priority = 350,
            conditions = { level = { min = 18 } },
            text = "Kill Bloodfury Ripper and get Bloodfury Ripper's Remains in The Charred Vale.",
            dependsOn = { "accept-6283-bloodfury-bloodline" },
            complete = QuestState(6283, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3000, 0.6300, "Bloodfury Ripper",
                    "Travel to Bloodfury Ripper."),
            },
        },
        {
            id = "turnin-6283-bloodfury-bloodline",
            kind = "turnin",
            priority = 360,
            conditions = { level = { min = 18 } },
            text = "Turn in Bloodfury Bloodline to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6283-bloodfury-bloodline" },
            complete = QuestState(6283, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4718, 0.6108, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "turnin-97538-pigments-for-paints",
            kind = "turnin",
            priority = 365,
            conditions = {
                all = {
                    { level = { min = 26 } },
                    { quest = { id = 97538, state = "active" } },
                },
            },
            text = "Turn in Pigments for Paints to Tah Winterhoof in Thunder Bluff.",
            dependsOn = { "objective-97538-pigments-for-paints" },
            complete = QuestState(97538, "completed"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5400, 0.4740, "Tah Winterhoof",
                    "Travel to Tah Winterhoof."),
            },
        },
        {
            id = "accept-1196-the-sacred-flame",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { quest = { id = 1195, state = "completed" } },
                },
            },
            text = "Accept The Sacred Flame from Zangen Stonehoof in Thunder Bluff.",
            complete = QuestState(1196, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5467, 0.5128, "Zangen Stonehoof",
                    "Travel to Zangen Stonehoof."),
            },
        },
    },
})
