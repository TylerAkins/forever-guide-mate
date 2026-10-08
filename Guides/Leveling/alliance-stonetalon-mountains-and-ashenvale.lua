local _, ns = ...

-- Forever Casual spine: Stonetalon Mountains & Ashenvale (29-30)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves are applied in a separate pass.
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
    DUN_MOROGH = 1426,
    ASHENVALE = 1440,
    STONETALON_MOUNTAINS = 1442,
    STORMWIND_CITY = 1453,
    IRONFORGE = 1455,
    DARNASSUS = 1457,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
    title = "Stonetalon Mountains & Ashenvale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 29 } },
        },
    },
    goals = {
        {
            id = "accept-1057-reclaiming-the-charred-vale",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reclaiming the Charred Vale.",
            complete = QuestState(1057, "activeOrCompleted"),
            route = {
                Point(1442, 0.3710, 0.0810, "Reclaiming the Charred Vale",
                    "Travel to Reclaiming the Charred Vale."),
            },
        },
        {
            id = "objective-1057-1-bloodfury-harpy",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill 7 Bloodfury Harpy.",
            complete = QuestObjective(1057, 1, "Bloodfury Harpy"),
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            route = {
                Point(1442, 0.3260, 0.6160, "Bloodfury Harpy",
                    "Travel to Bloodfury Harpy."),
            },
        },
        {
            id = "turnin-1057-reclaiming-the-charred-vale",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Reclaiming the Charred Vale.",
            complete = QuestState(1057, "completed"),
            dependsOn = { "accept-1057-reclaiming-the-charred-vale", "objective-1057-1-bloodfury-harpy" },
            route = {
                Point(1442, 0.3710, 0.0810, "Reclaiming the Charred Vale",
                    "Travel to Reclaiming the Charred Vale."),
            },
        },
        {
            id = "accept-1059-reclaiming-the-charred-vale",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept Reclaiming the Charred Vale.",
            complete = QuestState(1059, "activeOrCompleted"),
            route = {
                Point(1442, 0.3710, 0.0810, "Reclaiming the Charred Vale",
                    "Travel to Reclaiming the Charred Vale."),
            },
        },
        {
            id = "accept-1140-the-tower-of-althalaxx",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Tower of Althalaxx.",
            complete = QuestState(1140, "activeOrCompleted"),
            route = {
                Point(1440, 0.2620, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "accept-1022-the-howling-vale",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Howling Vale.",
            complete = QuestState(1022, "activeOrCompleted"),
            route = {
                Point(1440, 0.2223, 0.5298, "The Howling Vale",
                    "Travel to The Howling Vale."),
            },
        },
        {
            id = "accept-1021-vile-satyr-dryads-in-danger",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vile Satyr! Dryads in Danger!.",
            complete = QuestState(1021, "activeOrCompleted"),
            route = {
                Point(1440, 0.2173, 0.5335, "Vile Satyr! Dryads in Danger!",
                    "Travel to Vile Satyr! Dryads in Danger!."),
            },
        },
        {
            id = "accept-4581-kayneth-stillwind",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Kayneth Stillwind.",
            complete = QuestState(4581, "activeOrCompleted"),
            route = {
                Point(1440, 0.3467, 0.4884, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1024-raene-s-cleansing",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1024, "activeOrCompleted"),
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1035-fallen-sky-lake",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Fallen Sky Lake.",
            complete = QuestState(1035, "activeOrCompleted"),
            route = {
                Point(1440, 0.3737, 0.5179, "Fallen Sky Lake",
                    "Travel to Fallen Sky Lake."),
            },
        },
        {
            id = "turnin-1024-raene-s-cleansing",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1024, "completed"),
            dependsOn = { "accept-1024-raene-s-cleansing" },
            route = {
                Point(1440, 0.5022, 0.5623, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1026-raene-s-cleansing",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1026, "activeOrCompleted"),
            route = {
                Point(1440, 0.5022, 0.5623, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "objective-1026-1-withered-ancient",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Withered Ancient.",
            complete = QuestObjective(1026, 1, "Withered Ancient"),
            dependsOn = { "accept-1026-raene-s-cleansing" },
            route = {
                Point(1440, 0.6260, 0.4680, "Withered Ancient",
                    "Travel to Withered Ancient."),
            },
        },
        {
            id = "objective-1026-1-worn-chest",
            kind = "objective",
            priority = 140,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Click Worn Chest.",
            complete = QuestObjective(1026, 1, "Worn Chest"),
            dependsOn = { "accept-1026-raene-s-cleansing" },
            route = {
                Point(1440, 0.5441, 0.3539, "Worn Chest",
                    "Travel to Worn Chest."),
            },
        },
        {
            id = "turnin-1021-vile-satyr-dryads-in-danger",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vile Satyr! Dryads in Danger!.",
            complete = QuestState(1021, "completed"),
            dependsOn = { "accept-1021-vile-satyr-dryads-in-danger" },
            route = {
                Point(1440, 0.5133, 0.3820, "Vile Satyr! Dryads in Danger!",
                    "Travel to Vile Satyr! Dryads in Danger!."),
            },
        },
        {
            id = "accept-1031-the-branch-of-cenarius",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Branch of Cenarius.",
            complete = QuestState(1031, "activeOrCompleted"),
            route = {
                Point(1440, 0.5133, 0.3820, "The Branch of Cenarius",
                    "Travel to The Branch of Cenarius."),
            },
        },
        {
            id = "objective-1031-1-geltharis",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Geltharis.",
            complete = QuestObjective(1031, 1, "Geltharis"),
            dependsOn = { "accept-1031-the-branch-of-cenarius" },
            route = {
                Point(1440, 0.7800, 0.4242, "Geltharis",
                    "Travel to Geltharis."),
            },
        },
        {
            id = "turnin-4581-kayneth-stillwind",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Kayneth Stillwind.",
            complete = QuestState(4581, "completed"),
            dependsOn = { "accept-4581-kayneth-stillwind" },
            route = {
                Point(1440, 0.8524, 0.4471, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1011-forsaken-diseases",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Forsaken Diseases.",
            complete = QuestState(1011, "activeOrCompleted"),
            route = {
                Point(1440, 0.8524, 0.4471, "Forsaken Diseases",
                    "Travel to Forsaken Diseases."),
            },
        },
        {
            id = "turnin-1022-the-howling-vale",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Howling Vale.",
            complete = QuestState(1022, "completed"),
            dependsOn = { "accept-1022-the-howling-vale" },
            route = {
                Point(1440, 0.2223, 0.5298, "The Howling Vale",
                    "Travel to The Howling Vale."),
            },
        },
        {
            id = "accept-1037-velinde-starsong",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Velinde Starsong.",
            complete = QuestState(1037, "activeOrCompleted"),
            route = {
                Point(1440, 0.2223, 0.5298, "Velinde Starsong",
                    "Travel to Velinde Starsong."),
            },
        },
        {
            id = "turnin-1031-the-branch-of-cenarius",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Branch of Cenarius.",
            complete = QuestState(1031, "completed"),
            dependsOn = { "accept-1031-the-branch-of-cenarius", "objective-1031-1-geltharis" },
            route = {
                Point(1440, 0.2173, 0.5335, "The Branch of Cenarius",
                    "Travel to The Branch of Cenarius."),
            },
        },
        {
            id = "accept-1032-satyr-slaying",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Satyr Slaying!.",
            complete = QuestState(1032, "activeOrCompleted"),
            route = {
                Point(1440, 0.2173, 0.5335, "Satyr Slaying!",
                    "Travel to Satyr Slaying!."),
            },
        },
        {
            id = "turnin-1026-raene-s-cleansing",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1026, "completed"),
            dependsOn = { "accept-1026-raene-s-cleansing", "objective-1026-1-withered-ancient", "objective-1026-1-worn-chest" },
            route = {
                Point(1440, 0.5022, 0.5623, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1027-raene-s-cleansing",
            kind = "accept",
            priority = 250,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1027, "activeOrCompleted"),
            route = {
                Point(1440, 0.5022, 0.5623, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "objective-1035-1-shadethicket-oracle",
            kind = "objective",
            priority = 260,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Shadethicket Oracle.",
            complete = QuestObjective(1035, 1, "Shadethicket Oracle"),
            dependsOn = { "accept-1035-fallen-sky-lake" },
            route = {
                Point(1440, 0.6668, 0.8219, "Shadethicket Oracle",
                    "Travel to Shadethicket Oracle."),
            },
        },
        {
            id = "objective-1027-1-rotting-slime",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Rotting Slime.",
            complete = QuestObjective(1027, 1, "Rotting Slime"),
            dependsOn = { "accept-1027-raene-s-cleansing" },
            route = {
                Point(1440, 0.6940, 0.7580, "Rotting Slime",
                    "Travel to Rotting Slime."),
            },
        },
        {
            id = "turnin-1011-forsaken-diseases",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Forsaken Diseases.",
            complete = QuestState(1011, "completed"),
            dependsOn = { "accept-1011-forsaken-diseases" },
            route = {
                Point(1440, 0.8524, 0.4471, "Forsaken Diseases",
                    "Travel to Forsaken Diseases."),
            },
        },
        {
            id = "objective-1140-2-circle-of-imprisonment",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Click Circle of Imprisonment.",
            complete = QuestObjective(1140, 2, "Circle of Imprisonment"),
            dependsOn = { "accept-1140-the-tower-of-althalaxx" },
            route = {
                Point(1440, 0.8160, 0.4858, "Circle of Imprisonment",
                    "Travel to Circle of Imprisonment."),
            },
        },
        {
            id = "turnin-1027-raene-s-cleansing",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1027, "completed"),
            dependsOn = { "accept-1027-raene-s-cleansing", "objective-1027-1-rotting-slime" },
            route = {
                Point(1440, 0.5022, 0.5623, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1028-raene-s-cleansing",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1028, "activeOrCompleted"),
            route = {
                Point(1440, 0.5354, 0.4621, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1028-raene-s-cleansing",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1028, "completed"),
            dependsOn = { "accept-1028-raene-s-cleansing" },
            route = {
                Point(1440, 0.5604, 0.5128, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1055-raene-s-cleansing",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1055, "activeOrCompleted"),
            route = {
                Point(1440, 0.5604, 0.5128, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1055-raene-s-cleansing",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1055, "completed"),
            dependsOn = { "accept-1055-raene-s-cleansing" },
            route = {
                Point(1440, 0.5180, 0.4573, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1029-raene-s-cleansing",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1029, "activeOrCompleted"),
            route = {
                Point(1440, 0.5180, 0.4573, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1035-fallen-sky-lake",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Fallen Sky Lake.",
            complete = QuestState(1035, "completed"),
            dependsOn = { "accept-1035-fallen-sky-lake", "objective-1035-1-shadethicket-oracle" },
            route = {
                Point(1440, 0.3736, 0.5179, "Fallen Sky Lake",
                    "Travel to Fallen Sky Lake."),
            },
        },
        {
            id = "turnin-1029-raene-s-cleansing",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1029, "completed"),
            dependsOn = { "accept-1029-raene-s-cleansing" },
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1030-raene-s-cleansing",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1030, "activeOrCompleted"),
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "objective-1030-1-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Use Dartol's Rod of Transformation.",
            complete = QuestObjective(1030, 1, "Dartol's Rod of Transformation"),
            dependsOn = { "accept-1030-raene-s-cleansing" },
            route = {
                Point(1440, 0.5367, 0.7397, "Dartol's Rod of Transformation",
                    "Travel to Dartol's Rod of Transformation."),
            },
        },
        {
            id = "turnin-1030-raene-s-cleansing",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1030, "completed"),
            dependsOn = { "accept-1030-raene-s-cleansing", "objective-1030-1-dartol-s-rod-of-transformation" },
            route = {
                Point(1440, 0.5085, 0.7507, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1045-raene-s-cleansing",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1045, "activeOrCompleted"),
            route = {
                Point(1440, 0.5085, 0.7507, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "objective-1045-1-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Use Dartol's Rod of Transformation.",
            complete = QuestObjective(1045, 1, "Dartol's Rod of Transformation"),
            dependsOn = { "accept-1045-raene-s-cleansing" },
            route = {
                Point(1440, 0.5367, 0.7397, "Dartol's Rod of Transformation",
                    "Travel to Dartol's Rod of Transformation."),
            },
        },
        {
            id = "turnin-1045-raene-s-cleansing",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1045, "completed"),
            dependsOn = { "accept-1045-raene-s-cleansing", "objective-1045-1-dartol-s-rod-of-transformation" },
            route = {
                Point(1440, 0.5085, 0.7507, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1046-raene-s-cleansing",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1046, "activeOrCompleted"),
            route = {
                Point(1440, 0.5085, 0.7507, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1046-raene-s-cleansing",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raene's Cleansing.",
            complete = QuestState(1046, "completed"),
            dependsOn = { "accept-1046-raene-s-cleansing" },
            route = {
                Point(1440, 0.3662, 0.4958, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1032-satyr-slaying",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Satyr Slaying!.",
            complete = QuestState(1032, "completed"),
            dependsOn = { "accept-1032-satyr-slaying" },
            route = {
                Point(1440, 0.2173, 0.5334, "Satyr Slaying!",
                    "Travel to Satyr Slaying!."),
            },
        },
        {
            id = "turnin-1140-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Tower of Althalaxx.",
            complete = QuestState(1140, "completed"),
            dependsOn = { "accept-1140-the-tower-of-althalaxx", "objective-1140-2-circle-of-imprisonment" },
            route = {
                Point(1440, 0.2619, 0.3870, "The Tower of Althalaxx",
                    "Travel to The Tower of Althalaxx."),
            },
        },
        {
            id = "turnin-1037-velinde-starsong",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Velinde Starsong.",
            complete = QuestState(1037, "completed"),
            dependsOn = { "accept-1037-velinde-starsong" },
            route = {
                Point(1457, 0.6178, 0.3919, "Velinde Starsong",
                    "Travel to Velinde Starsong."),
            },
        },
        {
            id = "accept-1038-velinde-s-effects",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Velinde's Effects.",
            complete = QuestState(1038, "activeOrCompleted"),
            route = {
                Point(1457, 0.6178, 0.3919, "Velinde's Effects",
                    "Travel to Velinde's Effects."),
            },
        },
        {
            id = "turnin-1038-velinde-s-effects",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Velinde's Effects.",
            complete = QuestState(1038, "completed"),
            dependsOn = { "accept-1038-velinde-s-effects" },
            route = {
                Point(1457, 0.6178, 0.3919, "Velinde's Effects",
                    "Travel to Velinde's Effects."),
            },
        },
        {
            id = "accept-1039-the-barrens-port",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Barrens Port.",
            complete = QuestState(1039, "activeOrCompleted"),
            route = {
                Point(1457, 0.6178, 0.3919, "The Barrens Port",
                    "Travel to The Barrens Port."),
            },
        },
        {
            id = "accept-2928-gyrodrillmatic-excavationators",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gyrodrillmatic Excavationators.",
            complete = QuestState(2928, "activeOrCompleted"),
            route = {
                Point(1453, 0.5551, 0.1251, "Gyrodrillmatic Excavationators",
                    "Travel to Gyrodrillmatic Excavationators."),
            },
        },
        {
            id = "turnin-637-sully-balloo-s-letter",
            kind = "turnin",
            priority = 530,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sully Balloo's Letter.",
            complete = QuestState(637, "completed"),
            route = {
                Point(1455, 0.6348, 0.6729, "Sully Balloo's Letter",
                    "Travel to Sully Balloo's Letter."),
            },
        },
        {
            id = "accept-683-sara-balloo-s-plea",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sara Balloo's Plea.",
            complete = QuestState(683, "activeOrCompleted"),
            route = {
                Point(1455, 0.6348, 0.6729, "Sara Balloo's Plea",
                    "Travel to Sara Balloo's Plea."),
            },
        },
        {
            id = "turnin-683-sara-balloo-s-plea",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Sara Balloo's Plea.",
            complete = QuestState(683, "completed"),
            dependsOn = { "accept-683-sara-balloo-s-plea" },
            route = {
                Point(1455, 0.4456, 0.4958, "Sara Balloo's Plea",
                    "Travel to Sara Balloo's Plea."),
            },
        },
        {
            id = "accept-686-a-king-s-tribute",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept A King's Tribute.",
            complete = QuestState(686, "activeOrCompleted"),
            route = {
                Point(1455, 0.4456, 0.4958, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "turnin-686-a-king-s-tribute",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in A King's Tribute.",
            complete = QuestState(686, "completed"),
            dependsOn = { "accept-686-a-king-s-tribute" },
            route = {
                Point(1455, 0.3903, 0.8802, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "accept-689-a-king-s-tribute",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 32 } },
                { faction = "Alliance" },
            } },
            text = "Accept A King's Tribute.",
            complete = QuestState(689, "activeOrCompleted"),
            route = {
                Point(1455, 0.3903, 0.8802, "A King's Tribute",
                    "Travel to A King's Tribute."),
            },
        },
        {
            id = "accept-1179-the-brassbolts-brothers",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Brassbolts Brothers.",
            complete = QuestState(1179, "activeOrCompleted"),
            route = {
                Point(1455, 0.7273, 0.9401, "The Brassbolts Brothers",
                    "Travel to The Brassbolts Brothers."),
            },
        },
        {
            id = "accept-2924-essential-artificials",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Essential Artificials.",
            complete = QuestState(2924, "activeOrCompleted"),
            route = {
                Point(1455, 0.6792, 0.4610, "Essential Artificials",
                    "Travel to Essential Artificials."),
            },
        },
        {
            id = "turnin-2923-tinkmaster-overspark",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tinkmaster Overspark.",
            complete = QuestState(2923, "completed"),
            route = {
                Point(1455, 0.6955, 0.5033, "Tinkmaster Overspark",
                    "Travel to Tinkmaster Overspark."),
            },
        },
        {
            id = "accept-2922-save-techbot-s-brain",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Save Techbot's Brain!.",
            complete = QuestState(2922, "activeOrCompleted"),
            route = {
                Point(1455, 0.6955, 0.5033, "Save Techbot's Brain!",
                    "Travel to Save Techbot's Brain!."),
            },
        },
        {
            id = "accept-2927-the-day-after",
            kind = "accept",
            priority = 630,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Day After.",
            complete = QuestState(2927, "activeOrCompleted"),
            route = {
                Point(1455, 0.6918, 0.5055, "The Day After",
                    "Travel to The Day After."),
            },
        },
        {
            id = "accept-2930-data-rescue",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Data Rescue.",
            complete = QuestState(2930, "activeOrCompleted"),
            route = {
                Point(1455, 0.6983, 0.4810, "Data Rescue",
                    "Travel to Data Rescue."),
            },
        },
        {
            id = "accept-2929-the-grand-betrayal",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Grand Betrayal.",
            complete = QuestState(2929, "activeOrCompleted"),
            route = {
                Point(1455, 0.6875, 0.4897, "The Grand Betrayal",
                    "Travel to The Grand Betrayal."),
            },
        },
        {
            id = "turnin-2927-the-day-after",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Day After.",
            complete = QuestState(2927, "completed"),
            dependsOn = { "accept-2927-the-day-after" },
            route = {
                Point(1426, 0.4589, 0.4938, "The Day After",
                    "Travel to The Day After."),
            },
        },
        {
            id = "accept-2926-gnogaine",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gnogaine.",
            complete = QuestState(2926, "activeOrCompleted"),
            route = {
                Point(1426, 0.4589, 0.4938, "Gnogaine",
                    "Travel to Gnogaine."),
            },
        },
        {
            id = "objective-2930-1-addled-leper",
            kind = "objective",
            priority = 680,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Addled Leper.",
            complete = QuestObjective(2930, 1, "Addled Leper"),
            dependsOn = { "accept-2930-data-rescue" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2922-1-techbot",
            kind = "objective",
            priority = 690,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Techbot.",
            complete = QuestObjective(2922, 1, "Techbot"),
            dependsOn = { "accept-2922-save-techbot-s-brain" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-2929-1-mekgineer-thermaplugg",
            kind = "objective",
            priority = 700,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Kill Mekgineer Thermaplugg.",
            complete = QuestObjective(2929, 1, "Mekgineer Thermaplugg"),
            dependsOn = { "accept-2929-the-grand-betrayal" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-2945-grime-encrusted-ring",
            kind = "accept",
            priority = 710,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Use the Grime-Encrusted Ring to accept Grime-Encrusted Ring.",
            complete = QuestState(2945, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2945-grime-encrusted-ring",
            kind = "turnin",
            priority = 720,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Grime-Encrusted Ring.",
            complete = QuestState(2945, "completed"),
            dependsOn = { "accept-2945-grime-encrusted-ring" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-2947-return-of-the-ring",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return of the Ring from the cleaned ring after the Sparklematic 5200 in Gnomeregan (turn in to Talvash del Kissel in Ironforge).",
            complete = QuestState(2947, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "accept-2952-the-sparklematic-5200",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Sparklematic 5200! from the Sparklematic 5200 machine inside Gnomeregan.",
            complete = QuestState(2952, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-2926-gnogaine",
            kind = "turnin",
            priority = 750,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gnogaine.",
            complete = QuestState(2926, "completed"),
            dependsOn = { "accept-2926-gnogaine" },
            route = {
                Point(1426, 0.4589, 0.4938, "Gnogaine",
                    "Travel to Gnogaine."),
            },
        },
        {
            id = "turnin-2947-return-of-the-ring",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return of the Ring.",
            complete = QuestState(2947, "completed"),
            dependsOn = { "accept-2947-return-of-the-ring" },
            route = {
                Point(1455, 0.3638, 0.0361, "Return of the Ring",
                    "Travel to Return of the Ring."),
            },
        },
        {
            id = "accept-2948-gnome-improvement",
            kind = "accept",
            priority = 770,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Accept Gnome Improvement.",
            complete = QuestState(2948, "activeOrCompleted"),
            route = {
                Point(1455, 0.3638, 0.0361, "Gnome Improvement",
                    "Travel to Gnome Improvement."),
            },
        },
        {
            id = "turnin-2948-gnome-improvement",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gnome Improvement.",
            complete = QuestState(2948, "completed"),
            dependsOn = { "accept-2948-gnome-improvement" },
            route = {
                Point(1455, 0.3638, 0.0361, "Gnome Improvement",
                    "Travel to Gnome Improvement."),
            },
        },
        {
            id = "turnin-2924-essential-artificials",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Essential Artificials.",
            complete = QuestState(2924, "completed"),
            dependsOn = { "accept-2924-essential-artificials" },
            route = {
                Point(1455, 0.6792, 0.4610, "Essential Artificials",
                    "Travel to Essential Artificials."),
            },
        },
        {
            id = "turnin-2922-save-techbot-s-brain",
            kind = "turnin",
            priority = 800,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Save Techbot's Brain!.",
            complete = QuestState(2922, "completed"),
            dependsOn = { "accept-2922-save-techbot-s-brain", "objective-2922-1-techbot" },
            route = {
                Point(1455, 0.6955, 0.5033, "Save Techbot's Brain!",
                    "Travel to Save Techbot's Brain!."),
            },
        },
        {
            id = "turnin-2930-data-rescue",
            kind = "turnin",
            priority = 810,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Data Rescue.",
            complete = QuestState(2930, "completed"),
            dependsOn = { "accept-2930-data-rescue", "objective-2930-1-addled-leper" },
            route = {
                Point(1455, 0.6983, 0.4810, "Data Rescue",
                    "Travel to Data Rescue."),
            },
        },
        {
            id = "turnin-2929-the-grand-betrayal",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Grand Betrayal.",
            complete = QuestState(2929, "completed"),
            dependsOn = { "accept-2929-the-grand-betrayal", "objective-2929-1-mekgineer-thermaplugg" },
            route = {
                Point(1455, 0.6875, 0.4897, "The Grand Betrayal",
                    "Travel to The Grand Betrayal."),
            },
        },
        {
            id = "turnin-2928-gyrodrillmatic-excavationators",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { level = { min = 29 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gyrodrillmatic Excavationators.",
            complete = QuestState(2928, "completed"),
            dependsOn = { "accept-2928-gyrodrillmatic-excavationators" },
            route = {
                Point(1453, 0.5551, 0.1251, "Gyrodrillmatic Excavationators",
                    "Travel to Gyrodrillmatic Excavationators."),
            },
        },
    },
})
