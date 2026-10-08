local _, ns = ...

-- Forever Casual spine: Un'Goro Crater (49-50)
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
    DESOLACE = 1443,
    TANARIS = 1446,
    UN_GORO_CRATER = 1449,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-ungoro-crater",
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "accept-4289-the-apes-of-un-goro",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
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
            priority = 20,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 30,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 40,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 50,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 60,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 70,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 80,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            id = "turnin-4291-the-scent-of-lar-korwi",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 100,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Bait for Lar'korwi.",
            complete = QuestState(4292, "activeOrCompleted"),
            route = {
                Point(1449, 0.7163, 0.7597, "The Bait for Lar'korwi",
                    "Travel to The Bait for Lar'korwi."),
            },
        },
        {
            id = "accept-3884-williden-s-journal",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Williden's Journal.",
            complete = QuestState(3884, "activeOrCompleted"),
            route = {
                Point(1449, 0.6720, 0.7300, "Williden's Journal",
                    "Travel to Williden's Journal."),
            },
        },
        {
            id = "objective-3845-1-a-small-pack",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 130,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 140,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
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
            priority = 150,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 160,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 170,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Crystals of Power.",
            complete = QuestState(4284, "completed"),
            dependsOn = { "accept-4284-crystals-of-power" },
            route = {
                Point(1449, 0.4192, 0.0270, "Crystals of Power",
                    "Travel to Crystals of Power."),
            },
        },
        {
            id = "accept-4141-muigin-and-larion",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Muigin and Larion.",
            complete = QuestState(4141, "activeOrCompleted"),
            route = {
                Point(1449, 0.4347, 0.0681, "Muigin and Larion",
                    "Travel to Muigin and Larion."),
            },
        },
        {
            id = "objective-4141-1-bloodpetal-flayer",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Kill Bloodpetal Flayer.",
            complete = QuestObjective(4141, 1, "Bloodpetal Flayer"),
            dependsOn = { "accept-4141-muigin-and-larion" },
            route = {
                Point(1449, 0.6920, 0.3520, "Bloodpetal Flayer",
                    "Travel to Bloodpetal Flayer."),
            },
        },
        {
            id = "turnin-4141-muigin-and-larion",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Muigin and Larion.",
            complete = QuestState(4141, "completed"),
            dependsOn = { "accept-4141-muigin-and-larion", "objective-4141-1-bloodpetal-flayer" },
            route = {
                Point(1449, 0.4294, 0.0964, "Muigin and Larion",
                    "Travel to Muigin and Larion."),
            },
        },
        {
            id = "accept-4142-a-visit-to-gregan",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept A Visit to Gregan.",
            complete = QuestState(4142, "activeOrCompleted"),
            route = {
                Point(1449, 0.4294, 0.0964, "A Visit to Gregan",
                    "Travel to A Visit to Gregan."),
            },
        },
        {
            id = "turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Thirsty Goblin.",
            complete = QuestState(2605, "completed"),
            route = {
                Point(1446, 0.5181, 0.2866, "The Thirsty Goblin",
                    "Travel to The Thirsty Goblin."),
            },
        },
        {
            id = "accept-2606-in-good-taste",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept In Good Taste.",
            complete = QuestState(2606, "activeOrCompleted"),
            route = {
                Point(1446, 0.5181, 0.2866, "In Good Taste",
                    "Travel to In Good Taste."),
            },
        },
        {
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            priority = 240,
            conditions = { all = {
                { level = { min = 50 } },
                { faction = "Alliance" },
            } },
            text = "Collect 12 Pupellyverbos Port.",
            complete = QuestObjective(580, 1, "Pupellyverbos Port"),
            route = {
                Point(1446, 0.5230, 0.2892, "Pupellyverbos Port",
                    "Travel to Pupellyverbos Port."),
            },
        },
        {
            id = "turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Dunemaul Compound.",
            complete = QuestState(5863, "completed"),
            route = {
                Point(1446, 0.5282, 0.2740, "The Dunemaul Compound",
                    "Travel to The Dunemaul Compound."),
            },
        },
        {
            id = "turnin-3362-thistleshrub-valley",
            kind = "turnin",
            priority = 260,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Thistleshrub Valley.",
            complete = QuestState(3362, "completed"),
            route = {
                Point(1446, 0.5157, 0.2676, "Thistleshrub Valley",
                    "Travel to Thistleshrub Valley."),
            },
        },
        {
            id = "turnin-2606-in-good-taste",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in In Good Taste.",
            complete = QuestState(2606, "completed"),
            dependsOn = { "accept-2606-in-good-taste" },
            route = {
                Point(1446, 0.5106, 0.2687, "In Good Taste",
                    "Travel to In Good Taste."),
            },
        },
        {
            id = "accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept Sprinkle's Secret Ingredient.",
            complete = QuestState(2641, "activeOrCompleted"),
            route = {
                Point(1446, 0.5106, 0.2687, "Sprinkle's Secret Ingredient",
                    "Travel to Sprinkle's Secret Ingredient."),
            },
        },
        {
            id = "accept-162-rise-of-the-silithid",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Alliance" },
            } },
            text = "Accept Rise of the Silithid.",
            complete = QuestState(162, "activeOrCompleted"),
            route = {
                Point(1446, 0.5021, 0.2748, "Rise of the Silithid",
                    "Travel to Rise of the Silithid."),
            },
        },
        {
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Gahz'ridian.",
            complete = QuestState(3161, "completed"),
            route = {
                Point(1446, 0.5271, 0.4593, "Gahz'ridian",
                    "Travel to Gahz'ridian."),
            },
        },
        {
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Stone Circle.",
            complete = QuestState(3444, "activeOrCompleted"),
            route = {
                Point(1446, 0.5271, 0.4593, "The Stone Circle",
                    "Travel to The Stone Circle."),
            },
        },
        {
            id = "accept-7065-corruption-of-earth-and-seed",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Corruption of Earth and Seed.",
            complete = QuestState(7065, "activeOrCompleted"),
            route = {
                Point(1443, 0.6383, 0.1067, "Corruption of Earth and Seed",
                    "Travel to Corruption of Earth and Seed."),
            },
        },
        {
            id = "accept-7041-vyletongue-corruption",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Vyletongue Corruption.",
            complete = QuestState(7041, "activeOrCompleted"),
            route = {
                Point(1443, 0.6850, 0.0888, "Vyletongue Corruption",
                    "Travel to Vyletongue Corruption."),
            },
        },
        {
            id = "accept-7028-twisted-evils",
            kind = "accept",
            priority = 340,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Accept Twisted Evils.",
            complete = QuestState(7028, "activeOrCompleted"),
            route = {
                Point(1443, 0.6220, 0.3963, "Twisted Evils",
                    "Travel to Twisted Evils."),
            },
        },
        {
            id = "accept-7067-the-pariah-s-instructions",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 360,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 370,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Inside Maraudon, accept Legends of Maraudon from the Centaur Apparition.",
            complete = QuestState(7044, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "objective-7041-2-coated-cerulean-vial",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Use Coated Cerulean Vial.",
            complete = QuestObjective(7041, 2, "Coated Cerulean Vial"),
            dependsOn = { "accept-7041-vyletongue-corruption" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-7044-2-noxxion",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 400,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 410,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 420,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Inside Maraudon, accept The Scepter of Celebras from Celebras the Redeemed.",
            complete = QuestState(7046, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-7046-the-scepter-of-celebras",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Scepter of Celebras.",
            complete = QuestState(7046, "completed"),
            dependsOn = { "accept-7046-the-scepter-of-celebras" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-7065-1-princess-theradras",
            kind = "objective",
            priority = 440,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Kill Princess Theradras.",
            complete = QuestObjective(7065, 1, "Princess Theradras"),
            dependsOn = { "accept-7065-corruption-of-earth-and-seed" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "accept-7066-seed-of-life",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Alliance" },
            } },
            text = "Inside Maraudon, accept Seed of Life from Zaetar's Spirit.",
            complete = QuestState(7066, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-7067-the-pariah-s-instructions",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            priority = 470,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
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
            id = "turnin-7041-vyletongue-corruption",
            kind = "turnin",
            priority = 480,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Vyletongue Corruption.",
            complete = QuestState(7041, "completed"),
            dependsOn = { "accept-7041-vyletongue-corruption", "objective-7041-2-coated-cerulean-vial" },
            route = {
                Point(1443, 0.6850, 0.0888, "Vyletongue Corruption",
                    "Travel to Vyletongue Corruption."),
            },
        },
        {
            id = "turnin-7065-corruption-of-earth-and-seed",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { level = { min = 49 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Corruption of Earth and Seed.",
            complete = QuestState(7065, "completed"),
            dependsOn = { "accept-7065-corruption-of-earth-and-seed", "objective-7065-1-princess-theradras" },
            route = {
                Point(1443, 0.6383, 0.1067, "Corruption of Earth and Seed",
                    "Travel to Corruption of Earth and Seed."),
            },
        },
    },
})
