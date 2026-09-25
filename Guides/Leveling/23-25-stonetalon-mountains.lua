local _, ns = ...

-- Horde Era leveling route for Stonetalon Mountains, levels 23-25.
-- Forever quests from the Stonetalon list that sit on this pass are woven in.
-- Left out: Stonetalon Supply Run turns in at Freewind Post. Pigments for Paints starts in Thunder Bluff, and this chapter does not go there.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STONETALON = 1442,
    BARRENS = 1413,
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
    id = "leveling-era-23-25-stonetalon-mountains",
    title = "23-25 Stonetalon Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 23 } },
        },
    },
    goals = {
        {
            id = "accept-1058-jin-zil-s-forest-magic",
            kind = "accept",
            priority = 20,
            text = "Accept Jin'Zil's Forest Magic from Witch Doctor Jin'Zil in Malaka'jin.",
            complete = QuestState(1058, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.7455, 0.9784, "Witch Doctor Jin'Zil",
                    "Travel to Witch Doctor Jin'Zil."),
            },
        },
        {
            id = "accept-1087-cenarius-legacy",
            kind = "accept",
            priority = 40,
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
            priority = 50,
            text = "Accept Harpies Threaten from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(6282, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-86576-bloodfury-trinkets",
            kind = "accept",
            priority = 51,
            conditions = { level = { min = 26 } },
            text = "Accept Bloodfury Trinkets from Maggran Earthbinder at Sun Rock Retreat.",
            complete = QuestState(86576, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4720, 0.6100, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "accept-6393-elemental-war",
            kind = "accept",
            priority = 60,
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
            priority = 70,
            text = "Set your hearth in Sun Rock Retreat with Innkeeper Jayka.",
            route = {
                Point(MAP.STONETALON, 0.4750, 0.6210, "Innkeeper Jayka",
                    "Travel to Innkeeper Jayka."),
            },
        },
        {
            id = "turnin-6401-kaya-s-alive",
            kind = "turnin",
            priority = 80,
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
            priority = 90,
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
            priority = 110,
            text = "Pick up the Gaea Seed around Mirkfallon Lake.",
            dependsOn = { "accept-6301-cycle-of-rebirth" },
            complete = QuestState(6301, "complete"),
            route = {
                Point(MAP.STONETALON, 0.4800, 0.4100, "Mirkfallon Lake",
                    "Travel to Mirkfallon Lake."),
            },
        },
        {
            id = "objective-1058-jin-zil-s-forest-magic",
            kind = "objective",
            priority = 130,
            text = "These mobs can be found in Stonetalon Peak. Kill Sap Beast for the 5 Stonetalon Sap, Twilight Runner for the 5 Twilight Whisker, Antlered Courser for the 30 Courser Eye and Fey Dragon for the Fey Dragon Scale.",
            dependsOn = { "accept-1058-jin-zil-s-forest-magic" },
            complete = QuestState(1058, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3200, 0.1000, "Sap Beast",
                    "Travel to Sap Beast."),
            },
        },
        {
            id = "objective-1087-cenarius-legacy",
            kind = "objective",
            priority = 140,
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
            priority = 150,
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
            priority = 160,
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
            priority = 170,
            text = "Turn in Cenarius' Legacy to Braelyn Firehand in Sun Rock Retreat.",
            dependsOn = { "objective-1087-cenarius-legacy" },
            complete = QuestState(1087, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "accept-1088-ordanus",
            kind = "accept",
            priority = 180,
            text = "Accept Ordanus from Braelyn Firehand in Sun Rock Retreat.",
            complete = QuestState(1088, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4596, 0.6036, "Braelyn Firehand",
                    "Travel to Braelyn Firehand."),
            },
        },
        {
            id = "turnin-1095-further-instructions",
            kind = "turnin",
            priority = 190,
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
            priority = 200,
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
            priority = 210,
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
            id = "objective-1068-shredding-machines",
            kind = "objective",
            priority = 220,
            text = "Kill the shredders XT:4 and XT:9 that roam around in the Windshear Crag.",
            complete = QuestState(1068, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6700, 0.5000, "XT:4",
                    "Travel to XT:4."),
            },
        },
        {
            id = "turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            priority = 230,
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
            priority = 240,
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
            priority = 250,
            text = "Turn in Shredding Machines to Seereth Stonebreak in The Barrens.",
            dependsOn = { "objective-1068-shredding-machines" },
            complete = QuestState(1068, "completed"),
            route = {
                Point(MAP.BARRENS, 0.3529, 0.2787, "Seereth Stonebreak",
                    "Travel to Seereth Stonebreak."),
            },
        },
        {
            id = "objective-6381-new-life",
            kind = "objective",
            priority = 270,
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
            priority = 280,
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
            priority = 290,
            text = "Kill the required Bloodfury Harpies in the The Charred Vale.",
            dependsOn = { "accept-6282-harpies-threaten" },
            complete = QuestState(6282, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3230, 0.6300, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "objective-86576-bloodfury-trinkets",
            kind = "objective",
            priority = 291,
            conditions = { level = { min = 26 } },
            text = "Bloodfury Trinkets: collect 15 Glittering Sunstones from Bloodfury harpies in the Charred Vale. Wowhead gives no separate sunstone pin.",
            dependsOn = { "accept-86576-bloodfury-trinkets" },
            complete = QuestState(86576, "complete"),
            route = {
                Point(MAP.STONETALON, 0.3320, 0.6000, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "turnin-6282-harpies-threaten",
            kind = "turnin",
            priority = 310,
            text = "Turn in Harpies Threaten to Maggran Earthbinder in Sun Rock Retreat.",
            dependsOn = { "objective-6282-harpies-threaten" },
            complete = QuestState(6282, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "turnin-86576-bloodfury-trinkets",
            kind = "turnin",
            priority = 311,
            conditions = { level = { min = 26 } },
            text = "Turn in Bloodfury Trinkets to Mor'rogal at Sun Rock Retreat. Wowhead gives no pin for Mor'rogal, so this marks Maggran Earthbinder beside him.",
            dependsOn = { "objective-86576-bloodfury-trinkets" },
            complete = QuestState(86576, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4720, 0.6100, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
        {
            id = "turnin-6381-new-life",
            kind = "turnin",
            priority = 320,
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
            priority = 330,
            text = "Turn in Elemental War to Tsunaman in Sun Rock Retreat.",
            dependsOn = { "objective-6393-elemental-war" },
            complete = QuestState(6393, "completed"),
            route = {
                Point(MAP.STONETALON, 0.4727, 0.6427, "Tsunaman",
                    "Travel to Tsunaman."),
            },
        },
        {
            id = "accept-5881-calling-in-the-reserves",
            kind = "accept",
            priority = 340,
            text = "Accept Calling in the Reserves from Maggran Earthbinder in Sun Rock Retreat.",
            complete = QuestState(5881, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.4726, 0.6111, "Maggran Earthbinder",
                    "Travel to Maggran Earthbinder."),
            },
        },
    },
})
