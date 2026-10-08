local _, ns = ...

-- Forever Casual spine: Feralas & Un'Goro Crater (49-50)
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
    THE_BARRENS = 1413,
    DESOLACE = 1443,
    FERALAS = 1444,
    TANARIS = 1446,
    UN_GORO_CRATER = 1449,
    MOONGLADE = 1450,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-feralas-and-ungoro-crater",
    title = "Feralas & Un'Goro Crater",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "accept-3062-dark-heart",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Dark Heart.",
            complete = QuestState(3062, "activeOrCompleted"),
            route = {
                Point(1444, 0.7618, 0.4383, "Dark Heart",
                    "Travel to Dark Heart."),
            },
        },
        {
            id = "accept-3063-vengeance-on-the-northspring",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Vengeance on the Northspring.",
            complete = QuestState(3063, "activeOrCompleted"),
            route = {
                Point(1444, 0.7618, 0.4383, "Vengeance on the Northspring",
                    "Travel to Vengeance on the Northspring."),
            },
        },
        {
            id = "accept-7734-improved-quality",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Improved Quality.",
            complete = QuestState(7734, "activeOrCompleted"),
            route = {
                Point(1444, 0.7443, 0.4291, "Improved Quality",
                    "Travel to Improved Quality."),
            },
        },
        {
            id = "turnin-3123-testing-the-vessel",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Testing the Vessel.",
            complete = QuestState(3123, "completed"),
            route = {
                Point(1444, 0.7442, 0.4336, "Testing the Vessel",
                    "Travel to Testing the Vessel."),
            },
        },
        {
            id = "accept-3124-hippogryph-muisek",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Hippogryph Muisek.",
            complete = QuestState(3124, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Hippogryph Muisek",
                    "Travel to Hippogryph Muisek."),
            },
        },
        {
            id = "accept-3128-natural-materials",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Natural Materials.",
            complete = QuestState(3128, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Natural Materials",
                    "Travel to Natural Materials."),
            },
        },
        {
            id = "objective-3124-1-frayfeather-patriarch",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Frayfeather Patriarch.",
            complete = QuestObjective(3124, 1, "Frayfeather Patriarch"),
            dependsOn = { "accept-3124-hippogryph-muisek" },
            route = {
                Point(1444, 0.5740, 0.6240, "Frayfeather Patriarch",
                    "Travel to Frayfeather Patriarch."),
            },
        },
        {
            id = "objective-3128-3-resilient-sinew",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 20 Resilient Sinew.",
            complete = QuestObjective(3128, 3, "Resilient Sinew"),
            dependsOn = { "accept-3128-natural-materials" },
            route = {
                Point(1444, 0.5740, 0.6240, "Resilient Sinew",
                    "Travel to Resilient Sinew."),
            },
        },
        {
            id = "objective-3128-4-metallic-fragments",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 40 Metallic Fragments.",
            complete = QuestObjective(3128, 4, "Metallic Fragments"),
            dependsOn = { "accept-3128-natural-materials" },
            route = {
                Point(1444, 0.5740, 0.6240, "Metallic Fragments",
                    "Travel to Metallic Fragments."),
            },
        },
        {
            id = "turnin-3124-hippogryph-muisek",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hippogryph Muisek.",
            complete = QuestState(3124, "completed"),
            dependsOn = { "accept-3124-hippogryph-muisek", "objective-3124-1-frayfeather-patriarch" },
            route = {
                Point(1444, 0.7442, 0.4336, "Hippogryph Muisek",
                    "Travel to Hippogryph Muisek."),
            },
        },
        {
            id = "accept-3125-faerie-dragon-muisek",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Faerie Dragon Muisek.",
            complete = QuestState(3125, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Faerie Dragon Muisek",
                    "Travel to Faerie Dragon Muisek."),
            },
        },
        {
            id = "objective-3125-1-sprite-darter",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Sprite Darter.",
            complete = QuestObjective(3125, 1, "Sprite Darter"),
            dependsOn = { "accept-3125-faerie-dragon-muisek" },
            route = {
                Point(1444, 0.6940, 0.4680, "Sprite Darter",
                    "Travel to Sprite Darter."),
            },
        },
        {
            id = "objective-3128-2-encrusted-minerals",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 6 Encrusted Minerals.",
            complete = QuestObjective(3128, 2, "Encrusted Minerals"),
            dependsOn = { "accept-3128-natural-materials" },
            route = {
                Point(1444, 0.6940, 0.4680, "Encrusted Minerals",
                    "Travel to Encrusted Minerals."),
            },
        },
        {
            id = "turnin-3125-faerie-dragon-muisek",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Faerie Dragon Muisek.",
            complete = QuestState(3125, "completed"),
            dependsOn = { "accept-3125-faerie-dragon-muisek", "objective-3125-1-sprite-darter" },
            route = {
                Point(1444, 0.7442, 0.4336, "Faerie Dragon Muisek",
                    "Travel to Faerie Dragon Muisek."),
            },
        },
        {
            id = "accept-3126-treant-muisek",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Treant Muisek.",
            complete = QuestState(3126, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Treant Muisek",
                    "Travel to Treant Muisek."),
            },
        },
        {
            id = "objective-3126-1-wandering-forest-walker",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Wandering Forest Walker.",
            complete = QuestObjective(3126, 1, "Wandering Forest Walker"),
            dependsOn = { "accept-3126-treant-muisek" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-3128-1-splintered-log",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 2 Splintered Log.",
            complete = QuestObjective(3128, 1, "Splintered Log"),
            dependsOn = { "accept-3128-natural-materials" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-3126-treant-muisek",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Treant Muisek.",
            complete = QuestState(3126, "completed"),
            dependsOn = { "accept-3126-treant-muisek", "objective-3126-1-wandering-forest-walker" },
            route = {
                Point(1444, 0.7442, 0.4336, "Treant Muisek",
                    "Travel to Treant Muisek."),
            },
        },
        {
            id = "accept-3127-mountain-giant-muisek",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Mountain Giant Muisek.",
            complete = QuestState(3127, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4336, "Mountain Giant Muisek",
                    "Travel to Mountain Giant Muisek."),
            },
        },
        {
            id = "turnin-3128-natural-materials",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Natural Materials.",
            complete = QuestState(3128, "completed"),
            dependsOn = { "accept-3128-natural-materials", "objective-3128-3-resilient-sinew", "objective-3128-4-metallic-fragments", "objective-3128-2-encrusted-minerals", "objective-3128-1-splintered-log" },
            route = {
                Point(1444, 0.7442, 0.4336, "Natural Materials",
                    "Travel to Natural Materials."),
            },
        },
        {
            id = "accept-7003-zapped-giants",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Zapped Giants.",
            complete = QuestState(7003, "activeOrCompleted"),
            route = {
                Point(1444, 0.4481, 0.4342, "Zapped Giants",
                    "Travel to Zapped Giants."),
            },
        },
        {
            id = "accept-7721-fuel-for-the-zapping",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Fuel for the Zapping.",
            complete = QuestState(7721, "activeOrCompleted"),
            route = {
                Point(1444, 0.4481, 0.4342, "Fuel for the Zapping",
                    "Travel to Fuel for the Zapping."),
            },
        },
        {
            id = "objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            priority = 230,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Use Zorbin's Ultra-Shrinker.",
            complete = QuestObjective(7003, 1, "Zorbin's Ultra-Shrinker"),
            dependsOn = { "accept-7003-zapped-giants" },
            route = {
                Point(1444, 0.4440, 0.4980, "Zorbin's Ultra-Shrinker",
                    "Travel to Zorbin's Ultra-Shrinker."),
            },
        },
        {
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zapped Giants.",
            complete = QuestState(7003, "completed"),
            dependsOn = { "accept-7003-zapped-giants", "objective-7003-1-zorbin-s-ultra-shrinker" },
            route = {
                Point(1444, 0.4481, 0.4342, "Zapped Giants",
                    "Travel to Zapped Giants."),
            },
        },
        {
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Fuel for the Zapping.",
            complete = QuestState(7721, "completed"),
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
            route = {
                Point(1444, 0.4481, 0.4342, "Fuel for the Zapping",
                    "Travel to Fuel for the Zapping."),
            },
        },
        {
            id = "accept-7725-again-with-the-zapped-giants",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Again With the Zapped Giants.",
            complete = QuestState(7725, "activeOrCompleted"),
            route = {
                Point(1444, 0.4481, 0.4342, "Again With the Zapped Giants",
                    "Travel to Again With the Zapped Giants."),
            },
        },
        {
            id = "accept-7738-perfect-yeti-hide",
            kind = "accept",
            priority = 270,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Perfect Yeti Hide.",
            complete = QuestState(7738, "activeOrCompleted"),
            route = {
                Point(1444, 0.5140, 0.3240, "Perfect Yeti Hide",
                    "Travel to Perfect Yeti Hide."),
            },
        },
        {
            id = "objective-3127-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Use Zorbin's Ultra-Shrinker.",
            complete = QuestObjective(3127, 1, "Zorbin's Ultra-Shrinker"),
            dependsOn = { "accept-3127-mountain-giant-muisek" },
            route = {
                Point(1444, 0.5332, 0.3185, "Zorbin's Ultra-Shrinker",
                    "Travel to Zorbin's Ultra-Shrinker."),
            },
        },
        {
            id = "objective-3062-1-northspring-harpy",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Northspring Harpy.",
            complete = QuestObjective(3062, 1, "Northspring Harpy"),
            dependsOn = { "accept-3062-dark-heart" },
            route = {
                Point(1444, 0.4000, 0.1520, "Northspring Harpy",
                    "Travel to Northspring Harpy."),
            },
        },
        {
            id = "objective-3062-1-horn-of-hatetalon",
            kind = "objective",
            priority = 300,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Use Horn of Hatetalon.",
            complete = QuestObjective(3062, 1, "Horn of Hatetalon"),
            dependsOn = { "accept-3062-dark-heart" },
            route = {
                Point(1444, 0.4055, 0.0859, "Horn of Hatetalon",
                    "Travel to Horn of Hatetalon."),
            },
        },
        {
            id = "accept-7064-corruption-of-earth-and-seed",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Corruption of Earth and Seed.",
            complete = QuestState(7064, "activeOrCompleted"),
            route = {
                Point(1443, 0.2687, 0.7767, "Corruption of Earth and Seed",
                    "Travel to Corruption of Earth and Seed."),
            },
        },
        {
            id = "accept-7029-vyletongue-corruption",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Vyletongue Corruption.",
            complete = QuestState(7029, "activeOrCompleted"),
            route = {
                Point(1443, 0.2322, 0.7033, "Vyletongue Corruption",
                    "Travel to Vyletongue Corruption."),
            },
        },
        {
            id = "accept-7028-twisted-evils",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Twisted Evils.",
            complete = QuestState(7028, "activeOrCompleted"),
            route = {
                Point(1443, 0.6219, 0.3963, "Twisted Evils",
                    "Travel to Twisted Evils."),
            },
        },
        {
            id = "accept-7067-the-pariah-s-instructions",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Pariah's Instructions.",
            complete = QuestState(7067, "activeOrCompleted"),
            route = {
                Point(1443, 0.5042, 0.8665, "The Pariah's Instructions",
                    "Travel to The Pariah's Instructions."),
            },
        },
        {
            id = "objective-7067-1-the-nameless-prophet",
            kind = "objective",
            priority = 350,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill The Nameless Prophet.",
            complete = QuestObjective(7067, 1, "The Nameless Prophet"),
            dependsOn = { "accept-7067-the-pariah-s-instructions" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-7044-legends-of-maraudon",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Inside Maraudon, accept Legends of Maraudon from the Centaur Apparition.",
            complete = QuestState(7044, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-7029-2-coated-cerulean-vial",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Use Coated Cerulean Vial.",
            complete = QuestObjective(7029, 2, "Coated Cerulean Vial"),
            dependsOn = { "accept-7029-vyletongue-corruption" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-7044-2-noxxion",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Noxxion.",
            complete = QuestObjective(7044, 2, "Noxxion"),
            dependsOn = { "accept-7044-legends-of-maraudon" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-7044-1-lord-vyletongue",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Lord Vyletongue.",
            complete = QuestObjective(7044, 1, "Lord Vyletongue"),
            dependsOn = { "accept-7044-legends-of-maraudon" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-7044-legend-of-maraudon",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Legend of Maraudon.",
            complete = QuestState(7044, "completed"),
            dependsOn = { "accept-7044-legends-of-maraudon", "objective-7044-2-noxxion", "objective-7044-1-lord-vyletongue" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-7046-the-scepter-of-celebras",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Inside Maraudon, accept The Scepter of Celebras from Celebras the Redeemed.",
            complete = QuestState(7046, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-7046-the-scepter-of-celebras",
            kind = "turnin",
            priority = 420,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Scepter of Celebras.",
            complete = QuestState(7046, "completed"),
            dependsOn = { "accept-7046-the-scepter-of-celebras" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-7064-1-princess-theradras",
            kind = "objective",
            priority = 430,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Princess Theradras.",
            complete = QuestObjective(7064, 1, "Princess Theradras"),
            dependsOn = { "accept-7064-corruption-of-earth-and-seed" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-7066-seed-of-life",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Inside Maraudon, accept Seed of Life from Zaetar's Spirit.",
            complete = QuestState(7066, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-7067-the-pariah-s-instructions",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Pariah's Instructions.",
            complete = QuestState(7067, "completed"),
            dependsOn = { "accept-7067-the-pariah-s-instructions", "objective-7067-1-the-nameless-prophet" },
            route = {
                Point(1443, 0.4340, 0.8480, "The Pariah's Instructions",
                    "Travel to The Pariah's Instructions."),
            },
        },
        {
            id = "turnin-7028-twisted-evils",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Twisted Evils.",
            complete = QuestState(7028, "completed"),
            dependsOn = { "accept-7028-twisted-evils" },
            route = {
                Point(1443, 0.6220, 0.3963, "Twisted Evils",
                    "Travel to Twisted Evils."),
            },
        },
        {
            id = "turnin-7064-corruption-of-earth-and-seed",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Corruption of Earth and Seed.",
            complete = QuestState(7064, "completed"),
            dependsOn = { "accept-7064-corruption-of-earth-and-seed", "objective-7064-1-princess-theradras" },
            route = {
                Point(1443, 0.2687, 0.7767, "Corruption of Earth and Seed",
                    "Travel to Corruption of Earth and Seed."),
            },
        },
        {
            id = "turnin-7029-vyletongue-corruption",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vyletongue Corruption.",
            complete = QuestState(7029, "completed"),
            dependsOn = { "accept-7029-vyletongue-corruption", "objective-7029-2-coated-cerulean-vial" },
            route = {
                Point(1443, 0.2322, 0.7033, "Vyletongue Corruption",
                    "Travel to Vyletongue Corruption."),
            },
        },
        {
            id = "turnin-7066-seed-of-life",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Seed of Life.",
            complete = QuestState(7066, "completed"),
            dependsOn = { "accept-7066-seed-of-life" },
            route = {
                Point(1450, 0.3618, 0.4179, "Seed of Life",
                    "Travel to Seed of Life."),
            },
        },
        {
            id = "objective-4284-1-red-power-crystal",
            kind = "objective",
            priority = 500,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Collect 7 Red Power Crystal.",
            complete = QuestObjective(4284, 1, "Red Power Crystal"),
            route = {
                Point(1446, 0.5230, 0.2891, "Red Power Crystal",
                    "Travel to Red Power Crystal."),
            },
        },
        {
            id = "turnin-3444-the-stone-circle",
            kind = "turnin",
            priority = 510,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Stone Circle.",
            complete = QuestState(3444, "completed"),
            route = {
                Point(1446, 0.5271, 0.4593, "The Stone Circle",
                    "Travel to The Stone Circle."),
            },
        },
        {
            id = "accept-4289-the-apes-of-un-goro",
            kind = "accept",
            priority = 520,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The Apes of Un'Goro.",
            complete = QuestState(4289, "activeOrCompleted"),
            route = {
                Point(1449, 0.7164, 0.7596, "The Apes of Un'Goro",
                    "Travel to The Apes of Un'Goro."),
            },
        },
        {
            id = "accept-4290-the-fare-of-lar-korwi",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Fare of Lar'korwi.",
            complete = QuestState(4290, "activeOrCompleted"),
            route = {
                Point(1449, 0.7164, 0.7596, "The Fare of Lar'korwi",
                    "Travel to The Fare of Lar'korwi."),
            },
        },
        {
            id = "accept-3844-it-s-a-secret-to-everybody",
            kind = "accept",
            priority = 540,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept It's a Secret to Everybody.",
            complete = QuestState(3844, "activeOrCompleted"),
            route = {
                Point(1449, 0.6302, 0.6850, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "turnin-3844-it-s-a-secret-to-everybody",
            kind = "turnin",
            priority = 550,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in It's a Secret to Everybody.",
            complete = QuestState(3844, "completed"),
            dependsOn = { "accept-3844-it-s-a-secret-to-everybody" },
            route = {
                Point(1449, 0.6312, 0.6902, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "accept-3845-it-s-a-secret-to-everybody",
            kind = "accept",
            priority = 560,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept It's a Secret to Everybody.",
            complete = QuestState(3845, "activeOrCompleted"),
            route = {
                Point(1449, 0.6312, 0.6902, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "turnin-4290-the-fare-of-lar-korwi",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Fare of Lar'korwi.",
            complete = QuestState(4290, "completed"),
            dependsOn = { "accept-4290-the-fare-of-lar-korwi" },
            route = {
                Point(1449, 0.7164, 0.7597, "The Fare of Lar'korwi",
                    "Travel to The Fare of Lar'korwi."),
            },
        },
        {
            id = "accept-4291-the-scent-of-lar-korwi",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept The Scent of Lar'korwi.",
            complete = QuestState(4291, "activeOrCompleted"),
            route = {
                Point(1449, 0.7164, 0.7597, "The Scent of Lar'korwi",
                    "Travel to The Scent of Lar'korwi."),
            },
        },
        {
            id = "objective-4291-1-lar-korwi-mate",
            kind = "objective",
            priority = 590,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Kill Lar'korwi Mate.",
            complete = QuestObjective(4291, 1, "Lar'korwi Mate"),
            dependsOn = { "accept-4291-the-scent-of-lar-korwi" },
            route = {
                Point(1449, 0.6720, 0.7300, "Lar'korwi Mate",
                    "Travel to Lar'korwi Mate."),
            },
        },
        {
            id = "accept-3884-williden-s-journal",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Williden's Journal.",
            complete = QuestState(3884, "activeOrCompleted"),
            route = {
                Point(1449, 0.6500, 0.7040, "Williden's Journal",
                    "Travel to Williden's Journal."),
            },
        },
        {
            id = "turnin-4291-the-scent-of-lar-korwi",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Scent of Lar'korwi.",
            complete = QuestState(4291, "completed"),
            dependsOn = { "accept-4291-the-scent-of-lar-korwi", "objective-4291-1-lar-korwi-mate" },
            route = {
                Point(1449, 0.7163, 0.7597, "The Scent of Lar'korwi",
                    "Travel to The Scent of Lar'korwi."),
            },
        },
        {
            id = "accept-4292-the-bait-for-lar-korwi",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The Bait for Lar'korwi.",
            complete = QuestState(4292, "activeOrCompleted"),
            route = {
                Point(1449, 0.7163, 0.7597, "The Bait for Lar'korwi",
                    "Travel to The Bait for Lar'korwi."),
            },
        },
        {
            id = "objective-3845-1-a-small-pack",
            kind = "objective",
            priority = 630,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Use A Small Pack.",
            complete = QuestObjective(3845, 1, "A Small Pack"),
            dependsOn = { "accept-3845-it-s-a-secret-to-everybody" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-3845-it-s-a-secret-to-everybody",
            kind = "turnin",
            priority = 640,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in It's a Secret to Everybody.",
            complete = QuestState(3845, "completed"),
            dependsOn = { "accept-3845-it-s-a-secret-to-everybody", "objective-3845-1-a-small-pack" },
            route = {
                Point(1449, 0.4466, 0.0811, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "accept-3908-it-s-a-secret-to-everybody",
            kind = "accept",
            priority = 650,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept It's a Secret to Everybody.",
            complete = QuestState(3908, "activeOrCompleted"),
            route = {
                Point(1449, 0.4466, 0.0811, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "turnin-3884-williden-s-journal",
            kind = "turnin",
            priority = 660,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Williden's Journal.",
            complete = QuestState(3884, "completed"),
            dependsOn = { "accept-3884-williden-s-journal" },
            route = {
                Point(1449, 0.4395, 0.0714, "Williden's Journal",
                    "Travel to Williden's Journal."),
            },
        },
        {
            id = "accept-4284-crystals-of-power",
            kind = "accept",
            priority = 670,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Crystals of Power.",
            complete = QuestState(4284, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0679, "Crystals of Power",
                    "Travel to Crystals of Power."),
            },
        },
        {
            id = "turnin-4284-crystals-of-power",
            kind = "turnin",
            priority = 680,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Crystals of Power.",
            complete = QuestState(4284, "completed"),
            dependsOn = { "accept-4284-crystals-of-power", "objective-4284-1-red-power-crystal" },
            route = {
                Point(1449, 0.4192, 0.0270, "Crystals of Power",
                    "Travel to Crystals of Power."),
            },
        },
        {
            id = "turnin-3063-vengeance-on-the-northspring",
            kind = "turnin",
            priority = 690,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vengeance on the Northspring.",
            complete = QuestState(3063, "completed"),
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
            route = {
                Point(1444, 0.7618, 0.4383, "Vengeance on the Northspring",
                    "Travel to Vengeance on the Northspring."),
            },
        },
        {
            id = "accept-4120-the-strength-of-corruption",
            kind = "accept",
            priority = 700,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept The Strength of Corruption.",
            complete = QuestState(4120, "activeOrCompleted"),
            route = {
                Point(1444, 0.7618, 0.4383, "The Strength of Corruption",
                    "Travel to The Strength of Corruption."),
            },
        },
        {
            id = "turnin-3062-dark-heart",
            kind = "turnin",
            priority = 710,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Dark Heart.",
            complete = QuestState(3062, "completed"),
            dependsOn = { "accept-3062-dark-heart", "objective-3062-1-northspring-harpy", "objective-3062-1-horn-of-hatetalon" },
            route = {
                Point(1444, 0.7618, 0.4383, "Dark Heart",
                    "Travel to Dark Heart."),
            },
        },
        {
            id = "turnin-7734-improved-quality",
            kind = "turnin",
            priority = 720,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Improved Quality.",
            complete = QuestState(7734, "completed"),
            dependsOn = { "accept-7734-improved-quality" },
            route = {
                Point(1444, 0.7443, 0.4291, "Improved Quality",
                    "Travel to Improved Quality."),
            },
        },
        {
            id = "turnin-7738-perfect-yeti-hide",
            kind = "turnin",
            priority = 730,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Perfect Yeti Hide.",
            complete = QuestState(7738, "completed"),
            dependsOn = { "accept-7738-perfect-yeti-hide" },
            route = {
                Point(1444, 0.7443, 0.4291, "Perfect Yeti Hide",
                    "Travel to Perfect Yeti Hide."),
            },
        },
        {
            id = "turnin-3127-mountain-giant-muisek",
            kind = "turnin",
            priority = 740,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Mountain Giant Muisek.",
            complete = QuestState(3127, "completed"),
            dependsOn = { "accept-3127-mountain-giant-muisek", "objective-3127-1-zorbin-s-ultra-shrinker" },
            route = {
                Point(1444, 0.7442, 0.4337, "Mountain Giant Muisek",
                    "Travel to Mountain Giant Muisek."),
            },
        },
        {
            id = "accept-3129-weapons-of-spirit",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Accept Weapons of Spirit.",
            complete = QuestState(3129, "activeOrCompleted"),
            route = {
                Point(1444, 0.7442, 0.4337, "Weapons of Spirit",
                    "Travel to Weapons of Spirit."),
            },
        },
        {
            id = "turnin-3129-weapons-of-spirit",
            kind = "turnin",
            priority = 760,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Weapons of Spirit.",
            complete = QuestState(3129, "completed"),
            dependsOn = { "accept-3129-weapons-of-spirit" },
            route = {
                Point(1444, 0.7442, 0.4337, "Weapons of Spirit",
                    "Travel to Weapons of Spirit."),
            },
        },
        {
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            priority = 770,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Horde" },
            } },
            text = "Collect 12 Pupellyverbos Port.",
            complete = QuestObjective(580, 1, "Pupellyverbos Port"),
            route = {
                Point(1454, 0.4958, 0.6912, "Pupellyverbos Port",
                    "Travel to Pupellyverbos Port."),
            },
        },
        {
            id = "turnin-81-ripple-delivery",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ripple Delivery.",
            complete = QuestState(81, "completed"),
            route = {
                Point(1454, 0.5948, 0.3659, "Ripple Delivery",
                    "Travel to Ripple Delivery."),
            },
        },
        {
            id = "turnin-4300-bone-bladed-weapons",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Horde" },
            } },
            text = "Turn in Bone-Bladed Weapons.",
            complete = QuestState(4300, "completed"),
            route = {
                Point(1454, 0.5551, 0.3409, "Bone-Bladed Weapons",
                    "Travel to Bone-Bladed Weapons."),
            },
        },
        {
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            priority = 800,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Volcanic Activity.",
            complete = QuestState(4502, "activeOrCompleted"),
            route = {
                Point(1413, 0.6245, 0.3874, "Volcanic Activity",
                    "Travel to Volcanic Activity."),
            },
        },
    },
})
