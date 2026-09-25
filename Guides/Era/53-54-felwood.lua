local _, ns = ...

-- Alliance Era leveling route for Felwood, levels 53-54.
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
    id = "leveling-era-53-54-felwood",
    title = "53-54 Felwood (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 53 } },
        },
    },
    goals = {
        {
            id = "accept-4101-cleansing-felwood",
            kind = "accept",
            priority = 20,
            text = "Accept Cleansing Felwood from Arathandris Silversky in Morlos'Aran.",
            complete = QuestState(4101, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5415, 0.8684, "Arathandris Silversky",
                    "Travel to Arathandris Silversky."),
            },
        },
        {
            id = "accept-5155-forces-of-jaedenar",
            kind = "accept",
            priority = 40,
            text = "Accept Forces of Jaedenar from Greta Mosshoof in Emerald Sanctuary.",
            complete = QuestState(5155, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5120, 0.8210, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "accept-5156-verifying-the-corruption",
            kind = "accept",
            priority = 50,
            text = "Accept Verifying the Corruption from Taronn Redfeather in Emerald Sanctuary.",
            complete = QuestState(5156, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5094, 0.8165, "Taronn Redfeather",
                    "Travel to Taronn Redfeather."),
            },
        },
        {
            id = "accept-5249-to-winterspring",
            kind = "accept",
            priority = 60,
            text = "Accept To Winterspring! from Ivy Leafrunner in Emerald Sanctuary.",
            complete = QuestState(5249, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5101, 0.8194, "Ivy Leafrunner",
                    "Travel to Ivy Leafrunner."),
            },
        },
        {
            id = "accept-4421-the-corruption-of-the-jadefire",
            kind = "accept",
            priority = 70,
            text = "Accept The Corruption of the Jadefire from Eridan Bluewind in Emerald Sanctuary.",
            complete = QuestState(4421, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5135, 0.8153, "Eridan Bluewind",
                    "Travel to Eridan Bluewind."),
            },
        },
        {
            id = "accept-6131-timbermaw-ally",
            kind = "accept",
            priority = 80,
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
            priority = 90,
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
            priority = 100,
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
            priority = 110,
            text = "Accept Speak to Nafien from Grazle in Emerald Sanctuary.",
            complete = QuestState(8462, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5093, 0.8503, "Grazle",
                    "Travel to Grazle."),
            },
        },
        {
            id = "objective-4512-1-cursed-ooze",
            kind = "objective",
            priority = 130,
            text = "Kill Cursed Ooze and use Empty Cursed Ooze Jar to collect 6 Filled Cursed Ooze Jar in Ruins of Constellas.",
            complete = QuestObjective(4512, 1),
            route = {
                Point(MAP.FELWOOD, 0.4014, 0.6791, "Cursed Ooze",
                    "Travel to Cursed Ooze."),
            },
        },
        {
            id = "objective-4421-4-xavathras",
            kind = "objective",
            priority = 140,
            text = "Kill Xavathras Xavathras in Ruins of Constellas.",
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
            complete = QuestObjective(4421, 4),
            route = {
                Point(MAP.FELWOOD, 0.3662, 0.6846, "Continue toward Xavathras",
                    "Continue toward Xavathras."),
                Point(MAP.FELWOOD, 0.3360, 0.6660, "Xavathras",
                    "Travel to Xavathras."),
            },
        },
        {
            id = "objective-4421-the-corruption-of-the-jadefire",
            kind = "objective",
            priority = 150,
            text = "Kill the required Jadefire Satry in Ruins of Constellas.",
            dependsOn = { "accept-4421-the-corruption-of-the-jadefire" },
            complete = QuestState(4421, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.3716, 0.6688, "Continue toward The Corruption of the Jadefire",
                    "Continue toward The Corruption of the Jadefire."),
                Point(MAP.FELWOOD, 0.3779, 0.6924, "Continue toward The Corruption of the Jadefire",
                    "Continue toward The Corruption of the Jadefire."),
                Point(MAP.FELWOOD, 0.3662, 0.6846, "Jadefire Rogue",
                    "Travel to Jadefire Rogue."),
            },
        },
        {
            id = "objective-4512-2-tainted-ooze",
            kind = "objective",
            priority = 170,
            text = "Kill Tainted Ooze and use Empty Tainted Ooze Jar to collect 6 Filled Tainted Ooze Jar in Jaedenar.",
            complete = QuestObjective(4512, 2),
            route = {
                Point(MAP.FELWOOD, 0.3994, 0.5520, "Tainted Ooze",
                    "Travel to Tainted Ooze."),
            },
        },
        {
            id = "objective-5155-forces-of-jaedenar",
            kind = "objective",
            priority = 180,
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
            id = "turnin-4421-the-corruption-of-the-jadefire",
            kind = "turnin",
            priority = 200,
            text = "Turn in The Corruption of the Jadefire to Eridan Bluewind in Emerald Sanctuary.",
            dependsOn = { "objective-4421-4-xavathras", "objective-4421-the-corruption-of-the-jadefire" },
            complete = QuestState(4421, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5135, 0.8152, "Eridan Bluewind",
                    "Travel to Eridan Bluewind."),
            },
        },
        {
            id = "accept-4906-further-corruption",
            kind = "accept",
            priority = 210,
            text = "Accept Further Corruption from Eridan Bluewind in Emerald Sanctuary.",
            complete = QuestState(4906, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5135, 0.8152, "Eridan Bluewind",
                    "Travel to Eridan Bluewind."),
            },
        },
        {
            id = "turnin-5155-forces-of-jaedenar",
            kind = "turnin",
            priority = 220,
            text = "Turn in Forces of Jaedenar to Greta Mosshoof in Emerald Sanctuary.",
            dependsOn = { "objective-5155-forces-of-jaedenar" },
            complete = QuestState(5155, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5119, 0.8206, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            priority = 230,
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof in Emerald Sanctuary.",
            complete = QuestState(5157, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5119, 0.8206, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "objective-5157-collection-of-the-corrupt-water",
            kind = "objective",
            priority = 250,
            text = "Use Empty Canteen near the Corrupt Moonwell in Jaedenar.",
            dependsOn = { "accept-5157-collection-of-the-corrupt-water" },
            complete = QuestState(5157, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4130, 0.5984, "Continue toward Collection of the Corrupt Water",
                    "Continue toward Collection of the Corrupt Water."),
                Point(MAP.FELWOOD, 0.3516, 0.5974, "Jaedenar",
                    "Travel to Jaedenar."),
            },
        },
        {
            id = "turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            priority = 270,
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof in Emerald Sanctuary.",
            dependsOn = { "objective-5157-collection-of-the-corrupt-water" },
            complete = QuestState(5157, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.5121, 0.8211, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "accept-5158-seeking-spiritual-aid",
            kind = "accept",
            priority = 280,
            text = "Accept Seeking Spiritual Aid from Greta Mosshoof in Emerald Sanctuary.",
            complete = QuestState(5158, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.5121, 0.8211, "Greta Mosshoof",
                    "Travel to Greta Mosshoof."),
            },
        },
        {
            id = "objective-5156-verifying-the-corruption",
            kind = "objective",
            priority = 300,
            text = "Kill 2 Entropic Beast and 2 Entropic Horror in Shatter Scar Vale.",
            dependsOn = { "accept-5156-verifying-the-corruption" },
            complete = QuestState(5156, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4055, 0.4280, "Entropic Beast",
                    "Travel to Entropic Beast."),
            },
        },
        {
            id = "objective-4906-4-xavaric",
            kind = "objective",
            priority = 320,
            text = "Kill Xavaric in Jadefire Run.",
            dependsOn = { "accept-4906-further-corruption" },
            complete = QuestObjective(4906, 4),
            route = {
                Point(MAP.FELWOOD, 0.4268, 0.1834, "Continue toward Xavaric",
                    "Continue toward Xavaric."),
                Point(MAP.FELWOOD, 0.4305, 0.1526, "Continue toward Xavaric",
                    "Continue toward Xavaric."),
                Point(MAP.FELWOOD, 0.3915, 0.2170, "Xavaric",
                    "Travel to Xavaric."),
            },
        },
        {
            id = "accept-939-flute-of-xavaric",
            kind = "accept",
            priority = 330,
            text = "Use the Flute of Xavaric to accept Flute of Xavaric.",
            complete = QuestState(939, "activeOrCompleted"),
        },
        {
            id = "objective-939-1-jadefire-felbind",
            kind = "objective",
            priority = 340,
            text = "Kill Jadefire Satry and collect 5 in Jadefire Run.",
            dependsOn = { "accept-939-flute-of-xavaric" },
            complete = QuestObjective(939, 1),
            route = {
                Point(MAP.FELWOOD, 0.4213, 0.1870, "Jadefire Hellcaller",
                    "Travel to Jadefire Hellcaller."),
            },
        },
        {
            id = "objective-4906-further-corruption",
            kind = "objective",
            priority = 350,
            text = "Kill the required Jadefire Satry in Jadefire Run.",
            dependsOn = { "accept-4906-further-corruption" },
            complete = QuestState(4906, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.4268, 0.1834, "Continue toward Further Corruption",
                    "Continue toward Further Corruption."),
                Point(MAP.FELWOOD, 0.4305, 0.1526, "Continue toward Further Corruption",
                    "Continue toward Further Corruption."),
                Point(MAP.FELWOOD, 0.4165, 0.1977, "Jadefire Hellcaller",
                    "Travel to Jadefire Hellcaller."),
            },
        },
        {
            id = "objective-4101-cleansing-felwood",
            kind = "objective",
            priority = 370,
            text = "Kill Warpwood Moss Flayer, Warpwood Shredder and collect 15 Blood Amber in Irontree Woods, (low drop rate).",
            dependsOn = { "accept-4101-cleansing-felwood" },
            complete = QuestState(4101, "complete"),
            route = {
                Point(MAP.FELWOOD, 0.5112, 0.1521, "Continue toward Cleansing Felwood",
                    "Continue toward Cleansing Felwood."),
                Point(MAP.FELWOOD, 0.5519, 0.1772, "Warpwood Moss Flayer",
                    "Travel to Warpwood Moss Flayer."),
            },
        },
        {
            id = "turnin-8462-speak-to-nafien",
            kind = "turnin",
            priority = 390,
            text = "Turn in Speak to Nafien to Nafien in Timbermaw Hold.",
            dependsOn = { "accept-8462-speak-to-nafien" },
            complete = QuestState(8462, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6477, 0.0811, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "accept-8461-deadwood-of-the-north",
            kind = "accept",
            priority = 400,
            text = "Accept Deadwood of the North from Nafien in Timbermaw Hold.",
            complete = QuestState(8461, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6477, 0.0811, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "objective-8461-deadwood-of-the-north",
            kind = "objective",
            priority = 410,
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
            priority = 420,
            text = "Turn in Deadwood of the North to Nafien in Timbermaw Hold.",
            dependsOn = { "objective-8461-deadwood-of-the-north" },
            complete = QuestState(8461, "completed"),
            route = {
                Point(MAP.FELWOOD, 0.6440, 0.1479, "Continue toward Deadwood of the North",
                    "Continue toward Deadwood of the North."),
                Point(MAP.FELWOOD, 0.6477, 0.0817, "Nafien",
                    "Travel to Nafien."),
            },
        },
        {
            id = "accept-8465-speak-to-salfa",
            kind = "accept",
            priority = 430,
            text = "Accept Speak to Salfa from Nafien in Timbermaw Hold.",
            complete = QuestState(8465, "activeOrCompleted"),
            route = {
                Point(MAP.FELWOOD, 0.6477, 0.0817, "Nafien",
                    "Travel to Nafien."),
            },
        },
    },
})
