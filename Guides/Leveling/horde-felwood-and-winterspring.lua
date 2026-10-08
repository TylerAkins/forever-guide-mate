local _, ns = ...

-- Forever Casual spine: Felwood & Winterspring (52-53)
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
    FELWOOD = 1448,
    WINTERSPRING = 1452,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-felwood-and-winterspring",
    title = "Felwood & Winterspring",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 52 } },
        },
    },
    goals = {
        {
            id = "accept-5155-forces-of-jaedenar",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Forces of Jaedenar.",
            complete = QuestState(5155, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Forces of Jaedenar",
                    "Travel to Forces of Jaedenar."),
            },
        },
        {
            id = "accept-5156-verifying-the-corruption",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Verifying the Corruption.",
            complete = QuestState(5156, "activeOrCompleted"),
            route = {
                Point(1448, 0.5089, 0.8162, "Verifying the Corruption",
                    "Travel to Verifying the Corruption."),
            },
        },
        {
            id = "accept-8460-timbermaw-ally",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Timbermaw Ally.",
            complete = QuestState(8460, "activeOrCompleted"),
            route = {
                Point(1448, 0.5093, 0.8501, "Timbermaw Ally",
                    "Travel to Timbermaw Ally."),
            },
        },
        {
            id = "objective-8460-1-deadwood-warrior",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Warrior.",
            complete = QuestObjective(8460, 1, "Deadwood Warrior"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Warrior",
                    "Travel to Deadwood Warrior."),
            },
        },
        {
            id = "objective-8460-2-deadwood-pathfinder",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Pathfinder.",
            complete = QuestObjective(8460, 2, "Deadwood Pathfinder"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Pathfinder",
                    "Travel to Deadwood Pathfinder."),
            },
        },
        {
            id = "objective-8460-3-deadwood-gardener",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Deadwood Gardener.",
            complete = QuestObjective(8460, 3, "Deadwood Gardener"),
            dependsOn = { "accept-8460-timbermaw-ally" },
            route = {
                Point(1448, 0.4840, 0.8920, "Deadwood Gardener",
                    "Travel to Deadwood Gardener."),
            },
        },
        {
            id = "turnin-8460-timbermaw-ally",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Timbermaw Ally.",
            complete = QuestState(8460, "completed"),
            dependsOn = { "accept-8460-timbermaw-ally", "objective-8460-1-deadwood-warrior", "objective-8460-2-deadwood-pathfinder", "objective-8460-3-deadwood-gardener" },
            route = {
                Point(1448, 0.5093, 0.8502, "Timbermaw Ally",
                    "Travel to Timbermaw Ally."),
            },
        },
        {
            id = "accept-8462-speak-to-nafien",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Speak to Nafien.",
            complete = QuestState(8462, "activeOrCompleted"),
            route = {
                Point(1448, 0.5093, 0.8502, "Speak to Nafien",
                    "Travel to Speak to Nafien."),
            },
        },
        {
            id = "accept-4102-cleansing-felwood",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Cleansing Felwood.",
            complete = QuestState(4102, "activeOrCompleted"),
            route = {
                Point(1448, 0.4668, 0.8298, "Cleansing Felwood",
                    "Travel to Cleansing Felwood."),
            },
        },
        {
            id = "objective-5155-1-jaedenar-hound",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Jaedenar Hound.",
            complete = QuestObjective(5155, 1, "Jaedenar Hound"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Hound",
                    "Travel to Jaedenar Hound."),
            },
        },
        {
            id = "objective-5155-2-jaedenar-guardian",
            kind = "objective",
            priority = 110,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Jaedenar Guardian.",
            complete = QuestObjective(5155, 2, "Jaedenar Guardian"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Guardian",
                    "Travel to Jaedenar Guardian."),
            },
        },
        {
            id = "objective-5155-3-jaedenar-adept",
            kind = "objective",
            priority = 120,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Jaedenar Adept.",
            complete = QuestObjective(5155, 3, "Jaedenar Adept"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Adept",
                    "Travel to Jaedenar Adept."),
            },
        },
        {
            id = "objective-5155-4-jaedenar-cultist",
            kind = "objective",
            priority = 130,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill 6 Jaedenar Cultist.",
            complete = QuestObjective(5155, 4, "Jaedenar Cultist"),
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            route = {
                Point(1448, 0.4040, 0.5760, "Jaedenar Cultist",
                    "Travel to Jaedenar Cultist."),
            },
        },
        {
            id = "accept-4505-well-of-corruption",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Well of Corruption.",
            complete = QuestState(4505, "activeOrCompleted"),
            route = {
                Point(1448, 0.3865, 0.5732, "Well of Corruption",
                    "Travel to Well of Corruption."),
            },
        },
        {
            id = "accept-6162-a-husband-s-last-battle",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept A Husband's Last Battle.",
            complete = QuestState(6162, "activeOrCompleted"),
            route = {
                Point(1448, 0.3480, 0.5273, "A Husband's Last Battle",
                    "Travel to A Husband's Last Battle."),
            },
        },
        {
            id = "objective-4505-1-hardened-flasket",
            kind = "objective",
            priority = 160,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Use Hardened Flasket.",
            complete = QuestObjective(4505, 1, "Hardened Flasket"),
            dependsOn = { "accept-4505-well-of-corruption" },
            route = {
                Point(1448, 0.3664, 0.6686, "Hardened Flasket",
                    "Travel to Hardened Flasket."),
            },
        },
        {
            id = "objective-6162-1-overlord-ror",
            kind = "objective",
            priority = 170,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill Overlord Ror.",
            complete = QuestObjective(6162, 1, "Overlord Ror"),
            dependsOn = { "accept-6162-a-husband-s-last-battle" },
            route = {
                Point(1448, 0.4823, 0.9427, "Overlord Ror",
                    "Travel to Overlord Ror."),
            },
        },
        {
            id = "turnin-5155-forces-of-jaedenar",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Forces of Jaedenar.",
            complete = QuestState(5155, "completed"),
            dependsOn = { "accept-5155-forces-of-jaedenar", "objective-5155-1-jaedenar-hound", "objective-5155-2-jaedenar-guardian", "objective-5155-3-jaedenar-adept", "objective-5155-4-jaedenar-cultist" },
            route = {
                Point(1448, 0.5121, 0.8211, "Forces of Jaedenar",
                    "Travel to Forces of Jaedenar."),
            },
        },
        {
            id = "accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            priority = 190,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Accept Collection of the Corrupt Water.",
            complete = QuestState(5157, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Collection of the Corrupt Water",
                    "Travel to Collection of the Corrupt Water."),
            },
        },
        {
            id = "objective-4102-1-warpwood-moss-flayer",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Kill Warpwood Moss Flayer.",
            complete = QuestObjective(4102, 1, "Warpwood Moss Flayer"),
            dependsOn = { "accept-4102-cleansing-felwood" },
            route = {
                Point(1448, 0.5578, 0.1685, "Warpwood Moss Flayer",
                    "Travel to Warpwood Moss Flayer."),
            },
        },
        {
            id = "objective-4120-1-angerclaw-grizzly",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Kill 12 Angerclaw Grizzly.",
            complete = QuestObjective(4120, 1, "Angerclaw Grizzly"),
            route = {
                Point(1448, 0.5588, 0.1715, "Angerclaw Grizzly",
                    "Travel to Angerclaw Grizzly."),
            },
        },
        {
            id = "objective-4120-2-felpaw-ravager",
            kind = "objective",
            priority = 220,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Kill 12 Felpaw Ravager.",
            complete = QuestObjective(4120, 2, "Felpaw Ravager"),
            route = {
                Point(1448, 0.5588, 0.1715, "Felpaw Ravager",
                    "Travel to Felpaw Ravager."),
            },
        },
        {
            id = "turnin-8462-speak-to-nafien",
            kind = "turnin",
            priority = 230,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Speak to Nafien.",
            complete = QuestState(8462, "completed"),
            dependsOn = { "accept-8462-speak-to-nafien" },
            route = {
                Point(1448, 0.6477, 0.0813, "Speak to Nafien",
                    "Travel to Speak to Nafien."),
            },
        },
        {
            id = "accept-5082-threat-of-the-winterfall",
            kind = "accept",
            priority = 240,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Threat of the Winterfall.",
            complete = QuestState(5082, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Threat of the Winterfall",
                    "Travel to Threat of the Winterfall."),
            },
        },
        {
            id = "turnin-3908-it-s-a-secret-to-everybody",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Turn in It's a Secret to Everybody.",
            complete = QuestState(3908, "completed"),
            route = {
                Point(1452, 0.3127, 0.4516, "It's a Secret to Everybody",
                    "Travel to It's a Secret to Everybody."),
            },
        },
        {
            id = "accept-5083-winterfall-firewater",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Winterfall Firewater.",
            complete = QuestState(5083, "activeOrCompleted"),
            route = {
                Point(1452, 0.3000, 0.3540, "Winterfall Firewater",
                    "Travel to Winterfall Firewater."),
            },
        },
        {
            id = "turnin-5082-threat-of-the-winterfall",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Threat of the Winterfall.",
            complete = QuestState(5082, "completed"),
            dependsOn = { "accept-5082-threat-of-the-winterfall" },
            route = {
                Point(1452, 0.3127, 0.4516, "Threat of the Winterfall",
                    "Travel to Threat of the Winterfall."),
            },
        },
        {
            id = "turnin-5083-winterfall-firewater",
            kind = "turnin",
            priority = 280,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winterfall Firewater.",
            complete = QuestState(5083, "completed"),
            dependsOn = { "accept-5083-winterfall-firewater" },
            route = {
                Point(1452, 0.3127, 0.4516, "Winterfall Firewater",
                    "Travel to Winterfall Firewater."),
            },
        },
        {
            id = "accept-5084-falling-to-corruption",
            kind = "accept",
            priority = 290,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Falling to Corruption.",
            complete = QuestState(5084, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "Falling to Corruption",
                    "Travel to Falling to Corruption."),
            },
        },
        {
            id = "accept-3909-the-videre-elixir",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept The Videre Elixir.",
            complete = QuestState(3909, "activeOrCompleted"),
            route = {
                Point(1452, 0.3127, 0.4516, "The Videre Elixir",
                    "Travel to The Videre Elixir."),
            },
        },
        {
            id = "turnin-4808-felnok-steelspring",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 58 } },
                { faction = "Horde" },
            } },
            text = "Turn in Felnok Steelspring.",
            complete = QuestState(4808, "completed"),
            route = {
                Point(1452, 0.6163, 0.3861, "Felnok Steelspring",
                    "Travel to Felnok Steelspring."),
            },
        },
        {
            id = "turnin-6162-a-husband-s-last-battle",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Husband's Last Battle.",
            complete = QuestState(6162, "completed"),
            dependsOn = { "accept-6162-a-husband-s-last-battle", "objective-6162-1-overlord-ror" },
            route = {
                Point(1448, 0.3480, 0.5273, "A Husband's Last Battle",
                    "Travel to A Husband's Last Battle."),
            },
        },
        {
            id = "turnin-4505-well-of-corruption",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Well of Corruption.",
            complete = QuestState(4505, "completed"),
            dependsOn = { "accept-4505-well-of-corruption", "objective-4505-1-hardened-flasket" },
            route = {
                Point(1448, 0.3421, 0.5234, "Well of Corruption",
                    "Travel to Well of Corruption."),
            },
        },
        {
            id = "turnin-4102-cleansing-felwood",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Cleansing Felwood.",
            complete = QuestState(4102, "completed"),
            dependsOn = { "accept-4102-cleansing-felwood", "objective-4102-1-warpwood-moss-flayer" },
            route = {
                Point(1448, 0.4672, 0.8307, "Cleansing Felwood",
                    "Travel to Cleansing Felwood."),
            },
        },
        {
            id = "turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Collection of the Corrupt Water.",
            complete = QuestState(5157, "completed"),
            dependsOn = { "accept-5157-collection-of-the-corrupt-water" },
            route = {
                Point(1448, 0.5121, 0.8211, "Collection of the Corrupt Water",
                    "Travel to Collection of the Corrupt Water."),
            },
        },
        {
            id = "accept-5158-seeking-spiritual-aid",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Accept Seeking Spiritual Aid.",
            complete = QuestState(5158, "activeOrCompleted"),
            route = {
                Point(1448, 0.5121, 0.8211, "Seeking Spiritual Aid",
                    "Travel to Seeking Spiritual Aid."),
            },
        },
        {
            id = "turnin-5156-verifying-the-corruption",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Verifying the Corruption.",
            complete = QuestState(5156, "completed"),
            dependsOn = { "accept-5156-verifying-the-corruption" },
            route = {
                Point(1448, 0.5089, 0.8162, "Verifying the Corruption",
                    "Travel to Verifying the Corruption."),
            },
        },
        {
            id = "turnin-3541-delivery-to-jes-rimon",
            kind = "turnin",
            priority = 380,
            conditions = { all = {
                { level = { min = 52 } },
                { faction = "Horde" },
            } },
            text = "Turn in Delivery to Jes'rimon.",
            complete = QuestState(3541, "completed"),
            route = {
                Point(1454, 0.5551, 0.3409, "Delivery to Jes'rimon",
                    "Travel to Delivery to Jes'rimon."),
            },
        },
        {
            id = "accept-3563-jes-rimon-s-payment-to-jediga",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 54 } },
                { faction = "Horde" },
            } },
            text = "Accept Jes'rimon's Payment to Jediga.",
            complete = QuestState(3563, "activeOrCompleted"),
            route = {
                Point(1454, 0.5551, 0.3409, "Jes'rimon's Payment to Jediga",
                    "Travel to Jes'rimon's Payment to Jediga."),
            },
        },
        {
            id = "objective-4292-1-un-goro-soil",
            kind = "objective",
            priority = 400,
            conditions = { all = {
                { level = { min = 53 } },
                { faction = "Horde" },
            } },
            text = "Collect 25 Un'Goro Soil.",
            complete = QuestObjective(4292, 1, "Un'Goro Soil"),
            route = {
                Point(1454, 0.4958, 0.6912, "Un'Goro Soil",
                    "Travel to Un'Goro Soil."),
            },
        },
    },
})
