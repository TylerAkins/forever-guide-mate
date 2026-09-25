local _, ns = ...

-- Horde Era leveling route for Felwood, levels 54-54.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    FELWOOD = 1448,
    MOONGLADE = 1450,
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
    id = "leveling-era-54-54-felwood",
    title = "54-54 Felwood (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 54 } },
        },
    },
    goals = {
        {
            id = "travel-4102-emerald-sanctuary",
            kind = "travel",
            priority = 10,
            text = "Travel to Emerald Sanctuary.",
            route = {
                Point(MAP.FELWOOD, 0.5106, 0.8191, "Emerald Sanctuary",
                    "Travel to Emerald Sanctuary."),
            },
        },
        {
            id = "accept-5155-forces-of-jaedenar",
            kind = "accept",
            priority = 20,
            text = "Accept Forces of Jaedenar from Greta Mosshoof in Emerald Sanctuary.",
            complete = QuestState(5155, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5106, 0.8191, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "accept-5156-verifying-the-corruption",
            kind = "accept",
            priority = 30,
            text = "Accept Verifying the Corruption from Taronn Redfeather in Emerald Sanctuary.",
            complete = QuestState(5156, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5094, 0.8162, "Taronn Redfeather",
                    "Travel to Taronn Redfeather."),
            },
        },
        {
            id = "accept-4102-cleansing-felwood",
            kind = "accept",
            priority = 40,
            text = "Accept Cleansing Felwood from Maybess Riverbreeze in Felwood.",
            complete = QuestState(4102, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.4676, 0.8312, "Maybess Riverbreeze",
                    "Travel to Maybess Riverbreeze."),
            },
        },
        {
            id = "accept-6131-timbermaw-ally",
            kind = "accept",
            priority = 50,
            text = "Accept Timbermaw Ally from Grazle in Emerald Sanctuary.",
            complete = QuestState(6131, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5094, 0.8500, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "objective-6131-timbermaw-ally",
            kind = "objective",
            priority = 60,
            text = "Kill the required Deadwood furbolg mobs in Deadwood Village.",
            dependsOn = { "accept-6131-timbermaw-ally" },
            complete = QuestState(6131, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4869, 0.9208, "Deadwood Warrior",
                    "Travel to Deadwood Warrior."),
            },
        },
        {
            id = "turnin-6131-timbermaw-ally",
            kind = "turnin",
            priority = 70,
            text = "Turn in Timbermaw Ally to Grazle in Emerald Sanctuary.",
            dependsOn = { "objective-6131-timbermaw-ally" },
            complete = QuestState(6131, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5093, 0.8503, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "accept-8462-speak-to-nafien",
            kind = "accept",
            priority = 80,
            text = "Accept Speak to Nafien from Grazle in Emerald Sanctuary.",
            complete = QuestState(8462, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5093, 0.8503, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "travel-4293-ruins-of-constellas",
            kind = "travel",
            priority = 90,
            text = "Travel to Ruins of Constellas.",
            route = {
                Point(MAP.FELWOOD, 0.4041, 0.7154, "Ruins of Constellas",
                    "Travel to Ruins of Constellas."),
            },
        },
        {
            id = "objective-4293-cursed-ooze",
            kind = "objective",
            priority = 100,
            text = "Kill Cursed Ooze and start collecting Felwood Slime Sample, you will need about 35 total Clear both pool area and collect 20 Felwood Slime Sample for now.",
            complete = QuestState(4293, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4041, 0.7154, "Continue toward Cursed Ooze",
                    "Continue toward Cursed Ooze."),
                Point(MAP.FELWOOD, 0.4067, 0.6691, "Cursed Ooze",
                    "Travel to Cursed Ooze."),
            },
        },
        {
            id = "travel-5155-jaedenar",
            kind = "travel",
            priority = 110,
            text = "Travel to Jaedenar.",
            route = {
                Point(MAP.FELWOOD, 0.3936, 0.5817, "Jaedenar",
                    "Travel to Jaedenar."),
            },
        },
        {
            id = "objective-5155-forces-of-jaedenar",
            kind = "objective",
            priority = 120,
            text = "Kill the required Jaedenar Satrys in Jaedenar.",
            dependsOn = { "accept-5155-forces-of-jaedenar" },
            complete = QuestState(5155, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3887, 0.5876, "Continue toward Forces of Jaedenar",
                    "Continue toward Forces of Jaedenar."),
                Point(MAP.FELWOOD, 0.3766, 0.6112, "Continue toward Forces of Jaedenar",
                    "Continue toward Forces of Jaedenar."),
                Point(MAP.FELWOOD, 0.3540, 0.6027, "Jaedenar Guardian",
                    "Travel to Jaedenar Guardian."),
            },
        },
        {
            id = "objective-4293-tainted-ooze",
            kind = "objective",
            priority = 130,
            text = "Kill Tainted Ooze and finish collecting 35 Felwood Slime Sample in Jaedenar.",
            complete = QuestState(4293, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4000, 0.5502, "Continue toward Tainted Ooze",
                    "Continue toward Tainted Ooze."),
                Point(MAP.FELWOOD, 0.4057, 0.5906, "Tainted Ooze",
                    "Travel to Tainted Ooze."),
            },
        },
        {
            id = "travel-5156-bloodvenom-post",
            kind = "travel",
            priority = 140,
            text = "Travel to Bloodvenom Post.",
            route = {
                Point(MAP.FELWOOD, 0.3995, 0.5072, "Continue toward Bloodvenom Post",
                    "Continue toward Bloodvenom Post."),
                Point(MAP.FELWOOD, 0.3497, 0.5046, "Bloodvenom Post",
                    "Travel to Bloodvenom Post."),
            },
        },
        {
            id = "accept-6162-a-husband-s-last-battle",
            kind = "accept",
            priority = 150,
            text = "Accept A Husband's Last Battle from Dreka'Sur in Bloodvenom Post.",
            complete = QuestState(6162, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3471, 0.5277, "Dreka'Sur",
                    "Travel to Dreka'Sur."),
            },
        },
        {
            id = "accept-4521-wild-guardians",
            kind = "accept",
            priority = 160,
            text = "Accept Wild Guardians from Trull Failbane in Bloodvenom Post.",
            complete = QuestState(4521, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.3468, 0.5279, "Trull Failbane",
                    "Travel to Trull Failbane."),
            },
        },
        {
            id = "travel-5156-shatter-scar-vale",
            kind = "travel",
            priority = 170,
            text = "Travel to Shatter Scar Vale.",
            route = {
                Point(MAP.FELWOOD, 0.4332, 0.7451, "Continue toward Shatter Scar Vale",
                    "Continue toward Shatter Scar Vale."),
                Point(MAP.FELWOOD, 0.4055, 0.4280, "Shatter Scar Vale",
                    "Travel to Shatter Scar Vale."),
            },
        },
        {
            id = "objective-5156-verifying-the-corruption",
            kind = "objective",
            priority = 180,
            text = "Kill 2 Maeva Snowbraid and 2 Entropic Beast in Shatter Scar Vale.",
            dependsOn = { "accept-5156-verifying-the-corruption" },
            complete = QuestState(5156, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4055, 0.4280, "Maeva Snowbraid",
                    "Travel to Maeva Snowbraid."),
            },
        },
        {
            id = "travel-4102-irontree-woods",
            kind = "travel",
            priority = 190,
            text = "Travel to Irontree Woods.",
            route = {
                Point(MAP.FELWOOD, 0.3997, 0.3423, "Continue toward Irontree Woods",
                    "Continue toward Irontree Woods."),
                Point(MAP.FELWOOD, 0.4117, 0.2488, "Continue toward Irontree Woods",
                    "Continue toward Irontree Woods."),
                Point(MAP.FELWOOD, 0.5017, 0.1410, "Continue toward Irontree Woods",
                    "Continue toward Irontree Woods."),
                Point(MAP.FELWOOD, 0.5507, 0.1771, "Irontree Woods",
                    "Travel to Irontree Woods."),
            },
        },
        {
            id = "objective-4102-cleansing-felwood",
            kind = "objective",
            priority = 200,
            text = "Kill Warpwood Moss Flayer, Warpwood Shredder and collect 15 Blood Amber in Irontree Woods, (low drop rate).",
            dependsOn = { "accept-4102-cleansing-felwood" },
            complete = QuestState(4102, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.5519, 0.1772, "Warpwood Moss Flayer",
                    "Travel to Warpwood Moss Flayer."),
            },
        },
        {
            id = "travel-4102-irontree-woods-2",
            kind = "travel",
            priority = 210,
            text = "Travel to Irontree Woods.",
            route = {
                Point(MAP.FELWOOD, 0.5507, 0.1771, "Irontree Woods",
                    "Travel to Irontree Woods."),
            },
        },
        {
            id = "objective-4120-the-strength-of-corruption",
            kind = "objective",
            priority = 220,
            text = "Kill 12 Angerclaw Grizzly and 12 Felpaw Ravager in Irontree Woods.",
            complete = QuestState(4120, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.5130, 0.1229, "Continue toward The Strength of Corruption",
                    "Continue toward The Strength of Corruption."),
                Point(MAP.FELWOOD, 0.5576, 0.2200, "Continue toward The Strength of Corruption",
                    "Continue toward The Strength of Corruption."),
                Point(MAP.FELWOOD, 0.5676, 0.2496, "Angerclaw Grizzly",
                    "Travel to Angerclaw Grizzly."),
            },
        },
        {
            id = "travel-8461-timbermaw-hold",
            kind = "travel",
            priority = 230,
            text = "Travel to Timbermaw Hold.",
            route = {
                Point(MAP.FELWOOD, 0.6475, 0.0814, "Timbermaw Hold",
                    "Travel to Timbermaw Hold."),
            },
        },
        {
            id = "accept-8461-deadwood-of-the-north",
            kind = "accept",
            priority = 240,
            text = "Accept Deadwood of the North from Nafien in Timbermaw Hold.",
            complete = QuestState(8461, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6475, 0.0814, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "objective-8461-deadwood-of-the-north",
            kind = "objective",
            priority = 250,
            text = "Kill the required Deadwood Timbermaw in Felpaw Village.",
            dependsOn = { "accept-8461-deadwood-of-the-north" },
            complete = QuestState(8461, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.6289, 0.1129, "Continue toward Deadwood of the North",
                    "Continue toward Deadwood of the North."),
                Point(MAP.FELWOOD, 0.6269, 0.0786, "Continue toward Deadwood of the North",
                    "Continue toward Deadwood of the North."),
                Point(MAP.FELWOOD, 0.6137, 0.0742, "Deadwood Shaman",
                    "Travel to Deadwood Shaman."),
            },
        },
        {
            id = "turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            priority = 260,
            text = "Turn in Deadwood of the North to Nafien in Timbermaw Hold.",
            dependsOn = { "objective-8461-deadwood-of-the-north" },
            complete = QuestState(8461, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6440, 0.1479, "Continue toward Deadwood of the North",
                    "Continue toward Deadwood of the North."),
                Point(MAP.FELWOOD, 0.6476, 0.0819, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            priority = 270,
            text = "Accept Speak to Salfa from Nafien in Timbermaw Hold.",
            complete = QuestState(8465, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6476, 0.0819, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "travel-moonglade",
            kind = "travel",
            priority = 280,
            text = "Travel to Moonglade.",
            route = {
                Point(MAP.MOONGLADE, 0.3576, 0.7241, "Moonglade",
                    "Travel to Moonglade."),
            },
        },
    },
})
